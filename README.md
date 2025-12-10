# brazilian-ecommerce-sql-tableau-portfolio-project
Data analysis project using SQL and Tableau on Olist E-commerce dataset.
# 🇧🇷 Brazilian E-Commerce Analytics Project

<img width="1556" height="759" alt="image" src="https://github.com/user-attachments/assets/51785a1b-18ce-4404-ab36-ca9c598f2be8" />

## 🔗 Live Interactive Dashboard
> Explore the full visualization here:[[**Tableau Public Dashboard Link**](BURAYA_TABLEAU_LINKINI_YAPISTIR)](https://public.tableau.com/app/profile/.a.la.g.lcan8529/viz/Olist_portfolio_project/Dashboard1?publish=yes)

---

## 📝 Project Background
Olist is a Brazilian e-commerce platform that connects small businesses to customers. The dataset contains 100k+ orders from 2016 to 2018.

**The Business Problem:**
The company is experiencing delivery delays and wants to understand:
1.  Is there a correlation between shipping time and customer satisfaction?
2.  Which regions are underperforming in logistics?
3.  How does delivery status impact overall sales revenue?

---

## 🛠️ Tech Stack & Strategy
The project was executed in 3 main stages:

### 1. Data Analysis (SQL - PostgreSQL)
* **Data Modeling:** Joined 9 relational tables (Orders, Customers, Payments, Reviews, etc.) to create a unified view.
* **Feature:** Calculated `actual_delivery_days` and defined `delivery_status` logic using `CASE WHEN`.
* **Data Cleaning:** Handled NULL values in delivery dates and standardized city names (`INITCAP`).

### 2. Visualization (Tableau Desktop)
* Created calculated fields for KPI metrics (On-Time Rate, Avg Delivery Time).
* Designed an interactive map to visualize sales density by state.
* Implemented dynamic filters for drill-down analysis.

---

## 📊 Key Insights & Analysis

### 1. Delivery Speed = Customer Happiness
There is a drastic drop in customer review scores when delivery is delayed.
* **On-Time Orders:** ⭐ **4.21** Avg Score
* **Delayed Orders:** ⭐ **2.26** Avg Score
* *Insight:* Improving logistics efficiency is the fastest way to boost customer satisfaction.

### 2. The "Pareto" of Regions
* **Sao Paulo (SP)** state dominates the sales volume.
* However, remote states show longer delivery times, negatively impacting the reviews in those regions.

### 3. Sales Trend
* A significant spike in sales was observed during Black Friday periods (Nov 2017), followed by logistics bottlenecks.

---

## 💡 Recommendations (Action Plan)
Based on the data, I recommend the following actions for Olist:
1.  **Prioritize Logistics in Remote Areas:** Establish local warehouses in high-delay states to improve review scores.
2.  **Proactive Communication:** Send automated apology emails/coupons to customers whose orders are flagged as "Late" to mitigate negative reviews.
3.  **Carrier Optimization:** Review performance of carriers delivering to the Northern region.

---

## 📁 Repository Structure
* `analysis_query.sql`: The complete SQL script used to clean and join the data.
* `dashboard.png`: Screenshot of the final Tableau dashboard.
* `README.md`: Project documentation.

---

*Author: Çağla Gülcan
*Connect with me on (https://www.linkedin.com/in/caglagulcan/)
