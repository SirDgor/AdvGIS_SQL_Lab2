CREATE OR REPLACE VIEW student.v_parcels_where AS
SELECT p.pin, p.acres_poly, p.use1_desc, s.sale_date, s.sale_value, p.shape
FROM defaultdb.enterprise.parcels_core p
LEFT JOIN defaultdb.enterprise.parcel_sales s
ON p.pin = s.pin;
-- Joins 2 databases together in 1 query, with data from both databases, along the pin number in both sets.
