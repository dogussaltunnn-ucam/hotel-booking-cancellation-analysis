# Hotel Booking Demand and Cancellation Analysis

This project analyzes hotel booking behavior with a focus on cancellation patterns, customer segments, and booking demand trends. The analysis was conducted using SQL for data exploration and Tableau for dashboard development.

## Project Overview

The goal of this project was to identify the main drivers of booking cancellations and understand demand patterns across hotel types, market segments, customer types, and booking behavior.

The final dashboard highlights key insights related to:
- overall booking volume
- cancellation rate
- hotel type performance
- market segment risk
- customer type risk
- repeated guest behavior
- lead time differences
- deposit type patterns

## Tools Used

- SQL
- Tableau Public
- DBeaver
- CSV dataset analysis

## Dashboard Preview



![Görüntü 1-4-26 00 35](https://github.com/user-attachments/assets/971d8927-298f-4656-9d34-bf2b89b2a432)



## Live Dashboard

[View the Tableau Public Dashboard]([
](https://public.tableau.com/views/HotelBookingDemandandCancellationAnalysisDashboard/Dashboard1?:language=en-US&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)
## Dataset

Source: Hotel Booking Demand dataset from Kaggle

## Business Questions

This project aimed to answer the following questions:

- What is the overall cancellation rate?
- Do City Hotels and Resort Hotels show different cancellation behavior?
- Which market segments generate the most bookings?
- Which market segments have the highest cancellation risk?
- Is lead time associated with cancellation likelihood?
- Are repeated guests less likely to cancel?
- Which customer types are the riskiest?
- Does deposit type appear related to cancellation outcomes?
- How does booking demand change across months?

## Key Findings

- The dataset contains **119,390** hotel bookings.
- A total of **44,224** bookings were cancelled, resulting in an overall cancellation rate of **37.04%**.
- **City Hotels** had a higher cancellation rate (**41.73%**) than **Resort Hotels** (**27.76%**).
- Among meaningful market segments, **Groups** showed the highest cancellation rate (**61.06%**).
- **Online TA** was the largest booking segment, with **56,477** bookings.
- Cancelled bookings had a much higher average lead time (**144.85 days**) than non-cancelled bookings (**79.98 days**).
- **Repeated guests** were significantly less likely to cancel (**14.49%**) than **non-repeated guests** (**37.79%**).
- **Transient** customers showed the highest cancellation rate among customer types (**40.75%**).
- **Non Refund** bookings showed an extremely high cancellation rate (**99.36%**), which may reflect policy or business-rule effects and should be interpreted carefully.
- Booking demand peaked during **July and August**, with **August** showing the highest booking volume.

## Dashboard Contents

The dashboard includes:

- Total Bookings KPI
- Cancelled Bookings KPI
- Cancellation Rate KPI
- Average ADR KPI
- Hotel vs Cancellation Rate
- Repeated Guest vs Cancellation Rate
- Lead Time by Booking Outcome
- Market Segment by Total Bookings
- Market Segment by Cancellation Rate
- Customer Type Cancellation Rate
- Deposit Type Cancellation Rate

## Project Structure

```bash
hotel-booking-cancellation-analysis/
│
├── README.md
├── screenshots/
│   └── dashboard-overview.png
├── sql/
│   └── hotel_booking_analysis.sql
└── tableau/
    └── hotel_booking_dashboard.twb
