# Linkfire Web Traffic Analysis
Analysis of Linkfire web traffic data over the course of one week, focusing on CTR, user behavior, and traffic trends using Tableau and SQL.

## Project Overview
This project aims to analyze website traffic over the course of one week, focusing on events distribution and strategies to improve click-through rates (CTR). It examines three levels of user engagement:
1. Pageview - Basic level of engagement, where a user views the page.
2. Preview - Mid-level interaction, where a user engages with content on the page.
3. Click - Actionable interaction, where a user follows a link to an external platform.
   
By analyzing these events, we gain insights into user behavior across the interaction funnel, from initial curiosity to engagement and conversion.

## Data Sources
The dataset used for this project was sourced from Kaggle:
- [Website Traffic Dataset](https://www.kaggle.com/datasets/harshalpanchal/website-traffic)

## Tools
- DBeaver: Database management
- SQLite: Data manipulation
- Tableau: Data visualization
- Visual Studio Code (VSCode): Project organization

## Data Cleaning/Prepration
In the initial data preparation phase, I performed the following tasks:
- Handling missing values.
- Removing duplicates.
- Checking for typos.

## Exploratory Data Analysis
EDA involved exploring the data to answer key questions, such as:
- Total Events
   - How many total pageview/click/preview events were recorded for all links during the full period?
   - What was the average number of pageviews/click/preview events per day?

- Pageview Sources
   - Which countries generated the recorded pageviews?

- Click-Through Rate (CTR)
   - What was the overall CTR?

- CTR Distribution
  - How is the CTR distributed across different links?

- Correlation Between Clicks and Previews
   - Is there a correlation between clicks and previews?
   - Is the correlation statistically significant?
   - What is the effect size of the correlation?

## Results/Findings
- Most of the traffic peaked slightly before the weekend, possibly because people tend to listen to music more during work, study, or workout sessions. Traffic dropped below average later in the week, potentially due to users spending more time with family over the weekend.
- Clicks and previews were low compared to pageviews, suggesting there is potential to increase clicks by raising the preview rate, as shown later in the analysis.
- The slight uptick in previews during the middle of the week may indicate users' curiosity about new music. 
---
- The USA, India, France, Saudi Arabia, and the UK are the most popular regions driving traffic.
- Exploring localized content or marketing strategies tailored to these regions could help increase engagement and optimize traffic. 
---
- The CTR distribution shows that most user links fall within the 30-50% range, which serves our customers well, but there is potential to push this higher.
- The average click-through rate (CTR) is 46.76%, which is acceptable but could be significantly improved. To achieve this, we should explore methodologies to enhance how previews are presented to users. By optimizing the preview experience and making it more engaging, we can capture users' attention more effectively, leading to higher clicks and, ultimately, increased pageviews.
- The correlation between clicks and previews is exceptionally strong, with a Pearson correlation coefficient of 0.96. This indicates a near-perfect relationship, meaning that as previews increase, clicks also rise significantly. This highlights the importance of optimizing and increasing preview events to drive higher engagement and clicks.


## Visualizations
![Total and Average Events](https://github.com/user-attachments/assets/03a73671-2b3f-43bf-822b-9c43b4a51ea4)
![Trending Countries](https://github.com/user-attachments/assets/90090e21-411a-4169-a2d5-0e847d25590c)
![CTR Distribution](https://github.com/user-attachments/assets/3a9db8be-3b7a-4aac-9e72-c864706f5790)
![Preview-Click Correlation](https://github.com/user-attachments/assets/b84e0542-9fed-4a6c-acbd-df8207f34825)






