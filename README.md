# Tax Firm Data Analysis

## Project Goal
This project analyzes 873 open tax projects representing 4,600 hours of preparer work to optimize task assignment at a mid-sized tax firm. Power BI dashboards were developed to help the Project Manager assign more work efficiently based on employee skill, availability, and project history.

This project streamlined the reporting process, removing all manual data entry. Reduced reporting time from 2 hrs/week to 30 seconds. This allows for running the report repeatedly throughout the day for near-real-time information.

## Overview and Constraints

### Overview
- Previously there was no efficient way to determine who was low on work. Employees would seek out more projects on their own from the firm partners.
- This process could result in 30-120 min in lost productivity.
- The data is from roughly 10 days before the 4/15 deadline. There are 873 open tax projects, totaling ~4,600 hours to prepare.

### Constraints
- Almost all tax projects have to go through the PM, who determines the "best" employee(s) to prepare each project, based on the criteria above (skill level, current workload, available hours, and work on related projects).
- The 'checked-in' date is a project constraint which determines the projects to assign first. Projects which have an older checked-in date have been waiting the longest, and need to be assigned first. (e.g. projects with a January check-in date need to be assigned before any with February or March check-in dates.)
- Some projects need to be prepared by the same employee, either because the projects belong to the same client, or are part of the same group (a subset of related clients).

The data below was taken about ten days before the busy season deadline (4/15).

## Data Model
The data model below comes from the various tax software used within the office.

- **Employees** - A unique list of all employees
- **Projects** - All details about the client tax work (referred to as projects) within the firm, including the client name, client number, and whether the client is in a group. Also contains project details like the due date, the type of project, the roles within each project (a preparer and one or more reviewers), the hours assigned to each role, the project status, and when the project was "checked-in" and ready to be assigned (the date_received).

![Data Analyst GitHub Page - Data Model](https://github.com/user-attachments/assets/7a71c310-0fb3-4843-b785-580b1d484c67)

## Key Metrics
The following metrics identify the performance of each employee, and how many work hours should be added (or removed) from their list.

- **Current Workload Metrics**
  - **Project Status** - The number of projects in various stages of their life cycle, such as Unassigned, Assigned, In Preparation, Waiting for Info, and Completed.
  - **Work_In_Preparation** - A sum of all the project hours assigned to each employee where their role is preparer and the status is "In Prep."
  - **Work_Assigned** - A sum of all the project hours assigned to each employee where their role is preparer and the status is set to "In, Assigned."
  - **Review_Work** - A sum of all the project hours assigned to each employee where their role is preparer and the status is either "Prep Complete" or "In Review."
  - **Subtotal** - A sum of all work hours above, except for work_unassigned, to get the total hours assigned to everyone.
- **Backlog/Unassigned Metrics**
  - **Work_Unassigned** - A sum of all work hours above, except for work_unassigned, to get the total hours assigned to everyone.
- **Capacity Normalization**
  - **FTEAmount** - Full-Time Employee. from 0-1, represents if the employee is full-time or part-time.
  - **CanAdd** - The Subtotal / FTE. Equalizes the assigned hours by many hours staffmembers work. This simplifies who should get more work in ambiguous situations.

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
873 projects are remaining for the upcoming 4/15 deadline, in various stages of completion. Below are the number of projects in each step of their life cycle:

![image](https://github.com/user-attachments/assets/dca93481-0bdd-45c9-ba3a-ed6efee5d9fd)

- There is not enough time to complete 873 open projects, representing 4,600 hours of work.
- Waiting for Info and Prep Complete projects are the two bottlenecks. Partners should have preparers extend the Waiting for Info projects, and have the reviewers review the Prep Complete projects and prepare some Assigned projects.

## Determining Intern Workloads
Having only three interns this year creates a bottleneck. Additionally, Lucca Leon is part-time, working only 24 hrs. per week.

![image](https://github.com/user-attachments/assets/7795b388-f2d9-4351-80f4-2f1525ab23cc)

- Identifies 225 hrs. of work still unassigned, waiting for interns to clear their current backlog.
- Lucca Leon has higher utilization than most on an hour-to-hour basis, but all interns need more work assigned.
- Almost all the Unassigned projects in the firm are at the intern level, and more experienced staff (seniors and above) should be used to take some pressure off.

## Determining Associate and Senior Workloads
Here is a list of all the associates and seniors assigned to projects, along with the hours for each stage.

![image](https://github.com/user-attachments/assets/76431f78-b39b-4b4a-9557-dc5baba896ae)

The images below isolate the associates (left) and seniors (right).

![image](https://github.com/user-attachments/assets/31edfd92-9661-431d-9ed0-2a9010c25a8b)

- 150 hours of London Moran's list are deceptive; those hours are from three projects that will be completed throughout the year (beyond the current deadline).
- All of the associates except for Joyce Gutierrez need additional work. Their time should be split between preparing intern projects and preparing extensions.
- The Senior lists can be misleading since they primarily focus on projects that are beyond the current deadline, like complex 3/15 work that was extended to 9/15. They should be working predominantly on extensions, as they can complete them more quickly than any of the associates and interns.

## Weekly Performance

In addition to assigning and balancing tasks, monitoring office hours is necessary. These changes over time were difficult to see with the built-in reporting, so these visualizations were particularly helpful.

![image](https://github.com/user-attachments/assets/10aa0ee5-82d6-4a25-8222-adb34508c4a7)

### Intern Weekly Performance, Top Left
- Despite an initial lull, Cecilia McIntosh and Luca Rush have steadily increased their hours to meet the demand.
- Lucca Leon is part-time and started a little later than the others. Though they show higher productivity than the other interns, we won't see full utilization until their hours stabilize.

### Associate Weekly Performance, Top Right
- The associates have more volatile workloads, with a lull right after a large January project.
- Despite this, the associates reach their expected utilization quickly and stay relatively busy.
- Isaac Ward, in the bottom right corner, is a brand new hire. Subsequent reports will show how productive he is.

### Senior Weekly Performance, Bottom Center
- Being more experienced, the seniors almost immediately hit their desired hours, showing full utilization.
- Part-time employee Guadalupe also hit full utilization almost immediately.
- The fact that they are doing both preparation and review work has eliminated the early lull that the associates experienced.

## Recommendations
- Prioritize extensions to get through the 873 projects and 4,600 hours of work over the next ten days.
- Direct the associates to prioritize preparing both intern projects and intern project extensions.
- Direct the associates to focus on extensions. They can get through projects quickly, and most of the work needs to be extended.
- Prioritize assigning work to Lucca Leon and Lucca Rush until they reach their target hours (25 and 50 hours, respectively).
- Reallocate projects from London Moran once large projects are in progress to prevent hidden bottlenecks.

## Recommended Next Steps

### Forecast Dashboard
- Build a forecast dashboard to see staff assigned to upcoming work.
- Determine who is over- and under-utilized so the PM can make recommendations to their stakeholders for the rest of the year.

### Stalled Projects list
- The firm has switched to new software, allowing for more detailed reporting.
- It is now possible to see where projects are stalling and losing momentum.
- Create a list to highlight which projects, by partner, have sat idle the longest so the PM can keep those projects moving.
- Append the data to current dashboards so the PM doesn't have to hunt down this information.
