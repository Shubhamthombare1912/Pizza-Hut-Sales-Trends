
-- Retrieve the total number of orders placed.

select count(order_id) as total_orders from orders;

-- Calculate the total revenue generated from pizza sales.

SELECT round(SUM(order_details.quantity * pizzas.price),2) AS total_revenue
FROM order_details
JOIN pizzas ON order_details.pizza_id = pizzas.pizza_id;


-- Identify the highest-priced pizza.

select pizza_types.name, pizzas.price from pizza_types join pizzas on pizzas.pizza_type_id=  pizza_types.pizza_type_id order by 
pizzas.price desc limit 1;

-- Identify the most common pizza size ordered.

select pizzas.size, count(order_details.order_details_id) as pizza_count from pizzas join order_details 
on order_details.pizza_id = pizzas.pizza_id 
group by pizzas.size order by count(order_details.order_details_id) desc limit 1;


-- List the top 5 most ordered pizza types along with their quantities.

select pizzas.pizza_type_id, sum(order_details.quantity) as pizza_quantities from pizzas join order_details 
on pizzas.pizza_id = order_details.pizza_id 
group by pizzas.pizza_type_id order by sum(order_details.quantity) desc
limit 5;









