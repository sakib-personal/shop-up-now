-- Insert data into discounts table
INSERT INTO public.discounts (id, created_at, deleted_at, description, is_active, name, percent, updated_at, product_id)
VALUES
    ('c6aeeedb-f883-45c2-af2f-9b04a57de305', NOW(), NULL, '10% discount for smartphone', true, 'Smartphone Discount', 10.0, NOW(), 'a6134898-7b4d-4e01-b0f6-c62fd1f95b6e'),
    ('b90b4372-8320-4f89-b86c-78f253d7d497', NOW(), NULL, '20% discount for laptop', true, 'Laptop Discount', 20.0, NOW(), 'c4ae057f-d7f1-4e91-a77b-2bb42d85bf79'),
    ('b8506d08-d125-42fc-960f-c5b44a994f52', NOW(), NULL, '15% discount for wireless headphones', true, 'Headphones Discount', 15.0, NOW(), 'e3e2a5b9-4c72-4033-a2ef-5f4de0a1f7d1'),
    ('eb47ec1f-84cb-4b16-9e6f-d62d1603c2b6', NOW(), NULL, '25% discount for logo T-shirt', true, 'T-shirt Discount', 25.0, NOW(), 'e64a11e3-0b13-43dc-a9a9-9fb65813a826'),
    ('e89f8b98-8109-42d6-b38e-4a481121d40e', NOW(), NULL, '30% discount for slim fit jeans', true, 'Jeans Discount', 30.0, NOW(), 'd8d222a6-46bc-4697-8cfc-50d01175fc02'),
    ('b527a9af-0893-4c89-906a-3c77473c2e56', NOW(), NULL, '5% discount for bestseller novel', true, 'Novel Discount', 5.0, NOW(), 'f38a2961-8408-49ac-8847-76c524bcf4a3'),
    ('fb893854-60aa-4047-bb17-1a7f072eae03', NOW(), NULL, '15% discount for cookbook', true, 'Cookbook Discount', 15.0, NOW(), 'c9a3ab84-19af-4ba5-96c3-cccd726f6413'),
    ('ec1f7486-ef76-448d-b27d-9c7e738be046', NOW(), NULL, '10% discount for thriller novel', true, 'Thriller Discount', 10.0, NOW(), 'b0ed9c6d-94b0-4608-9ebd-73e5984f4735'),
    ('b44d886d-17fc-4cf7-85f4-4c6ce1464e32', NOW(), NULL, '20% discount for elegant dress', true, 'Dress Discount', 20.0, NOW(), 'eafbb49b-0d7c-4d2f-9d95-bb49d835ac65'),
    ('c66c5b7e-bf5e-4983-9d9c-31ff2c1f1a77', NOW(), NULL, '10% discount for leather wristwatch', true, 'Wristwatch Discount', 10.0, NOW(), 'ff294651-0fb3-4c2c-98b3-b5b5d2be9360');