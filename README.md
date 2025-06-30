# Tax Firm Data Analysis

## Project Goal:
The goal of this project is to design a dashboard that enables the PM to assign work so it is completed efficiently before the 4/15 deadline at a tax firm. The most efficient employee is determined by examining their current workload, their available hours (full-time vs. part-time), and if they have already worked on projects of the same group (groups are a collection of clients whose work is related either directly or indirectly).

The goal was to design an optimization dashboard to support near real-time tax project assignments based on staff availability, skill level, workload, and their work on related projects, 

## Overview and Constraints:
This project is based on work at a tax firm in busy season (February to mid-April). At this particular tax firm, there was no efficient way to determine who should be assigned more tax work. The traditional process had been to review each tax preparer's workloads manually, and to reach out to staff individually in case of unknown bottlenecks or roadblocks. Gathering enough info to assign tax projects effectively could take anywhere between 15 minutes and 2 hours, which is not tenable with the amount of tax projects to assign during busy season.

The data below is roughly ten days before the 4/15 deadline, and there are currently 873 tax projects which need to be prepared, totaling roughly 4,600 hours of work to assign to 15 preparers.

The visualizations below are part of a near-realtime dashboard which highlights the "best" employees for additional work. The "best" employee can depend on their skill level, current workload, available hours (full-time vs. part-time) and if they have already done any work this year that relates to the tax project or client in question.

### Constraints:
- Almost all tax projects have to go through the PM, who determines the "best" employee(s) to prepare each project, based on the criteria above (skill level, current workload, available hours, and work on related projects).
- The 'checked-in' date is a project constraint which determines the projects to assign first. Projects which have an older checked-in date have been waiting the longest, and need to be assigned first. (e.g. projects with a January check-in date need to be assigned before any with February or March check-in dates.)
- Some projects need to be prepared by the same employee, either because the projects belong to the same client, or are part of the same group (a subset of related clients).

The data below was taken about ten days before the busy season deadline (4/15).

## Data Model:
The data model is a simple one ... (One status is for employees, the other is the status of each project).

![Data Analyst GitHub Page - Data Model](https://github.com/user-attachments/assets/6ff058b2-2fe7-43ad-83a2-280a0c52fc5c)

## Metrics Used:
The various reports/dashboards are:
- [4/15 Projects to Complete](#415-projects-to-complete)
- [Determining Intern Workloads](#determining-intern-workloads)
- [Determining Associate and Senior Workloads](#determining-associate-and-senior-workloads)
- [Weekly Performance](#weekly-performance)
  - [Intern Weekly Performance](#intern-weekly-performance)
  - [Associate Weekly Performance](#associate-weekly-performance)
  - [Senior Weekly Performance](#senior-weekly-performance)

## 4/15 Projects to Complete:
There are 873 projects remaining for the upcoming 4/15 deadline, in various stages of completion. Below are the number of projects in each step of their life cycle:

![image](https://github.com/user-attachments/assets/dca93481-0bdd-45c9-ba3a-ed6efee5d9fd)


The top chart is the number of projects in each stage, and the bottom chart is the number of corresponding preparer hours in each stage.  You can see we have many projects still in the "Waiting for Info" step, meaning we are still waiting for enough info from the client to begin. These will most likely be extended.

## Determining Intern Workloads:
Having only three interns this year serves as a bit of a bottleneck. Additionally, Lucca Leon is part time, working only 24 hrs. per week.

![image](https://github.com/user-attachments/assets/7795b388-f2d9-4351-80f4-2f1525ab23cc)

In the chart above, to the left, Cecelia and Luca Rush both have roughly 40 hours of work assigned, and Lucca Leon has 19 hours. The blue sections represent hours currently being worked on, and the orange hours represent upcoming work that has yet to be started.

The right image shows 225 hours ready to be assigned to an intern. This number comes from all projects ready to be assigned to an intern. Each intern project has a budget between 2 and 6 hours, so the 225 hours could represent between a couple dozen projects or just over 100 projects.

The goal is to keep full-time interns at near 50 assigned hours. Lucca Leon should be at around 25 hours. Since they will run out of work once they finish their current items, the priority would be to prioritize both Lucca Rush and Lucca Leon when assigning projects. Once they get to 50 and 25 assigned hours, respectively, projects should then be assigned to Cecelia.

## Determining Associate and Senior Workloads:
Here is a list of all the associates and seniors assigned to projects, and the hours of each stage.

![image](https://github.com/user-attachments/assets/76431f78-b39b-4b4a-9557-dc5baba896ae)

The images below isolate the associates (left) and seniors (right).

![image](https://github.com/user-attachments/assets/31edfd92-9661-431d-9ed0-2a9010c25a8b)

For the associates, the most immediate observation is that Owen Newman and Bishop Ingram both need more work assigned to their plate, while London Moran appears far too impacted. However, London has three large projects (each with a budget of 40-50 hours) that they will only work on intermittently, so they appear far busier than they are. They will likely also need work. Vance Hoover and Joyce Gutierrez have a decent amount of work right now.

For the seniors, they would normally have workloads significantly higher than the associates, but their large deadline was on 3/15, so their workloads will be more equivalent to the associates. Shelby is the one most in need of work, and the majority of the others are in good shape. Diego also has a significant amount of review work. Overall the seniors are in good shape.

## Weekly Performance:

Besides assigning and balancing work, it's also important to monitor the hours worked across the office. These changes over time were particularly difficult to picture with the built-in reporting, so these visualizations were particularly helpful.

### Intern Weekly Performance:
![image](https://github.com/user-attachments/assets/cf0e3ed3-0893-4bb1-a042-43a9e13a7056)

Zooming in on the interns, we can see immediately that Luca Rush and Cecilia McIntosh have had a similar amount of hours throughout their intership. Their weeks have been similar, showing a dip in hours at first, and then gradually more time working as their workloads increased. It has taken them a little while to hit regular overtime hours.

Lucca Leon, the part-time intern near the bottom, started on Week 6, and has also had variable hours. Her hours, however, have hovered closer to her maximum  availability from the beginning. Compared to the other two, she hit the ground running.

Before it was observed That Lucca Leon was performing better than the full-time interns. That won't really be an asset until their worked hours stabilize, hopefully before the end of busy season.

### Associate Weekly Performance:
![image](https://github.com/user-attachments/assets/9d2b1504-1d63-45fb-b1a3-710acc152968)

The associates show a clear increase in hours as the weeks progress. They had some dips in late January as they completed work for our largest single client, but overall they all were quicker than the interns in reaching consistent overtime levels.

London and Owen are the part-time staff, and they have been very active in getting up to speed. London's list is deceptively large, as he has three projects, each worth 40-50 hours of work, that he will only be touching intermittently.

### Senior Weekly Performance:
![image](https://github.com/user-attachments/assets/dbbfe800-79e1-4919-ad3f-91694204fdc6)

Being the most experienced, the seniors were granted the lion's share of the work, and  hit their overtime hours almost immediately. Since they also will be doing regular review work at this stage, they didn't hit the January slump that the Associates had; they are instead reviewing all the work that the Associates prepared.

Guadalupe, a part-time senior, has also hit their overtime levels almost immediately, and seems to be trending upwards in recent weeks. There is implicit pressure for part-time staff to do more hours than agreed during busy season, so Guadalupe's hours will need to be monitored closely

## Recommendations:
- With almost 400 projects in the Waiting For Info stage, meaning there isn't sufficient info from the client to begin, almost 
- Among the interns, the balance of work is good but they all need more total assigned hours. There are 226 available hours to assign, and that should be split between the interns, associates, and seniors.
- The associates will still be wrapping up some extended 3/15 work, but they have a lot of bandwidth for more work. London's list is deceptively big, so he may be available for work, and Vance in particular needs many more hours assigned. The associates will also be extending most of the unstarted 4/15 projects.
- Most seniors will be preparing or reviewing extended 3/15 projects, but they will also be fastest at extending the outstanding 4/15 projects.
