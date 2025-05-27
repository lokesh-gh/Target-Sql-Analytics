Target Brazil E-commerce Data Analysis

Project Overview
This project involves a comprehensive data analysis of 100k e-commerce orders from Target, Brazil, spanning the years 2016 to 2018. The dataset, comprising 8 interconnected tables, provides rich information on orders, payments, timestamps, locations, customers, items, products, sellers, and customer reviews. The primary goal of this analysis is to extract actionable insights to understand business trends, customer behavior, and operational efficiencies within the Brazilian e-commerce market.

Data Source
The data for this project is based on 100k orders from Target, Brazil, from 2016 to 2018. [cite: 73]

Tools Used
 SQL (Big Query) (for data extraction, transformation, and analysis)

 Analysis Performed

1. Initial Exploration of the Dataset
This section focused on understanding the basic structure and characteristics of the dataset.
 Tables and Columns: Identified all tables, their columns, and corresponding data types.
     Query: See `queries/1_initial_exploration.sql`
 Order Time Range: Determined the earliest and latest order placement dates.
     Query: See `queries/1_initial_exploration.sql`
 Customer City & State Count: Counted the number of orders per customer city and state.
     Query: See `queries/1_initial_exploration.sql`

2. In-depth Exploration of Dataset
This section delved deeper into trends and seasonality.
 Order Trend Over Years: Analyzed the month-on-month trend in the number of delivered orders, including growth percentage.
     Query: See `queries/2_in_depth_exploration.sql`
 Monthly Seasonality:** Examined if there's a monthly seasonality in order placement.
     Query: See `queries/2_in_depth_exploration.sql`
 Time of Day for Orders:** Determined the time of day (Dawn, Morning, Afternoon, Night) when Brazilian customers predominantly place their orders.
     Query: See `queries/2_in_depth_exploration.sql`

3. Evolution of E-commerce Orders in the Brazil Region
This section explored regional order patterns.
 Month-on-Month Orders by State: Calculated the month-on-month number of orders placed in each state, along with the percentage growth.
     Query: See `queries/3_evolution_of_ecommerce.sql`
 Customer Distribution Across States: Analyzed how customers are distributed across all Brazilian states.
     Query: See `queries/3_evolution_of_ecommerce.sql`

4. Impact on Economy: Analyzing Money Movement
This section focused on financial aspects like order prices and freight.
 Percentage Increase in Order Cost (2017-2018):** Calculated the year-on-year percentage increase in the total cost of delivered orders (January to August only) using `payment_value`.
     Query: See `queries/4_impact_on_economy.sql`
 Total and Average Order Price per State: Computed the total and average order price for each state.
     Query: See `queries/4_impact_on_economy.sql`
 Total and Average Order Freight per State: Computed the total and average order freight value for each state.
     Query: See `queries/4_impact_on_economy.sql`

5. Analysis Based on Sales, Freight, and Delivery Time
This section focused on delivery metrics.
 Delivery Time Calculation: Calculated the days between purchasing, actual delivery, and estimated delivery.
     Query: See `queries/5_sales_freight_delivery_analysis.sql`
 Estimated vs. Actual Delivery Difference:** Calculated the difference in days between the estimated and actual delivery dates.
     Query: See `queries/5_sales_freight_delivery_analysis.sql`
 Top 5 States - Highest & Lowest Average Freight Value: Identified states with the highest and lowest average freight values.
     Query: See `queries/5_sales_freight_delivery_analysis.sql`
 Top 5 States - Highest & Lowest Average Delivery Time: Identified states with the longest and shortest average delivery times.
     Query: See `queries/5_sales_freight_delivery_analysis.sql`
 Top 5 States - Fastest & Lowest Delivery Compared to Estimated: Identified states with the fastest and slowest delivery compared to the estimated date (i.e., delivery ahead/behind schedule).
     Query: See `queries/5_sales_freight_delivery_analysis.sql`

6. Payment Type Analysis
This section focused on payment methods.
Month-on-Month Order Count by Payment Type: Analyzed the count of orders grouped by year, month, and payment type.
     Query: See `queries/6_payment_type_analysis.sql`
Order Count by Payment Installments: Counted orders based on the number of payment installments.
     Query: See `queries/6_payment_type_analysis.sql`

Key Insights [cite: 134, 135, 136, 137, 138, 139]
1. A small percentage of total orders, specifically around 1.2%, were either unavailable (609 orders) or canceled (625 orders). [cite: 134]
2. The e-commerce business in Brazil is experiencing rapid growth, indicated by an abrupt increase in order volume. [cite: 135, 136, 137]
3. Brazilian customers tend to place most of their orders in the afternoon and at night. [cite: 91]
4. There isn't a clear monthly seasonality in order placement; however, there are significant spikes in orders in different months. [cite: 86]
5. Business is generally on an uptrend, with sharp month-over-month order spikes. [cite: 87]
6. A significant portion of customer dissatisfaction (low ratings) is concentrated in specific states. [cite: 138, 139]
7. Only three states contribute to the maximum order volume, suggesting a concentration of business activity. [cite: 142]

Recommendations [cite: 141, 142, 143]
1.  Workforce Optimization: Given that Brazilian customers primarily place orders in the afternoon and at night, consider increasing staff during these peak hours to better manage customer requests and services. This could involve reallocating workforce from morning and dawn shifts. [cite: 141]
2.  Logistics Improvement: States with consistently high average delivery times may require improved logistics and delivery infrastructure to enhance customer satisfaction. [cite: 136, 143]
3.  Market Expansion & Customer Satisfaction Focus:**
     A detailed study is needed to understand the reasons behind the low order volume from the majority of states, as only three states contribute significantly to overall volume. [cite: 142, 143]
     High delivery times could be a contributing factor to low order volumes in these states, and efforts should be made to address this. [cite: 143]
     Further investigation is crucial to understand the root causes of customer dissatisfaction in the states where low ratings are prevalent. [cite: 139]
4.  Scalability Planning: Due to the rapid and abrupt increase in order volume, the company should be prepared for continued growth. This might involve hiring additional workforce, potentially on a contractual basis, to mitigate risks associated with high demand. [cite: 135, 137]

How to Run the Queries
To run these queries, you will need access to the Target Brazil e-commerce dataset. The queries are written in standard SQL and can be executed in any SQL environment that supports the syntax (e.g., BigQuery, PostgreSQL with appropriate table setup).

1.  Clone this repository to your local machine.
2.  Navigate to the `queries/` directory.
3.  Execute the `.sql` files in your chosen SQL environment.

Contact
[G Lokesh/www.linkedin.com/in/lokesh-g-9111ab318/github.com/lokesh-gh]
