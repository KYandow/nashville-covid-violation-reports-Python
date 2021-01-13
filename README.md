### COVID-19 Spread in Nashville
In this project, a team of three analysts examined several available data sources on COVID-19 spread in the Metropolitan Nashville area from March through November, 2020.

#### Data Utilized

 - [hubNashville 311 Service Requests](https://data.nashville.gov/Public-Services/hubNashville-311-Service-Requests/7qhx-rexh): Reported violations of COVID-related rules and regulations are contained in this dataset where `Request Type` is **COVID-19** and `Subrequest Type` is **COVID-19 Violations**

  - `clusters.csv` was scraped from the [wsmv website](https://www.wsmv.com/news/metro-health-releases-latest-covid-19-clusters/article_ef554e08-1558-11eb-b290-873345e174d7.html) and geocoded using the Google API. The dataset provides detail for COVID-19 clusters (groupings of 10 or more cases identified by the Metro Public Health Department through its case investigation process).  
  
  - Data from the [nytimes/covid-19-data](https://github.com/nytimes/covid-19-data) repository is loaded weekly to a PostgreSQL database on AWS. Tables in this database include:  
  The running total of cases and deaths for US counties reported daily since 3/8/2020, and results from online interviews conducted by Dynata for the NYT between July 2 and July 14, 2020. Participants were asked *How often do you wear a mask in public when you expect to be within six feet of another person?*

  - `businesses.csv` is a geocoded dataset pulled using the Google API. This dataset includes addresses from hubNashville of reported violations, and related Google results for the closest five businesses to that address.

 #### What We Found

 - There was a strong correspondence between the rate of reported violations and rate of COVID cases during summer (with peaks in July), but the relationship between them drops off toward October/November with rising cases and many fewer violations reported.

![COVID Reported Violation Relationship Dashboard](https://user-images.githubusercontent.com/31106403/104510017-29debb80-55b0-11eb-998b-7524bdec03a4.png)

 - The NYT mask use survey shows that attitudes toward the use of masks in Davidson county tracks as more positive to their use versus the country as a whole, while Tennessee's perspective on the same question skewed strongly more negative. 8% of US residents, 11% of Tennesseans, and 4% of Nashvillians said they'd 'Never' used a mask for the purpose of COVID prevention. 51% / 42% / 62% respectively, said they always used a mask when in public since the onset of the pandemic.

 - The top zip codes for reported violations were 37203 (Broadway business district, downtown), 37211 (South Nashville, Nolensville Pike), 37209 (Midtown business district along Charlotte Pike west of downtown).

![Violations by Zip Dashboard](https://user-images.githubusercontent.com/31106403/104510391-ba1d0080-55b0-11eb-84e2-36996e5e75eb.png)

 - Clusters of cases were most frequently identified in locations where large groups of people reside together including long term care, correctional, and congregate living.
 
 #### Dig In
 
 - [This map animation allows one to examine particular areas of Nashville and/or times during the studied months and view where the reported violations and clusters appeared.](https://public.tableau.com/profile/kyle.y7260#!/vizhome/COVID-19inNashvilleReportedViolationsandClusters/CovidPresentation) The Cluster markers have a decay of 30 days and the violation markers have a decay of 5 days.
 
 - [Review the full presentation here.](https://public.tableau.com/profile/kyle.y7260#!/vizhome/COVID-19inNashvilleReportedViolationsandClusters-Full/CovidPresentation?publish=yes)



