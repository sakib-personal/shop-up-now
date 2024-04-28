-- Insert data into inventories table
INSERT INTO public.inventories (id, created_at, deleted_at, quantity, updated_at, product_id)
VALUES
    ('b8f98d8c-9b6b-4767-9187-1998140fc92a', NOW(), NULL, 100, NOW(), 'a6134898-7b4d-4e01-b0f6-c62fd1f95b6e'),
    ('f504a826-80a6-4b15-9a13-0848a87c95d4', NOW(), NULL, 50, NOW(), 'c4ae057f-d7f1-4e91-a77b-2bb42d85bf79'),
    ('d29413a5-ae34-44e1-89e2-fce800e85df8', NOW(), NULL, 80, NOW(), 'e3e2a5b9-4c72-4033-a2ef-5f4de0a1f7d1'),
    ('dd7b69fc-860b-4e18-9f67-1b5e3836b53c', NOW(), NULL, 120, NOW(), 'e64a11e3-0b13-43dc-a9a9-9fb65813a826'),
    ('d29b15b3-d4dc-46db-aece-e391b058d6dc', NOW(), NULL, 70, NOW(), 'd8d222a6-46bc-4697-8cfc-50d01175fc02'),
    ('e8bc00fc-bfa0-4cc4-8d84-fc8e6efb30dc', NOW(), NULL, 30, NOW(), 'f38a2961-8408-49ac-8847-76c524bcf4a3'),
    ('bde67055-85e3-4f9c-bd32-72b8f0c27f1e', NOW(), NULL, 60, NOW(), 'c9a3ab84-19af-4ba5-96c3-cccd726f6413'),
    ('c09e62f3-d69e-4e54-af75-c8f5b2aa97e3', NOW(), NULL, 90, NOW(), 'b0ed9c6d-94b0-4608-9ebd-73e5984f4735'),
    ('c08c3ae0-2025-485f-93b4-1b1d02402d77', NOW(), NULL, 40, NOW(), 'eafbb49b-0d7c-4d2f-9d95-bb49d835ac65'),
    ('b5b41c27-139e-40e0-b1c2-1c45a229f6f3', NOW(), NULL, 20, NOW(), 'ff294651-0fb3-4c2c-98b3-b5b5d2be9360');