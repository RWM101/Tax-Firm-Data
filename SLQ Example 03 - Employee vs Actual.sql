SELECT nsn.NewStaffName AS StaffName, fte.SkillLevel, fte.Status, fte.FTEAmount, 50*fte.FTEAmount AS 'FTE @ 55 Hrs.', 
	COALESCE(Week_1,0) AS Week_1,
	COALESCE(Week_2,0) AS Week_2,
	COALESCE(Week_3,0) AS Week_3,
	COALESCE(Week_4,0) AS Week_4,
	COALESCE(Week_5,0) AS Week_5,
	COALESCE(Week_6,0) AS Week_6,
	COALESCE(Week_7,0) AS Week_7,
	COALESCE(Week_8,0) AS Week_8,
	COALESCE(Week_9,0) AS Week_9,
	COALESCE(Week_10,0) AS Week_10,
	COALESCE(Week_11,0) AS Week_11,
	COALESCE(Week_12,0) AS Week_12,
	COALESCE(Week_13,0) AS Week_13,
	COALESCE(Week_14,0) AS Week_14,
	COALESCE(Week_15,0) AS Week_15,
	ROUND(AVG((coalesce(Week_1,0) + coalesce(Week_2,0) + coalesce(Week_3,0) + coalesce(Week_4,0) + coalesce(Week_5,0) + coalesce(Week_6,0) + coalesce(Week_7,0) + coalesce(Week_8,0) + coalesce(Week_9,0) + coalesce(Week_10,0) + coalesce(Week_11,0) + coalesce(Week_12,0) + coalesce(Week_13,0))/13) OVER(PARTITION BY NewStaffName RANGE CURRENT ROW),2) AS Average,
	ROUND(((ROUND(AVG((coalesce(Week_1,0) + coalesce(Week_2,0) + coalesce(Week_3,0) + coalesce(Week_4,0) + coalesce(Week_5,0) + coalesce(Week_6,0) + coalesce(Week_7,0) + coalesce(Week_8,0) + coalesce(Week_9,0) + coalesce(Week_10,0) + coalesce(Week_11,0) + coalesce(Week_12,0) + coalesce(Week_13,0))/13) OVER(PARTITION BY NewStaffName RANGE CURRENT ROW),2))/(50*fte.FTEAmount))*100,0) AS Percentage
FROM Employee_FTE_Full fte
JOIN _New_Staff_Names nsn
ON fte.staff = nsn.OriginalStaffName
WHERE Status = "Active"