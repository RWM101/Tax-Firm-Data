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

The top chart is the number of projects in each stage, and the bottom chart is the number of corresponding preparer hours in each stage.

## How work is assigned:
For interns, associates, and seniors, the majority of work is assigned to a queue when they are ready to begin. Once a project is "checked-in," it is routed to the best staff person based on their backlog, prior projects, and their FTE value. Projects are assigned in FIFO order (first in, first out), meaning that projects checked-in sooner should be prepared and completed sooner. interns are assigned work up to certain threshold, with many projects kept in reserve to assign as needed, so that the fastest preparers will continue receiving additional work. Projects can also be reassigned to different preparers, as needed.

## Determining Intern Workloads:
Having only three interns this year serves as a bit of a bottleneck. Additionally, Lucca Leon is part time, working only 24 hrs. per week.

![Intern Workload](https://github.com/user-attachments/assets/44536791-6d8e-4c80-8ed3-78f3bc069f9b)

In the chart above, Cecilia and Luca Rush each have 41 and 40 hours assigned, respectively, and Cecilia currently has 10 hours marked as "In Prep," meaning she is actively working on that project. There is also an intern pool, containing 225 hours of unassigned work which also needs to be completed.

For the interns, the goal is to keep ~50 hours assigned for an FTE of 1.0, so Cecilia and Luca Rush need ~10 hours added to their backlog. Lucca Leon has an FTE of 0.6, so their goal is 30 hours assigned instead of 50. Lucca Leon may be more performant, as they also need ~10 hours assigned to hit their goal.

## Determining Associate and Senior Workloads:
Here is a list of all the associates and seniors assigned to projects, and the hours of each stage.

![image](https://github.com/user-attachments/assets/cbeac0d8-fa98-4459-8de5-9bbaa8802b9d)

The picture becomes more clear when isolating the associates (left) and seniors (right).

![image](https://github.com/user-attachments/assets/8d0364fc-ecc3-466a-a690-3f42147e5911)

These images convey a few issues:
- The associates should generally have similar hours, depending on their FTE (most of which are a full FTE of 1.0).
  - London Moran has far too much work for an associate.
  - Most of the associates are getting too low, they will likely run out of work in just a few days.
  - Joyce Gutierez has 40 hours of assigned work which should be split with Vance Hoover, who has no work after he finishes his current project(s).
- All things being equal, the seniors should be tackling the more challenging work, which means their total hours _should_ be higher if they are doing a similar number of projects. seniors with a low number of hours are likely very close to running out of work.

Looking at the associates first, London Moran looks very busy, but 130 of his hours come from just three projects which he will be working on intermittently throughout the year. That leaves 45 hrs Assigned as 'workable.' Unfortunately until these projects have their status changed (to 'On Hold' for example) they will cause this spike in hours.

For the seniors, their distribution is uneven, but there isn't a large pool of projects to assign, like the intern pool, to fill out their lists. The staff pool only has 3 projects of 18 hours available, so projects will have to be shifted among them instead.

## Weekly Performance:
![image](https://github.com/user-attachments/assets/c235041e-bbc5-4a71-bd98-4a7f1d9324ae)

Besides assigning and balancing work, it's also important to monitor the hours worked across the office. In the chart above we can see the billable hours worked for all skill levels (except for partners) week after week. Each week is represented on the X-axis, with hours on the Y-axis. We will focus on the interns, associates, and seniors below, but you can see that the hours worked is skewing towards the 50-hour/week mark as 4/15 approaches.

A point of clarification: The intern group focuses almost exclusively on 4/15 work, while the associates and seniors focus mainly on 3/15 work, and then either continue with extended 3/15 projects (which are then due 9/15) or will take on some 4/15 work as well. This means that interns will see more fluctuation in hours at the start of busy season, as less 4/15 work is available, and associates and seniors will often show a dip in hours later on, as their overtime spikes before 3/15, and then drops as the availble work is reduced.

### Intern Weekly Performance:
![image](https://github.com/user-attachments/assets/5e5977d8-12ba-415f-9d5c-4ab2ff9af2bf)

Zooming in on the interns, we can see immediately that Luca Rush and Cecilia McIntosh have had a similar amount of hours throughout their intership. Conversely, Lucca Leon near the bottom, didn't start until Week 6, and has both very reduced hours, but those hours are still fluctuating quite a bit. All three interns also start similarly, with a clear increase in hours for a couple weeks followed by a drop. This is often due to lulls in billable work, likely due to interns completing most of the available work, as well as follow-up training during the beginning of busy season.

Before it was observed That Lucca Leon was performing better than the full-time interns. That won't really be an asset until their worked hours stabilize, hopefully before the end of busy season.

### Associate Weekly Performance:
![image](https://github.com/user-attachments/assets/72804744-5597-42cc-95b9-906903446881)

The associates show a clear increase in hours as the weeks progress. The significant dips are due to a new element, which is that the lion's share of billable work comes from a single client in January, and takes all of January and some of February to complete. The dips are from this work being completed, and then taking on the (relatively quiet) remaining 3/15 and 4/15 work.

The graph also shows that there were several new additions to the associate pool during busy season. London Moran started on Week 5, Owen Newman started on Week 6, and Isaac Ward started on Week 13, in the bottom corner. Except for Isaac, the other two associates have been uitilized quickly and their hours look relatively stable.

Something worth mentioning is that the associates hit their stride more quickly than the interns, and are also working more hours than the interns.

### Senior Weekly Performance:
![image](https://github.com/user-attachments/assets/adb9be7a-62da-4d8b-bd2e-026257bcf0bc)

The senior hours show a different story than the interns and associates. These are the most experienced preparers, and almost immediately they hit their overtime goals, and have ample work to keep them busy. Much of the work that comes in in January is complex enough to be exclusive to seniors, and this is also the stage where preparers will begin reviewing the work of the interns and associates. When the interns and associates run out of work, the seniors are busy reviewing that work.

A couple items of note: Guadalupe, at the bottom, is part time, but their hours are trending upwards week after week. For seniors especially there can be a lot of pressure for part-time staff to work more than they should, with so much work available. Guadalupe's assignments will have to be monitored so they don't feel undue pressure to work beyond their means. Addiitonally, though hard to see, Amari Schwartz (the light lavender color) started in Week 4 right in the middle of the pack, and has stayed with the full-time staff the entire time. Their assignments should also be monitored, despite their clear experience, as they will still be learning the ropes during one of the busiest times of the year.

## Distributed Workloads for the Year:

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
