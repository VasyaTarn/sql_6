-- SELECT p.name, c.name
-- FROM Product p JOIN Category c ON p.id_category = c.id
-- JOIN Delivery d ON d.id_product = p.id
-- JOIN Suplier s ON d.id_suplier = s.id
-- WHERE s.name = 'ООО "Паньки"' OR s.name = 'ООО "Какие люди"'

-- SELECT p.name, s.name
-- FROM Product p JOIN Delivery d on p.id = d.id_product
-- JOIN Suplier s ON s.id = d.id_suplier
-- JOIN Producer pr ON pr.id = p.id_producer
-- JOIN Category c ON c.id = p.id_category
-- WHERE pr.name NOT LIKE '%АКМ%' AND c.name <> 'Крупы'

--  p.name, c.name, s.name, co.name
-- FROM Product p JOIN Category c ON p.id_category = c.id
-- JOIN Delivery d ON d.id_product = p.id
-- JOIN Suplier s ON d.id_suplier = s.id
-- JOIN Producer pr ON pr.id = p.id_producer
-- JOIN Adress a ON a.id = pr.id_adress
-- JOIN City ci ON c.id = a.id_city
-- JOIN Region r ON r.id = ci.id_region
-- JOIN Country co ON co.id = r.id_country
-- WHERE co.name NOT IN ('Украина', 'Молдова', 'Польша')
-- AND d.price < 50 AND d.date_of_delivery >= '2023-05-10' AND d.date_of_delivery <= GETDATE()

-- SELECT p.name, su.name, pr.name
-- FROM Product p JOIN Category c ON p.id_category = c.id
-- JOIN Sale s ON s.id_product = p.id
-- JOIN Delivery d ON d.id_product = p.id
-- JOIN Suplier su ON d.id_suplier = su.id
-- JOIN Producer pr ON p.id_producer = pr.id
-- WHERE (c.name = 'Безалкогольные напитки' OR c.name = 'Кондитерские изделия') AND s.quantity > 100

-- SELECT p.name, s.name, c.name, d.date_of_delivery, d.price
-- FROM Product p JOIN Delivery d ON d.id_product = p.id
-- JOIN Suplier s ON s.id = d.id_suplier
-- JOIN Category c ON p.id_category = c.id
-- WHERE s.name = 'Повна чаша' OR s.name = 'Алиэкспресс' OR s.name = 'Евротрейд'
-- ORDER BY p.name ASC

-- SELECT p.name, pr.name, CONCAT(co.name, ', ', c.name, ', ', a.street) AS 'Adress', ca.name, s.date_of_sale, s.price
-- FROM Product p JOIN Producer pr ON p.id_producer = pr.id
-- JOIN Adress a ON a.id = pr.id_adress
-- JOIN City c ON c.id = a.id_city
-- JOIN Region r ON r.id = c.id_region
-- JOIN Country co ON co.id = r.id_country
-- JOIN Category ca ON ca.id = p.id_category
-- JOIN Sale s ON s.id_product = p.id
-- WHERE pr.name <> 'Wolkswagen' AND pr.name <> 'Казахстроймаш'
-- ORDER BY s.price DESC