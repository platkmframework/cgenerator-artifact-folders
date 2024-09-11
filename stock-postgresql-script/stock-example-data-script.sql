INSERT INTO public.category (id, name) VALUES (4, 'Refrescos');
INSERT INTO public.category (id, name) VALUES (1, 'Harina');
INSERT INTO public.category (id, name) VALUES (13, 'Carnes');
INSERT INTO public.category (id, name) VALUES (14, 'Verduras');
INSERT INTO public.country (id, name) VALUES (6, 'México');
INSERT INTO public.country (id, name) VALUES (7, 'Panamá');
INSERT INTO public.country (id, name) VALUES (9, 'Canada');
INSERT INTO public.country (id, name) VALUES (4, 'Portugal');
INSERT INTO public.country (id, name) VALUES (2, 'Chile');
INSERT INTO public.country (id, name) VALUES (1, 'España');
INSERT INTO public.country (id, name) VALUES (3, 'Noruega');

INSERT INTO public.product (id, name, code, category_id_fk, description, price, vat) VALUES (1, 'Refresco Coli', 'CI-009', 4, '1 Litro', 1, 0.3);
INSERT INTO public.product (id, name, code, category_id_fk, description, price, vat) VALUES (2, 'Naranja piña', 'NP-9023', 4, '2 Litros', 1.5, 0.1);
INSERT INTO public.product (id, name, code, category_id_fk, description, price, vat) VALUES (3, 'Pan blanco A', 'PB-1233', 1, '20g', 0.45, NULL);
INSERT INTO public.product (id, name, code, category_id_fk, description, price, vat) VALUES (4, 'Pizza b', 'PIZZ1254A', 1, '10G', 1.5, 0.1);
INSERT INTO public.product (id, name, code, category_id_fk, description, price, vat) VALUES (5, 'Pollo a', 'PO-48235', 13, '1Kg', 2, 0.3);
INSERT INTO public.product (id, name, code, category_id_fk, description, price, vat) VALUES (6, 'Jamón curado e', 'JC-29801', 13, '2KG', 12, NULL);
INSERT INTO public.product (id, name, code, category_id_fk, description, price, vat) VALUES (7, 'Lechuga', 'LECH-7592', 14, '5g', 1, 10);
INSERT INTO public.product (id, name, code, category_id_fk, description, price, vat) VALUES (8, 'Espinacas', 'ESP-2', 14, '2g', 1, NULL);


INSERT INTO public.province (id, name, country_id_fk) VALUES (1, 'Madrid', 3);
INSERT INTO public.province (id, name, country_id_fk) VALUES (2, 'Málaga', 3);
INSERT INTO public.province (id, name, country_id_fk) VALUES (3, 'Múrcia', 3);
INSERT INTO public.province (id, name, country_id_fk) VALUES (4, 'León', 3);

INSERT INTO public.municipality (id, name, province_id_fk) VALUES (1, 'Tres Cantos', 1);
INSERT INTO public.municipality (id, name, province_id_fk) VALUES (2, 'Torres de la Alameda', 1);
INSERT INTO public.municipality (id, name, province_id_fk) VALUES (3, 'Valdaracete', 1);


INSERT INTO public.customer (id, first_name, last_name, email, cellphone_number, address, job_title, birthdate, country_id_fk) VALUES (4, 'Ana María', 'Carpentier', '', '', '', '', NULL, 9);
INSERT INTO public.customer (id, first_name, last_name, email, cellphone_number, address, job_title, birthdate, country_id_fk) VALUES (3, 'Armando', 'Calderón', 'armando@correo.com', '444333555444', '', '', NULL, 6);
INSERT INTO public.customer (id, first_name, last_name, email, cellphone_number, address, job_title, birthdate, country_id_fk) VALUES (2, 'Juana', 'Martinez', '', '', '', '', '2024-08-06 21:00:00', 3);
INSERT INTO public.customer (id, first_name, last_name, email, cellphone_number, address, job_title, birthdate, country_id_fk) VALUES (10, 'Noelia', 'Figueroa', 'noelia@correo.com', '', 'calle A num 45', '', '2024-08-27 19:51:00', NULL);



INSERT INTO public.customer_order (id, description, customer_id_fk, order_date) VALUES (2, 'Compra de productos-Juana Martínez- 2023-10-29', 2, '02:30:30.060953');
INSERT INTO public.customer_order (id, description, customer_id_fk, order_date) VALUES (3, 'Compra de productos-Juana Martínez- 2023-11-29', 2, '02:30:30.060953');
INSERT INTO public.customer_order (id, description, customer_id_fk, order_date) VALUES (4, 'Compra de productos-Juana Martínez- 2023-12-29', 2, '02:30:30.060953');
INSERT INTO public.customer_order (id, description, customer_id_fk, order_date) VALUES (5, 'Compra de productos-Armando Calderón- 2023-01-01', 3, '02:30:30.060953');
INSERT INTO public.customer_order (id, description, customer_id_fk, order_date) VALUES (6, 'Compra de productos-Armando Calderón- 2023-02-01', 3, '02:30:30.060953');
INSERT INTO public.customer_order (id, description, customer_id_fk, order_date) VALUES (7, 'Compra de productos-Armando Calderón- 2023-02-01', 3, '02:30:30.060953');
INSERT INTO public.customer_order (id, description, customer_id_fk, order_date) VALUES (8, 'Compra de productos-Ana María- 2023-05-5', 4, '02:30:30.060953');
INSERT INTO public.customer_order (id, description, customer_id_fk, order_date) VALUES (9, 'Compra de productos-Ana María- 2023-05-22', 4, '02:30:30.060953');
INSERT INTO public.customer_order (id, description, customer_id_fk, order_date) VALUES (10, 'Compra de productos-Pedro Figueroa- 2023-11-18', 10, '02:30:30.060953');
INSERT INTO public.customer_order (id, description, customer_id_fk, order_date) VALUES (11, 'Compra de productos-Pedro Figueroa- 2023-11-30', 10, '02:30:30.060953');


INSERT INTO public.customer_order_details (id, product_id_fk, order_id_fk, quantity, description) VALUES (1, 1, 2, 5, NULL);
INSERT INTO public.customer_order_details (id, product_id_fk, order_id_fk, quantity, description) VALUES (2, 2, 2, 3, NULL);
INSERT INTO public.customer_order_details (id, product_id_fk, order_id_fk, quantity, description) VALUES (3, 3, 2, 10, NULL);
INSERT INTO public.customer_order_details (id, product_id_fk, order_id_fk, quantity, description) VALUES (4, 4, 3, 1, NULL);
INSERT INTO public.customer_order_details (id, product_id_fk, order_id_fk, quantity, description) VALUES (5, 5, 3, 23, NULL);
INSERT INTO public.customer_order_details (id, product_id_fk, order_id_fk, quantity, description) VALUES (6, 5, 4, 2, NULL);
INSERT INTO public.customer_order_details (id, product_id_fk, order_id_fk, quantity, description) VALUES (7, 6, 4, 6, NULL);
INSERT INTO public.customer_order_details (id, product_id_fk, order_id_fk, quantity, description) VALUES (8, 7, 5, 7, NULL);
INSERT INTO public.customer_order_details (id, product_id_fk, order_id_fk, quantity, description) VALUES (9, 8, 5, 8, NULL);
INSERT INTO public.customer_order_details (id, product_id_fk, order_id_fk, quantity, description) VALUES (12, 1, 6, 12, NULL);
INSERT INTO public.customer_order_details (id, product_id_fk, order_id_fk, quantity, description) VALUES (13, 2, 6, 54, NULL);
INSERT INTO public.customer_order_details (id, product_id_fk, order_id_fk, quantity, description) VALUES (14, 3, 7, 34, NULL);
INSERT INTO public.customer_order_details (id, product_id_fk, order_id_fk, quantity, description) VALUES (15, 4, 7, 7, NULL);
INSERT INTO public.customer_order_details (id, product_id_fk, order_id_fk, quantity, description) VALUES (16, 5, 8, 6, NULL);
INSERT INTO public.customer_order_details (id, product_id_fk, order_id_fk, quantity, description) VALUES (17, 6, 8, 73, NULL);
INSERT INTO public.customer_order_details (id, product_id_fk, order_id_fk, quantity, description) VALUES (18, 7, 9, 1, NULL);
INSERT INTO public.customer_order_details (id, product_id_fk, order_id_fk, quantity, description) VALUES (19, 6, 9, 62, NULL);
INSERT INTO public.customer_order_details (id, product_id_fk, order_id_fk, quantity, description) VALUES (20, 1, 10, 9, NULL);
INSERT INTO public.customer_order_details (id, product_id_fk, order_id_fk, quantity, description) VALUES (21, 2, 10, 18, NULL);
INSERT INTO public.customer_order_details (id, product_id_fk, order_id_fk, quantity, description) VALUES (22, 3, 11, 5, NULL);
INSERT INTO public.customer_order_details (id, product_id_fk, order_id_fk, quantity, description) VALUES (23, 4, 11, 41, NULL);



INSERT INTO public.supplier (id, name, email, office_phone_number, cellphone_number, nif, register_date, active, description, country_id_fk, province_id_fk, zipcode, municipality_id_fk, payment_type, present_madrid) VALUES (1, 'Empresa suministros Madrid', 'esm@correo.org', '9999999999', NULL, 'XAXA-000', NULL, true, NULL, 1, 1, NULL, 1, 'Ambos', B'1');
INSERT INTO public.supplier (id, name, email, office_phone_number, cellphone_number, nif, register_date, active, description, country_id_fk, province_id_fk, zipcode, municipality_id_fk, payment_type, present_madrid) VALUES (2, 'Mayorista Madrid', 'contacto@correo.org', '555555555', NULL, 'MTXA-333', NULL, true, NULL, 1, 1, NULL, 2, 'Ambos', B'1');
INSERT INTO public.supplier (id, name, email, office_phone_number, cellphone_number, nif, register_date, active, description, country_id_fk, province_id_fk, zipcode, municipality_id_fk, payment_type, present_madrid) VALUES (3, 'Ventas varias', 'v@correo.org', '9999999999', NULL, 'V-000', NULL, true, NULL, 1, 1, NULL, 3, 'Ambos', B'1');


INSERT INTO public.supplier_product (id, supplier_id_fk, product_id_fk) VALUES (1, 1, 1);
INSERT INTO public.supplier_product (id, supplier_id_fk, product_id_fk) VALUES (2, 1, 2);
INSERT INTO public.supplier_product (id, supplier_id_fk, product_id_fk) VALUES (4, 1, 3);
INSERT INTO public.supplier_product (id, supplier_id_fk, product_id_fk) VALUES (6, 1, 4);
INSERT INTO public.supplier_product (id, supplier_id_fk, product_id_fk) VALUES (7, 2, 6);
INSERT INTO public.supplier_product (id, supplier_id_fk, product_id_fk) VALUES (8, 2, 7);
INSERT INTO public.supplier_product (id, supplier_id_fk, product_id_fk) VALUES (9, 2, 8);
INSERT INTO public.supplier_product (id, supplier_id_fk, product_id_fk) VALUES (10, 3, 1);
INSERT INTO public.supplier_product (id, supplier_id_fk, product_id_fk) VALUES (11, 3, 2);
INSERT INTO public.supplier_product (id, supplier_id_fk, product_id_fk) VALUES (12, 3, 3);
INSERT INTO public.supplier_product (id, supplier_id_fk, product_id_fk) VALUES (13, 3, 2);



INSERT INTO public.supply_order (id, code, order_date, description, supplier_id_fk) VALUES (1, 'ORDER-001', '2024-11-30 02:30:30', 'Ordern de compra ORDER-001', 1);
INSERT INTO public.supply_order (id, code, order_date, description, supplier_id_fk) VALUES (2, 'ORDER-002', '2024-01-20 02:30:30', 'Ordern de compra ORDER-002', 1);
INSERT INTO public.supply_order (id, code, order_date, description, supplier_id_fk) VALUES (3, 'ORDER-003', '2024-07-21 02:30:30', 'Ordern de compra ORDER-003', 1);
INSERT INTO public.supply_order (id, code, order_date, description, supplier_id_fk) VALUES (4, 'ORDER-004', '2024-01-20 02:30:30', 'Ordern de compra ORDER-004', 2);
INSERT INTO public.supply_order (id, code, order_date, description, supplier_id_fk) VALUES (5, 'ORDER-005', '2024-01-20 02:30:30', 'Ordern de compra ORDER-005', 2);
INSERT INTO public.supply_order (id, code, order_date, description, supplier_id_fk) VALUES (6, 'ORDER-006', '2024-01-20 02:30:30', 'Ordern de compra ORDER-006', 2);
INSERT INTO public.supply_order (id, code, order_date, description, supplier_id_fk) VALUES (7, 'ORDER-007', '2024-01-20 02:30:30', 'Ordern de compra ORDER-007', 3);



INSERT INTO public.supply_order_details (id, product_id_fk, supply_order_id_fk, quantity, description) VALUES (1, 1, 1, 2, NULL);
INSERT INTO public.supply_order_details (id, product_id_fk, supply_order_id_fk, quantity, description) VALUES (2, 2, 1, 45, NULL);
INSERT INTO public.supply_order_details (id, product_id_fk, supply_order_id_fk, quantity, description) VALUES (3, 3, 2, 1, NULL);
INSERT INTO public.supply_order_details (id, product_id_fk, supply_order_id_fk, quantity, description) VALUES (4, 4, 3, 7, NULL);
INSERT INTO public.supply_order_details (id, product_id_fk, supply_order_id_fk, quantity, description) VALUES (5, 5, 4, 65, NULL);
INSERT INTO public.supply_order_details (id, product_id_fk, supply_order_id_fk, quantity, description) VALUES (6, 6, 5, 4, NULL);
INSERT INTO public.supply_order_details (id, product_id_fk, supply_order_id_fk, quantity, description) VALUES (7, 7, 6, 8, NULL);
INSERT INTO public.supply_order_details (id, product_id_fk, supply_order_id_fk, quantity, description) VALUES (8, 8, 7, 32, NULL);


SELECT pg_catalog.setval('public.category_id_seq', 14, true);



SELECT pg_catalog.setval('public.country_id_seq', 12, true);



SELECT pg_catalog.setval('public.customer_id_seq', 11, true);



SELECT pg_catalog.setval('public.customer_order_id_seq', 11, true);



SELECT pg_catalog.setval('public.municipality_id_seq', 3, true);



SELECT pg_catalog.setval('public.my_seq_category', 1, true);



SELECT pg_catalog.setval('public.my_seq_country', 101, true);



SELECT pg_catalog.setval('public.product_id_seq', 8, true);



SELECT pg_catalog.setval('public.product_order_details_id_seq', 23, true);



SELECT pg_catalog.setval('public.province_id_seq', 4, true);



SELECT pg_catalog.setval('public.supplier_id_seq', 3, true);



SELECT pg_catalog.setval('public.supplier_order_details_id_seq', 8, true);



SELECT pg_catalog.setval('public.supplier_product_id_seq', 13, true);



SELECT pg_catalog.setval('public.supply_order_id_seq', 7, true);



SELECT pg_catalog.setval('public.tutorials_seq', 1, false);


