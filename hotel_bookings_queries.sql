SELECT *
FROM hotel_bookings
LIMIT 10;
SELECT COUNT(*) AS total_rows
FROM hotel_bookings;
SELECT COUNT(*) AS null_children
FROM hotel_bookings
WHERE children IS NULL;
SELECT DISTINCT hotel
FROM hotel_bookings;
SELECT 
    COUNT(*) AS total_bookings,
    SUM(is_canceled) AS canceled_bookings,
    ROUND(100.0 * SUM(is_canceled) / COUNT(*), 2) AS cancellation_rate_pct
FROM hotel_bookings;
SELECT 
    hotel,
    COUNT(*) AS total_bookings,
    SUM(is_canceled) AS canceled_bookings,
    ROUND(100.0 * SUM(is_canceled) / COUNT(*), 2) AS cancellation_rate_pct
FROM hotel_bookings
GROUP BY hotel;
SELECT 
    hotel,
    ROUND(AVG(adr), 2) AS avg_adr
FROM hotel_bookings
GROUP BY hotel;
SELECT 
    market_segment,
    COUNT(*) AS total_bookings
FROM hotel_bookings
GROUP BY market_segment
ORDER BY total_bookings DESC;
SELECT 
    market_segment,
    COUNT(*) AS total_bookings,
    SUM(is_canceled) AS canceled_bookings,
    ROUND(100.0 * SUM(is_canceled) / COUNT(*), 2) AS cancellation_rate_pct
FROM hotel_bookings
GROUP BY market_segment
ORDER BY cancellation_rate_pct DESC;
SELECT 
    is_canceled,
    ROUND(AVG(lead_time), 2) AS avg_lead_time
FROM hotel_bookings
GROUP BY is_canceled;
SELECT 
    is_repeated_guest,
    COUNT(*) AS total_bookings,
    SUM(is_canceled) AS canceled_bookings,
    ROUND(100.0 * SUM(is_canceled) / COUNT(*), 2) AS cancellation_rate_pct
FROM hotel_bookings
GROUP BY is_repeated_guest;
SELECT 
    arrival_date_month,
    COUNT(*) AS total_bookings
FROM hotel_bookings
GROUP BY arrival_date_month
ORDER BY total_bookings DESC;
SELECT 
    deposit_type,
    COUNT(*) AS total_bookings,
    SUM(is_canceled) AS canceled_bookings,
    ROUND(100.0 * SUM(is_canceled) / COUNT(*), 2) AS cancellation_rate_pct
FROM hotel_bookings
GROUP BY deposit_type
ORDER BY cancellation_rate_pct DESC;
SELECT 
    customer_type,
    COUNT(*) AS total_bookings,
    SUM(is_canceled) AS canceled_bookings,
    ROUND(100.0 * SUM(is_canceled) / COUNT(*), 2) AS cancellation_rate_pct
FROM hotel_bookings
GROUP BY customer_type
ORDER BY cancellation_rate_pct DESC;
SELECT 
    hotel,
    arrival_date_month,
    COUNT(*) AS total_bookings
FROM hotel_bookings
GROUP BY hotel, arrival_date_month
ORDER BY hotel, total_bookings DESC;