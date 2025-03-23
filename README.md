# Tax Firm Data Analysis
Analyzing a tax firm's annual workload during busy season, and determining how to distribute that work.

_Note: Staff and client names have been changed. As such, some source files are not included, but versions with altered names are._ 

## Overview:
Each year during tax season there are a number of tax returns (referred to as projects) to distribute among various preparers, based on skill level and availability. Projects need to be assigned based on the date they were 'checked-in,' based on the skill level required (intern, associate, seior), and if any projects are interrelated (in which case they should go to the same preparer), until busy season ends on 4/15.

Business returns generally go to our seniors or associates (based on skill level), and simple trusts and the individual returns generally go to our interns. Business returns are due on 3/15, and individual returns are due on 4/15, and every year about 1,500 projects are "checked-in," meaning they are ready to be prepared.

Business returns refers to Partnerships, Corporations, S-Corps, LLCs, etc. Individual projects refers to individual returns, but also gift tax returns and FBARs (related to foreign bank accounts).

As mentioned briefly above, tax returns can also be bundled into groups. There could be four or ten tax returns which are all part of a single group, and therefore should all go to a single person, based on skill level and (sometimes) current workload. Particularly large groups (15-20+ returns) will be assigned to one or more hand-picked staff in advance, and therefore can be unavailable for any other work.

### FTE Values:
All staff also have a FTE (Full-Time Employee) value. A value of 1.0 means they are Full-Time, with 40 hours of available time during most of the year and 50 hours of available time expected during busy season. An FTE value of 0.5, then, represents someone who works 20 hrs./week and will probably due 25 hrs./week during busy season.

## 4/15 Projects to Complete:
There are 873 projects remaining for the upcoming 4/15 deadline, in various stages of completion.

![image](https://github.com/user-attachments/assets/2979e1d5-222d-4306-8de1-0435f7e4b466)

The top chart is the number of projects in each stage, and the bottom chart is the number of corresponding hours in each stage.

## How work is assigned:
For interns, associates, and seniors, the majority of work is assigned to a queue when they are ready to begin. Once a project is "checked-in," it is routed to the best staff person based on their backlog, prior projects, and their FTE value. Projects are assigned in FIFO order (first in, first out), meaning that projects checked-in sooner should be prepared and completed sooner. Interns are assigned work up to certain threshold, with many projects kept in reserve to assign as needed, so that the fastest preparers will continue receiving additional work. Projects can also be reassigned to different preparers, as needed.

## Determining Intern Workloads:
Having only three interns this year serves as a bit of a bottleneck. Additionally, Lucca Leon is part time, working only 24 hrs. per week.

![Intern Workload](https://github.com/user-attachments/assets/44536791-6d8e-4c80-8ed3-78f3bc069f9b)

In the chart above, Cecilia and Luca Rush each have 41 and 40 hours assigned, respectively, and Cecilia currently has 10 hours marked as "In Prep," meaning she is actively working on that project. There is also an intern pool, containing 225 hours of unassigned work which also needs to be completed

For the interns, the goal is to keep ~50 hours assigned for an FTE of 1.0, so Cecilia and Luca Rush need ~10 hours added to their backlog. Lucca Leon has an FTE of 0.6, so their goal is 30 hours assigned instead of 50. Lucca Leon may be more performant, as they also need ~10 hours assigned to hit their goal.

## Determining Associate and Senior Workloads:
![01a_AssociateSeniors](https://github.com/user-attachments/assets/8e910e57-f4c2-4a46-b5aa-bdfb43b4dbf6)

## Conclusions:
- Interns
  - Cecilia McIntosh and Luca Rush should have roughly 10 hours of work added to their list to get to tbe 50-hour backlog goal.
  - Lucca Leon, despite being part-time, has slightly better performance. Being part-time, their goal is 30 assigned hours instead of 50, so need just over 10 hours assigned.
- 
