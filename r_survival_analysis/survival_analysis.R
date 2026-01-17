setwd("C:/Users/piter/Documents/GithubProject/customer-churn-analysis/data")
getwd()

install.packages(c("survival", "survminer", "ggplot2"))
library(survival)
library(survminer)
library(ggplot2)

churn_data <- read.csv("customer_churn_clean_data.csv")
head(churn_data)

surv_object <- Surv(time = churn_data$Tenure, event = churn_data$Churn)
surv_object

km_fit <- survfit(surv_object ~ 1, data = churn_data)
ggsurvplot(km_fit, data = churn_data, conf.int = TRUE, risk.table = TRUE)

km_fit_type <- survfit(Surv(Tenure, Churn) ~ Subscription.Type, data = churn_data)
ggsurvplot(km_fit_type, data = churn_data, conf.int = TRUE, risk.table = TRUE, pval = TRUE)

cox_model <- coxph(Surv(Tenure, Churn) ~ Age + Gender + Support.Calls + Payment.Delay + Subscription.Type + Contract.Length, data = churn_data)
summary(cox_model)

ggforest(cox_model, data = churn_data)

surv_all <- survfit(Surv(Tenure, Churn) ~ 1, data = churn_data)
summary(surv_all)$table["median"]

