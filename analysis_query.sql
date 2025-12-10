CREATE or replace view analist_portfolio AS
select o.customer_id,
       i.product_id,
       i.order_id,
       o.order_purchase_timestamp,
       o.order_estimated_delivery_date,
       o.order_delivered_customer_date,


      initcap( c.customer_city) as customer_city,
       c.customer_state,
      coalesce( p.product_category_name,'Other') as product_category_name,
       i.price,
       i.freight_value,
    r.review_score,

       --calculated fields
o.order_delivered_customer_date::date - o.order_estimated_delivery_date::date as days_diff_estimated,
o.order_delivered_customer_date::date - o.order_purchase_timestamp::date AS actual_delivery_days,
case
    when o.order_delivered_customer_date is null then 'Undelivered'
when o.order_delivered_customer_date::date <= o.order_estimated_delivery_date::date then 'Ontime'
when o.order_delivered_customer_date::date > o.order_estimated_delivery_date::date then 'Delay'
end as delivery_status,
    to_char(order_purchase_timestamp::timestamp, 'Day') as purchase_weekday
from olist_orders_dataset o
join olist_customers_dataset c on o.customer_id=c.customer_id
join olist_order_items_dataset i on o.order_id=i.order_id
left join olist_products_dataset p on p.product_id=i.product_id
left join olist_order_reviews_dataset r on r.order_id=o.order_id
where o.order_delivered_customer_date::date>=o.order_purchase_timestamp::date;


