WITH DataList AS (
SELECT CURRENTDUE, SORTNAME, PROJECTTYPE, BUDGETEDEMPLOYEE, ROLE, DATERECEIVED, STATUS AS ProjectStatus, GROUPS, DETAILBUDGETHOURS, CLTNUM, INCHARGE, PRIMARYPARTNER, Description, PREPARERPOOL, ENGDESC, SKILLLEVEL
FROM _Data_NameCleanup dnc
),

FTECTE AS(
SELECT fte.Staff, nsn.NewNameFull, FTEAmount*40 AS FTEHours, ROUND((FTEAmount*40)/55,2) AS Percent, fte.Status, FTEAmount
FROM Employee_FTE fte
JOIN _New_Staff_Names nsn
ON fte.staff = nsn.OriginalStaffName
),

EmployeeCTE AS(
SELECT ns.NewStaffName AS Name, coalesce(FTEAmount,0) AS FTEAmount, spm.STATUS AS EmployeeStatus, spm.SKILLLEVEL,/* scs.Description, */scs.Level, FTECTE.NewNameFull,
		coalesce(SUM(CASE WHEN dl.ProjectStatus = "In Prep" AND dl.ROLE = "Preparer" THEN dl.DETAILBUDGETHOURS END),0) AS Work_In_Preparation,
		coalesce(SUM(CASE WHEN dl.ProjectStatus = "In, Assigned" AND dl.ROLE = "Preparer" THEN dl.DETAILBUDGETHOURS END),0) AS Work_Assigned,
		coalesce(SUM(CASE WHEN dl.ProjectStatus IN ("Prep Complete", "In  Review") AND dl.ROLE = "Reviewer" THEN dl.DETAILBUDGETHOURS END),0) AS Review_Work,
		coalesce(SUM(CASE WHEN dl.ProjectStatus = "In, Unassigned" AND dl.ROLE = "Preparer" THEN dl.DETAILBUDGETHOURS END),0) AS Work_Unassigned,
		SUM(
		coalesce((CASE WHEN dl.ProjectStatus = "In Prep" AND dl.ROLE = "Preparer" THEN dl.DETAILBUDGETHOURS END),0)
		+ coalesce((CASE WHEN dl.ProjectStatus = "In, Assigned" AND dl.ROLE = "Preparer" THEN dl.DETAILBUDGETHOURS END),0)
		+ coalesce((CASE WHEN dl.ProjectStatus IN ("Prep Complete", "In  Review") AND dl.ROLE = "Reviewer" THEN dl.DETAILBUDGETHOURS END),0)
		+ coalesce((CASE WHEN dl.ProjectStatus = "In, Unassigned" AND dl.ROLE = "Preparer" THEN dl.DETAILBUDGETHOURS END),0)
		) AS Subtotal
FROM _Data_Staff_List_PM spm
FULL OUTER JOIN _Data_Staff_List_CS scs
ON spm.NAME = scs.Description
FULL OUTER JOIN _New_Staff_Names ns
ON spm.name = ns.OriginalStaffName
FULL OUTER JOIN DataList dl
ON ns.NewStaffName = dl.BUDGETEDEMPLOYEE
FULL OUTER JOIN FTECTE
ON Name = FTECTE.Staff
WHERE EmployeeStatus = "Active" AND spm.SKILLLEVEL IN ("Associate", "Senior")
GROUP BY Name
ORDER BY Subtotal
)

SELECT *, ROUND((AVG(coalesce(Subtotal/FTEAmount,0)) OVER())*FTEAmount - Subtotal,2)  AS CanAdd
FROM EmployeeCTE
GROUP BY Name
