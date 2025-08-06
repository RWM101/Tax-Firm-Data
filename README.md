# Tax Firm Data Analysis

## Project Goal
The goal of this project is to create a dashboard for the Project Manager at a tax firm to assign work efficiently so it is completed before the 4/15 deadline. The dashboard needs to show which employees should be assigned additional work, determined by looking at key metrics like employee workloads, available hours (full-time vs.   part-time), and if they have already worked on projects of the same group (groups are a collection of clients whose work is related either directly or indirectly).

## Overview and Constraints
This project is based on work at a tax firm in busy season (February to mid-April). At this particular tax firm, there was no efficient way to determine who should be assigned more tax work. The traditional process had been to review each tax preparer's workloads manually, and to reach out to staff individually in case of unknown bottlenecks or roadblocks. Gathering enough info to assign tax projects effectively could take anywhere between 15 minutes and 2 hours, which is not tenable with the amount of tax projects to assign during busy season.

The data below is roughly ten days before the 4/15 deadline, and there are currently 873 tax projects which need to be prepared, totaling roughly 4,600 hours of work to assign to 15 preparers.

The visualizations below are part of a near-real-time dashboard which highlights the "best" employees for additional work. The "best" employee can depend on their skill level, current workload, available hours (full-time vs. part-time) and if they have already done any work this year that relates to the tax project or client in question.

### Constraints
- Almost all tax projects have to go through the PM, who determines the "best" employee(s) to prepare each project, based on the criteria above (skill level, current workload, available hours, and work on related projects).
- The 'checked-in' date is a project constraint which determines the projects to assign first. Projects which have an older checked-in date have been waiting the longest, and need to be assigned first. (e.g. projects with a January check-in date need to be assigned before any with February or March check-in dates.)
- Some projects need to be prepared by the same employee, either because the projects belong to the same client, or are part of the same group (a subset of related clients).

The data below was taken about ten days before the busy season deadline (4/15).

## Data Model
The data model below comes from the various tax software used within the office.

- **Employees** - A unique list of all employees
- **Projects** - All details about the tax work (referred to as projects) within the firm, and for all clients. Includes the client name, client number, and if the client is in a group. Also contains project details like the due date, the type of project, the roles within each project (a preparer and one or more reviewers), the hours assigned to each role, the project status, and when the project was "checked-in" and ready to be assigned (the date_received).

![Data Analyst GitHub Page - Data Model](https://github.com/user-attachments/assets/7a71c310-0fb3-4843-b785-580b1d484c67)

## Key Metrics
The following metrics were used to identify the performance of each employee, and how many work hours should be added (or removed) from their list.

- **Project Status** - The number of projects in various stages of their lifecycle, such as Unassigned, Assigned, In Preparation, Waiting for Info, and Completed.
- **FTEAmount** - Full-Time Employee. from 0-1, represents if the employee is full-time or part-time.
- **Work_In_Preparation** - A sum of all the project hours assigned to each employee where their role is preparer and the status is set to "In Prep."
- **Work_Assigned** - A sum of all the project hours assigned to each employee where their role is preparer and the status is set to "In, Assigned."
- **Review_Work** - A sum of all the project hours assigned to each employee where their role is preparer and the status is set to either "Prep Complete" or "In Review."
- **Work_Unassigned** - A sum of all the project hours where the role is preparer and the status is set to "In, Unassigned." This represents the work that is ready to be assigned, and oftern shows up assigned to "Intern," which holds all the projects that can go to any of our interns.
- **Subtotal** - A sum of all work hours above, except for work_unassigned, to get the total hours assigned to everyone
- **CanAdd** - Subtotal / FTE. Normalizes full-time and part-time staff to see how many hours of work they can get through based on their availability. This reduces everyone's workload to a number adjusted to their work availability (part-time vs. full-time) and is most useful in showing the most available employee in ambiguous situations (e.g. multiple part-time employees with slightly different hours, and a similar number of hours assigned).

## Key Insights
The various reports/dashboards are:
- [4/15 Projects to Complete](#415-projects-to-complete)
- [Determining Intern Workloads](#determining-intern-workloads)
- [Determining Associate and Senior Workloads](#determining-associate-and-senior-workloads)
- [Weekly Performance](#weekly-performance)
  - [Intern Weekly Performance](#intern-weekly-performance-top-left)
  - [Associate Weekly Performance](#associate-weekly-performance-top-right)
  - [Senior Weekly Performance](#senior-weekly-performance-bottom-center)

## 4/15 Projects to Complete
There are 873 projects remaining for the upcoming 4/15 deadline, in various stages of completion. Below are the number of projects in each step of their life cycle:

![image](https://github.com/user-attachments/assets/dca93481-0bdd-45c9-ba3a-ed6efee5d9fd)


- There is not enough time to complete 873 open projects, representing 4,600 hours of work.
- With the two bottlenecks being the number of Waiting for Info projects, which can't be prepared, and Prep Complete projects, which need to be reviewed, partners should have preparers begin preparing extensions for the Waiting for Info projects in between their normal tax work, and reviewers should pivot to review work, and even preparing some tax returns as well.
- 
## Determining Intern Workloads
Having only three interns this year serves as a bit of a bottleneck. Additionally, Lucca Leon is part time, working only 24 hrs. per week.

![image](https://github.com/user-attachments/assets/7795b388-f2d9-4351-80f4-2f1525ab23cc)

- Lucca Leon has higher utilization than most on an hour-to-hour basis, but all interns need more work assigned.
- Almost all the Unassigned projects in the firm are at the intern level, and more experienced staff shoulbe brought in to take some pressure off.

## Determining Associate and Senior Workloads
Here is a list of all the associates and seniors assigned to projects, and the hours of each stage.

![image](https://github.com/user-attachments/assets/76431f78-b39b-4b4a-9557-dc5baba896ae)

The images below isolate the associates (left) and seniors (right).

![image](https://github.com/user-attachments/assets/31edfd92-9661-431d-9ed0-2a9010c25a8b)

- London Moran's looks deceptively impacted; almost all of those hours are from three huge proejcts that will be touched intermittenly throughout the year. Having said that, all of the associates except for Joyce Gutierrez need additional work. Their time should be split between preparing intern projects and preparing extensions for those projects.
- The Senior lists are also deceptive, as they are working almost entirely on projects out of scope for the current deadline, like complex 3/15 work that has been extended to 9/15. They should be working predominately on extensions, as they can get through them faster than any of the associates and interns.

## Weekly Performance

Besides assigning and balancing work, it's also important to monitor the hours worked across the office. These changes over time were particularly difficult to picture with the built-in reporting, so these visualizations were particularly helpful.

![image](https://github.com/user-attachments/assets/10aa0ee5-82d6-4a25-8222-adb34508c4a7)

### Intern Weekly Performance, Top Left
- Despite an initial lull, Cecilia McIntosh and Luca Rush have steadily increased their hours to meet the demand.
- Lucca Leon is part-time and started a little later than the others. Though they shows higher productivity than the other interns, we won't see full utilization until their hours stabilize.

### Associate Weekly Performance, Top Right
- The associates have more volatile workloads, with a lull right after a large January project.
- Desptie this, the associates reach their expected utilization quickly, and stay relatively busy.
- Isaac Ward, in the bottom right corner, is a brand new hire. His productivity will be revealed in subsequent reports.

### Senior Weekly Performance, Bottom Center
- Being more experienced, the seniors almost immediately hit their desired hours, showing full utilization.
- Guadalupe, a part-timer, also hit full utilization almost immediately.
- The fact they are doing both preparation and review work has eliminated the early lull that the associates experienced.

## Recommendations
- Prioritize extensions to get through the 873 projects and 4,600 hours of work over the next ten days.
- Direct the associates to prioritize preparing intern projects and preparing inter project extensions.
- Direct the associates to focus on extensions. They can get through the work quickly and most open projects need to be extended. 
- Prioritize assigning work to Lucca Leon and Lucca Rush until they hit target hours (25 and 50 hrs, respectively).
- Reallocate projects from London Moran once large projects are in progress to prevent hidden bottlenecks.

## Next Steps
Right now much of the Project Manager's role involves a lot of triage when assigning projects, and there are ways to find potential bottlenecks before they surface. When projects are completed and rolled over to the next year all the assigned preparers carry over, so the next step would be to do forecasting, showing the number of projects and project hours assigned to all staff at the start of each year. This would highlight the favored preparers who have too many hours assigned to them for the year, as well as the preparers who are being ignored, and likely will be looking for work year-long.

Additionally, the firm has switched to new tracking software, which includes additional metrics for how long projects have remained in each status. This would be useful to find where projects are stalling throughout their life-cycle, and to highlight which projects have been stalled the longest. Not only could we see who is responsible for each stalled project, but partners could also see which clients are being underserved by inaction.
