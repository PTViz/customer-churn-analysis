\## Summary



The analysis shows that customer churn is driven mainly by short contract lengths, frequent support calls, long payment delays, low engagement, and low total spend. These behaviours consistently appear in the data as the strongest predictors of whether a customer will leave. Subscription type and age also influence churn, although their impact is smaller. Overall churn is high, which indicates a significant retention challenge. **The findings point to clear opportunities for improvement, particularly in customer support, proactive outreach to disengaged customers, and incentives that encourage longer and more valuable relationships.**







Find the individual insights for each query below:



\### 01\_overall\_churn.sql



\*\*Insight:\*\*



Out of 440,833 customers, 249,999 churned, a churn rate of 56.71%. More than half of the customer base leaves, indicating a serious retention issue.



\### 02\_churn\_by\_subscription.sql



\*\*Insight:\*\*



Basic customers churn the most in absolute numbers, with over 23,000 more churned users than retained ones. However, the churn rates across Basic, Standard, and Premium are all close to each other, meaning subscription tier is not a strong predictor of churn compared to other factors.



\### 03\_churn\_by\_age.sql



\*\*Insight:\*\*



Younger customers churn the most. The Under‑25 group has far more churned users than retained ones, and churn remains high through ages 25–54. Older customers (55–64 and 65+) appear almost entirely churned in the dataset, suggesting that age is a strong churn driver, with both the youngest and oldest segments being the most likely to leave.



\### 04\_churn\_by\_support\_calls.sql



\*\*Insight:\*\*



Churn rises sharply as support calls increase. Customers with 0–2 calls mostly stay, but churn starts overtaking retention from 3 calls onward. After 4 calls, churn becomes dominant, and from 5 calls upward almost every customer churns. High support interaction is a strong signal of dissatisfaction and one of the clearest churn predictors in the dataset.



\### 05\_churn\_by\_payment\_delay.sql



\*\*Insight:\*\*



For payment delays between 0 and 20 days, churn and retention stay fairly balanced, with only small differences between the two. But once delays pass 20 days, the pattern changes completely: almost every customer churns. Long or repeated payment delays are a strong warning sign, and customers with very high delays almost always end up leaving.



\### 06\_churn\_by\_contract\_length.sql



\*\*Insight:\*\*



Annual and Quarterly customers show a healthier balance between staying and churning, with slightly more retained than churned. Monthly customers, however, are overwhelmingly churned, suggesting that brief contracts attract customers who are less committed and more likely to leave. Contract length is a clear churn signal, with longer commitments linked to better retention.



\### 07\_churn\_by\_total\_spend.sql



\*\*Insight:\*\*



Customers spending under 500 show only churned records in the dataset, suggesting that low spending users are far more likely to leave. The 500+ group is the only segment with a meaningful number of retained customers, although churn is still high. Overall, high spending customers are more likely to stay, while less valuable customers churn almost entirely.



\### 08\_churn\_by\_last\_interaction.sql



\*\*Insight:\*\*

 

For customers with recent interactions (1–15 days), churn and retention stay fairly balanced. But after around 16 days without contact, the pattern flips: churn becomes much higher than retention and stays that way through day 30. Longer gaps in engagement clearly increase churn risk, and customers who haven’t interacted in over two weeks are far more likely to leave.



\### 09\_missing\_values\_checks.sql



\*\*Insight:\*\*



Each key column has only one missing value, meaning the dataset is almost completely complete. Data quality is very high, and no major cleaning is needed before analysis.





**### 10\_churn\_correlation\_summary.sql**



\*\*Insight:\*\*



This summary highlights the strongest churn signals across the dataset. Monthly contracts show a 100% churn rate, making contract length one of the clearest predictors. Support calls follow a similar pattern: churn stays low for customers with 0–2 calls, rises sharply at 3–4, and reaches 100% from 6 calls onward. Payment delays behave the same way, delays up to 20 days have churn rates around 45%, but from day 21 onward churn jumps to 100%. Subscription type shows smaller differences, with Basic customers churning slightly more than Standard and Premium. Overall, the most powerful churn drivers are high support calls, long payment delays, and short contract lengths.

