CREATE OR REPLACE VIEW student.v_parcels_where AS
SELECT parc.pin, parc.acres_poly, parc.year_built, parc.total_tax, sale.sale_value, parc.shape
FROM defaultdb.enterprise.parcels_core parc
LEFT JOIN defaultdb.enterprise.parcel_sales sale
ON parc.pin = sale.pin
WHERE parc.acres_poly >= 10 AND sale.sale_value <= 1000000;
