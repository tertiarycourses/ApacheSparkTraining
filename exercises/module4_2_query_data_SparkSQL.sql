-- Databricks notebook source
-- MAGIC %md #Module 4 SparkSQL

-- COMMAND ----------

-- MAGIC %md ## Query Data

-- COMMAND ----------

select *
from sales
limit 100;

-- COMMAND ----------

select CompanyName, round(sum(SaleAmount)) as Sales
from sales
group by CompanyName
order by 2 desc

-- COMMAND ----------

select CompanyName, IPOYear, Symbol, round(sum(SaleAmount)) as Sales
from sales
left join clients on CompanyName = Name
group by CompanyName, IPOYear, Symbol
order by 1

-- COMMAND ----------

select i.StateCode, round(sum(s.SaleAmount)) as Sales
from sales
join state_info i on s.State = i.State
group by i.StateCode

-- COMMAND ----------


