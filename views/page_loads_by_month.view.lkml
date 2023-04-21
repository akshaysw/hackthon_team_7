view: page_loads_by_month {

  derived_table: { sql: SELECT DATE_TRUNC('month', RECEIVED_AT) AS month, COUNT(*) AS page_loads FROM PAGES WHERE RECEIVED_AT >= DATE_TRUNC('month', CURRENT_DATE) - INTERVAL '6 months' GROUP BY month ORDER BY month ASC ;; }

  dimension: month { type: date_month sql: ${TABLE}.month ;; description: "The month in which page loads occurred" }

  measure: page_loads { type: sum sql: ${TABLE}.page_loads ;; description: "The number of page loads in the given month" } }
