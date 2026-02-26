# SQL E-Commerce Project

## Project Overview
This project demonstrates **SQL skills** using a sample e-commerce database.  
Goal: Analyze customer orders, product sales, payments, and revenue to generate actionable business insights.  

The database consists of **Customers, Products, Orders, Order Items, and Payments** tables.  


## Skills & Tools
- **SQL:** Database creation, table relationships, joins, aggregations, views, and queries  
- **Data Analysis:** Summarizing sales, revenue, top products, monthly performance  
- **Business Insights:** Customer spending patterns, product popularity, revenue tracking  
- **Database Concepts:** Primary keys, foreign keys, relationships, constraints, and data integrity  


## Workflow
1. **Database & Table Creation**
   - Created database `ecommerce_db`  
   - Defined tables: `customers`, `products`, `orders`, `order_items`, `payments`  
   - Established **primary keys** and **foreign key relationships** for data integrity  

2. **Data Insertion**
   - Added sample data for **customers, products, orders, order items, and payments**  
   - Ensured realistic data for analysis (completed & failed payments, multiple orders per customer)  

3. **Revenue Analysis**
   - Calculated **total revenue from completed payments**  
   - Generated **monthly revenue trends** using aggregation functions  

4. **Product & Category Insights**
   - Identified **top 5 best-selling products**  
   - Calculated **revenue by product category**  
   - Useful for inventory and marketing decisions  

5. **Customer Insights**
   - Counted total orders per customer  
   - Highlighted customers with **multiple orders**  
   - Calculated **total spending per customer** using a CTE  
   - Ranked customers by **highest spending**  

6. **Advanced SQL**
   - Created a **view `monthly_revenue`** for easy monthly revenue tracking  
   - Demonstrated SQL **aggregations, joins, and views** for business reporting  


## Key Results & Business Insights
- Total revenue can be tracked **month by month** using `monthly_revenue` view  
- Best-selling products identified: e.g., Laptop, Mobile, Headphones  
- Most profitable product categories can inform **stock & promotion decisions**  
- Customer spending patterns show **which customers contribute most to revenue**  
- Data shows importance of monitoring **payment status**, as failed payments impact revenue  


## Outcome & Learnings
- Applied **end-to-end SQL skills** for database design and business analysis  
- Learned to combine **joins, aggregations, and CTEs** for real-world queries  
- Developed ability to generate **actionable business insights** from structured data  
- Prepared a **clean, recruiter-ready SQL project** for GitHub portfolio  


**Folder Structure Suggestion**
