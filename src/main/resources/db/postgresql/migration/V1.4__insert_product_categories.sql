-- Insert data into product_categories table
INSERT INTO public.product_categories (id, category_name, created_at, deleted_at, description, updated_at)
VALUES
    ('a8a459cf-6a49-4a83-96a9-17e3c51c0e54', 'Electronics', NOW(), NULL, 'Category for electronic products', NOW()),
    ('b5311e1c-2f0b-4ba3-8fc2-fb8e482c73f5', 'Clothing', NOW(), NULL, 'Category for clothing items', NOW()),
    ('eb8b3ad4-0584-4f05-8bea-22f7d49964f7', 'Books', NOW(), NULL, 'Category for books', NOW());