-- Insert data into products table
INSERT INTO public.products (id, created_at, deleted_at, description, name, price, updated_at, product_category_id)
VALUES
    ('a6134898-7b4d-4e01-b0f6-c62fd1f95b6e', NOW(), NULL, 'Smartphone with high-resolution camera', 'Smartphone', 799.99, NOW(), 'a8a459cf-6a49-4a83-96a9-17e3c51c0e54'),
    ('c4ae057f-d7f1-4e91-a77b-2bb42d85bf79', NOW(), NULL, 'Laptop with powerful processor and graphics card', 'Laptop', 1299.99, NOW(), 'a8a459cf-6a49-4a83-96a9-17e3c51c0e54'),
    ('e3e2a5b9-4c72-4033-a2ef-5f4de0a1f7d1', NOW(), NULL, 'Wireless headphones with noise-cancellation feature', 'Wireless Headphones', 199.99, NOW(), 'a8a459cf-6a49-4a83-96a9-17e3c51c0e54'),
    ('e64a11e3-0b13-43dc-a9a9-9fb65813a826', NOW(), NULL, 'Cotton T-shirt with logo print', 'Logo T-shirt', 29.99, NOW(), 'b5311e1c-2f0b-4ba3-8fc2-fb8e482c73f5'),
    ('d8d222a6-46bc-4697-8cfc-50d01175fc02', NOW(), NULL, 'Denim jeans with slim fit design', 'Slim Fit Jeans', 49.99, NOW(), 'b5311e1c-2f0b-4ba3-8fc2-fb8e482c73f5'),
    ('f38a2961-8408-49ac-8847-76c524bcf4a3', NOW(), NULL, 'Best-selling novel by renowned author', 'Bestseller Novel', 15.99, NOW(), 'eb8b3ad4-0584-4f05-8bea-22f7d49964f7'),
    ('c9a3ab84-19af-4ba5-96c3-cccd726f6413', NOW(), NULL, 'Cookbook with various recipes for all occasions', 'Cookbook', 24.99, NOW(), 'eb8b3ad4-0584-4f05-8bea-22f7d49964f7'),
    ('b0ed9c6d-94b0-4608-9ebd-73e5984f4735', NOW(), NULL, 'Fictional thriller exploring the depths of human psyche', 'Thriller Novel', 19.99, NOW(), 'eb8b3ad4-0584-4f05-8bea-22f7d49964f7'),
    ('eafbb49b-0d7c-4d2f-9d95-bb49d835ac65', NOW(), NULL, 'Elegant dress for special occasions', 'Elegant Dress', 79.99, NOW(), 'b5311e1c-2f0b-4ba3-8fc2-fb8e482c73f5'),
    ('ff294651-0fb3-4c2c-98b3-b5b5d2be9360', NOW(), NULL, 'Stylish wristwatch with leather strap', 'Leather Wristwatch', 149.99, NOW(), 'b5311e1c-2f0b-4ba3-8fc2-fb8e482c73f5');
