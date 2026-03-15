CREATE OR REPLACE VIEW student.v_parcels_where AS
SELECT pin, acres_poly, use1_desc, ttl_mv, year_built, shape
FROM defaultdb.enterprise.parcels_core
WHERE acres_poly >= 5;

-- Selects several sets of data from the parcel database, then keeps ones that have an acres_poly greater than or equal to 5.
