
-- Q1: Top Customers by Total Revenue
-- Objective: Identify customers who generate the highest revenue for the business

SELECT 
    c.customer_id,
    c.customer_name,
    SUM(oi.quantity * oi.price) AS total_revenue

FROM customers c

JOIN orders o 
    ON c.customer_id = o.customer_id

JOIN order_items oi 
    ON o.order_id = oi.order_id

-- Grouping by customer to calculate total revenue per customer
GROUP BY 
    c.customer_id, 
    c.customer_name

-- Sorting customers by highest revenue
ORDER BY 
    total_revenue DESC

-- Limiting to top 5 customers
LIMIT 5;



