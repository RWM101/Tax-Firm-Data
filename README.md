# Tax Firm Data Analysis

## Business Problem:
This project is based on work at a tax firm in busy season (mention something about 3/15 and 4/15). At this particular tax firm, there was no efficient way to determine who should be assigned more tax work. The traditional process had been to review each tax preparer's workloads manually, and to reach out to staff individually in case of unknown bottlenecks or roadblocks. Gathering enough info to assign tax projects effectively could take anywhere between 15 minutes and 2 hours, which is not tenable with the amount of tax projects to assign during busy season.

The data below is roughly ten days before the 4/15 deadline, and there are currently 873 tax projects which need to be prepared, totaling roughly 4,600 hours of work to assign to 15 preparers.

## Project Goal:
The goal of this project is to create a dashboard that enables the PM to assign work efficiently before the deadline.

The visualizations below are part of a near-realtime dashboard which highlights the "best" employees for additional work. The "best" employee can depend on their skill level, current workload, available hours (full-time vs. part-time) and if they have already done any work this year that relates to the tax project or client in question.

## Constraints:
- As a tax firm, almost all tax projects have to go through the PM, who determines the best employee(s) to prepare each project, based on the criteria above (skill level, current workload, and their available hours).
- The 'checked-in' date is a project constraint which determines the projects to assign first. Projects which have an older checked-in date have been waiting the longest, and need to be assigned first.
- Some projects need to be prepared by the same employee, either because the projects belong to the same client, or are part of the same group (a subset of related clients).

The data below was taken about ten days before the busy season deadline (4/15).

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
There are 873 projects remaining for the upcoming 4/15 deadline, in various stages of completion:

![image](https://github.com/user-attachments/assets/dca93481-0bdd-45c9-ba3a-ed6efee5d9fd)


The top chart is the number of projects in each stage, and the bottom chart is the number of corresponding preparer hours in each stage.

## Determining Intern Workloads:
Having only three interns this year serves as a bit of a bottleneck. Additionally, Lucca Leon is part time, working only 24 hrs. per week.

![image](https://github.com/user-attachments/assets/7795b388-f2d9-4351-80f4-2f1525ab23cc)

In the chart above, to the left, Cecelia and Luca Rush both have roughly 40 hours of work assigned, and Lucca Leon has 19 hours. The blue sections represent hours currently being worked on, and the orange hours represent projects which have been assigned to Cecelia but not yet started.

The right image shows 225 hours ready to be assigned to an intern. This number comes from all projects ready to be assigned to an intern. Each intern project has a budget between 2 and 6 hours, so the 225 hours could represent between a couple dozen projects or just over 100 projects.

The goal is to keep full-time interns at near 50 assigned hours. Lucca Leon should be at around 25 hours. Since they will run out of work once they finish their current items, the priority would be to prioritize both Lucca Rush and Lucca Leon when assigning projects. Once they get to 50 and 25 assigned hours, respectively, projects should then be assigned to Cecelia.

## Determining Associate and Senior Workloads:
Here is a list of all the associates and seniors assigned to projects, and the hours of each stage.

![image](https://github.com/user-attachments/assets/76431f78-b39b-4b4a-9557-dc5baba896ae)

The images below isolate the associates (left) and seniors (right).

![image](https://github.com/user-attachments/assets/31edfd92-9661-431d-9ed0-2a9010c25a8b)

These images convey a few issues:
- The associates should generally have similar hours, depending on their FTE (most of which are a full FTE of 1.0).
  - London Moran has far too much work for an associate.
  - Most of the associates are getting too low, they will likely run out of work in just a few days.
  - Joyce Gutierez has 40 hours of assigned work which should be split with Vance Hoover, who has no work after he finishes his current project(s).
- All things being equal, the seniors should be tackling the more challenging work, which means their total hours _should_ be higher if they are doing a similar number of projects. seniors with a low number of hours are likely very close to running out of work.

Looking at the associates first, London Moran looks very busy, but 130 of his hours come from just three projects which he will be working on intermittently throughout the year. That leaves 45 hrs Assigned as 'workable.' Unfortunately until these projects have their status changed (to 'On Hold' for example) they will cause this spike in hours.

For the seniors, their distribution is uneven, but there isn't a large pool of projects to assign, like the intern pool, to fill out their lists. The staff pool only has 3 projects of 18 hours available, so projects will have to be shifted among them instead.

## Weekly Performance:

Besides assigning and balancing work, it's also important to monitor the hours worked across the office. In the chart above we can see the billable hours worked for all skill levels (except for partners) week after week. Each week is represented on the X-axis, with hours on the Y-axis. We will focus on the interns, associates, and seniors below, but you can see that the hours worked is skewing towards the 50-hour/week mark as 4/15 approaches.

A point of clarification: The intern group focuses almost exclusively on 4/15 work, while the associates and seniors focus mainly on 3/15 work, and then either continue with extended 3/15 projects (which are then due 9/15) or will take on some 4/15 work as well. This means that interns will see more fluctuation in hours at the start of busy season, as less 4/15 work is available, and associates and seniors will often show a dip in hours later on, as their overtime spikes before 3/15, and then drops as the availble work is reduced.

### Intern Weekly Performance:
![image](https://github.com/user-attachments/assets/cf0e3ed3-0893-4bb1-a042-43a9e13a7056)

Zooming in on the interns, we can see immediately that Luca Rush and Cecilia McIntosh have had a similar amount of hours throughout their intership. Conversely, Lucca Leon near the bottom, didn't start until Week 6, and has both very reduced hours, but those hours are still fluctuating quite a bit. All three interns also start similarly, with a clear increase in hours for a couple weeks followed by a drop. This is often due to lulls in billable work, likely due to interns completing most of the available work, as well as follow-up training during the beginning of busy season.

Before it was observed That Lucca Leon was performing better than the full-time interns. That won't really be an asset until their worked hours stabilize, hopefully before the end of busy season.

### Associate Weekly Performance:
![image](https://github.com/user-attachments/assets/9d2b1504-1d63-45fb-b1a3-710acc152968)

The associates show a clear increase in hours as the weeks progress. The significant dips are due to a new element, which is that the lion's share of billable work comes from a single client in January, and takes all of January and some of February to complete. The dips are from this work being completed, and then taking on the (relatively quiet) remaining 3/15 and 4/15 work.

The graph also shows that there were several new additions to the associate pool during busy season. London Moran started on Week 5, Owen Newman started on Week 6, and Isaac Ward started on Week 13, in the bottom corner. Except for Isaac, the other two associates have been uitilized quickly and their hours look relatively stable.

Something worth mentioning is that the associates hit their stride more quickly than the interns, and are also working more hours than the interns.

### Senior Weekly Performance:
![image](https://github.com/user-attachments/assets/dbbfe800-79e1-4919-ad3f-91694204fdc6)

The senior hours show a different story than the interns and associates. These are the most experienced preparers, and almost immediately they hit their overtime goals, and have ample work to keep them busy. Much of the work that comes in in January is complex enough to be exclusive to seniors, and this is also the stage where preparers will begin reviewing the work of the interns and associates. When the interns and associates run out of work, the seniors are busy reviewing that work.

A couple items of note: Guadalupe, at the bottom, is part time, but their hours are trending upwards week after week. For seniors especially there can be a lot of pressure for part-time staff to work more than they should, with so much work available. Guadalupe's assignments will have to be monitored so they don't feel undue pressure to work beyond their means. Addiitonally, though hard to see, Amari Schwartz (the light lavender color) started in Week 4 right in the middle of the pack, and has stayed with the full-time staff the entire time. Their assignments should also be monitored, despite their clear experience, as they will still be learning the ropes during one of the busiest times of the year.

## Data Model:
The data model is a simple one ... (One status is for employees, the other is the status of each project).

![Data Analyst GitHub Page - Data Model](https://github.com/user-attachments/assets/9d9cb104-6582-4fa5-8b6f-cf8d995ffa48)

## Conclusions:
- Interns: 
  - Cecilia McIntosh and Luca Rush should have roughly 10 hours of work added to their list to get to tbe 50-hour backlog goal.
  - Lucca Leon, despite being part-time, has slightly better performance. Being part-time, their goal is 30 assigned hours instead of 50, so need just over 10 hours assigned. Looking at their weekly performance, though, they are not yet hitting a consistent number of hours worked. Their hours/schedule will need to be monitored to maximize their performance.
- Associates:
  - London Moran appears to have far too much work for an associate, but most of those hours are from three projects that he will revise throughout the year. The data can be misleading.
  - Joyce Gutierez should have her Assigned work split in half and shared with Vance Hoover.
  - New hires London Moran and Owen Newman should be monitored so they aren't overwhelmed in their first few weeks. The other new hire, Isaac Ward, is coming on right when work _should_ be reducing, and also when the partners and reviewers are most stressed. They should be given enough to keep them busy, but also favor work from partners who are more patient, understanding, or have already completed more of their client's work.
- Seniors:
  - They appear low, but rebalancing will have to come from shifting projects among them, as there are fewer uncalimed projects (unlike the intern pool).
  - Amari Schwartz is a new hire, and has immediately equalled their peers in terms of hours worked. It's important to remember they will still be learning the ropes of a new work environment, despite their obvious experience. Also, it would be worth monitoring how quickly they are completing their work (is a 10 hour project taking them 10 hours to do, or are they billing for 15?) so they aren't floundering while appearing to be as busy as their fellow seniors.
