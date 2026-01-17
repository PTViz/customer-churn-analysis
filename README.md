### Customer Churn Analysis



This project delivers a comprehensive churn analysis using SQL, Python, R, and Power BI. The goal is to identify the strongest churn drivers, quantify their impact, and provide clear business recommendations for improving customer retention.



The dataset used in this project was originally created by Matan Kriel and is licensed under the MIT License.

All analysis, modeling, SQL queries, visualizations, and documentation in this repository were created by Petar Torlakov.



#### Objective



To understand why customers churn, quantify the influence of behavioral and demographic factors, and support informed retention strategies across the business.



#### Project Structure



\# customer-churn-analysis



\# data

\- customer\_churn\_clean\_data.csv



> powerbi

\- customer\_churn.csv



\# sql\_queries

\- SQL\_README.md



> queries

\- 01\_overall\_churn.sql

\- 02\_churn\_by\_subscription.sql

\- 03\_churn\_by\_age.sql

\- 04\_churn\_by\_support\_calls.sql

\- 05\_churn\_by\_payment\_delay.sql

\- 06\_churn\_by\_contract\_length.sql

\- 07\_churn\_by\_total\_spend.sql

\- 08\_churn\_by\_last\_interaction.sql

\- 09\_missing\_values\_checks.sql

\- 10\_churn\_correlation\_summary.sql



\# python\_model

\- churn\_prediction\_pipeline.ipynb



\# r\_survival\_analysis

\- survival\_analysis.R



\# powerbi\_dashboard

\- churn\_dashboard.pbix

\- churn\_dashboard\_export.pdf



\# visuals

> python

> r

> powerbi



\- README.md



#### Key Insights



\- The overall churn rate is 56.7%, indicating a major retention challenge.



\- Contract length is the strongest churn driver. Monthly customers churn at dramatically higher rates than annual or quarterly customers.



\- Support calls strongly predict churn. Risk increases sharply after 3 or more calls.



\- Payment delays above ~20 days correlate with almost guaranteed churn.



\- Low total spend customers churn at the highest rates.



\- Engagement gaps (long time since last interaction) significantly increase churn risk.



\- Subscription type has minimal impact compared to behavioral factors.



\- Median customer lifetime from survival analysis is 44 months.



#### Tools \& Techniques



-SQL for segmentation and exploratory analysis



-Python for machine learning, SHAP explainability, and calibration



-R for Kaplan–Meier survival curves and Cox proportional hazards modeling



-Power BI for senior leadership dashboarding



#### Business Recommendations



-Encourage longer contract commitments through incentives or discounts.



-Prioritize proactive outreach for customers with high support call volume or long payment delays.



-Develop targeted retention programs for low‑spend and low‑engagement customers.



-Use churn vulnerability tiers from the model to guide customer success prioritization.



##### Author



Petar Torlakov  



##### Dataset Attribution



Dataset created by Matan Kriel.

Used under the MIT License.

Original copyright remains with the dataset author.

