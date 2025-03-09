# Tax Firm Data Analysis
Analyzing a tax firm's annual workload during busy season, and determining how to distribute that work.

_Note: Staff and client names have been changed. As such, some source files are not included, but versions with altered names are._ 

## The Problem:
Each year during tax season there are a number of tax returns (referred to as projects) to distribute among various preparers, based on skill level and availability. My role is to determine which projects should be assigned to preparers daily, until busy season ends on 4/15.

Business returns go to our senior and associate preparers (based on skill level), and simple trusts and the individual returns go to our interns. The distribution varies; some simple business returns also go to interns, and particularly complex individual returns (or individual returns related to a high-value client) will go to the associates or senriors. Business returns are due on 3/15, and individual returns are due on 4/15, and every year about 1,500 projects are "checked-in," meaning they are ready to be prepared.

Business returns refers to Partnerships, Corporations, S-Corps, LLCs, etc. Individual projects refers to individual returns, but also gift tax returns and FBARs (related to foreign bank accounts).

As mentioned briefly above, tax returns can also be bundled into groups. There could be four or ten tax returns which are all part of a single group, and therefore should all go to a single person, based on skill level and (sometimes) current workload. Particularly large groups (15-20+ returns) will be assigned to one or more hand-picked staff in advance, and therefore can be unavailable for any other work.

## Determining workloads:
