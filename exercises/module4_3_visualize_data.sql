-- Databricks notebook source
-- MAGIC %md #Module 4 SparkSQL

-- COMMAND ----------

-- MAGIC %md ##Visualize Data

-- COMMAND ----------

select *
from sales2
limit 100;

-- COMMAND ----------

select *
from sales2
limit 100;

-- COMMAND ----------

/* requires 2char state code */
select i.StateCode, round(sum(s.SaleAmount)) as Sales
from cogsley_sales s
join state_info i on s.State = i.State
group by i.StateCode

-- COMMAND ----------

select *
from cogsley_sales
limit 100;
