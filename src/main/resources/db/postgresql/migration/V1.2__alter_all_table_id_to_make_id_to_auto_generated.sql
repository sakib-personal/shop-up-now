ALTER TABLE addresses ALTER COLUMN id SET DEFAULT gen_random_uuid();
ALTER TABLE carts ALTER COLUMN id SET DEFAULT gen_random_uuid();
ALTER TABLE customers ALTER COLUMN id SET DEFAULT gen_random_uuid();
ALTER TABLE discounts ALTER COLUMN id SET DEFAULT gen_random_uuid();
ALTER TABLE inventories ALTER COLUMN id SET DEFAULT gen_random_uuid();
ALTER TABLE orders ALTER COLUMN id SET DEFAULT gen_random_uuid();
ALTER TABLE order_items ALTER COLUMN id SET DEFAULT gen_random_uuid();
ALTER TABLE payments ALTER COLUMN id SET DEFAULT gen_random_uuid();
ALTER TABLE products ALTER COLUMN id SET DEFAULT gen_random_uuid();
ALTER TABLE product_categories ALTER COLUMN id SET DEFAULT gen_random_uuid();
ALTER TABLE shipments ALTER COLUMN id SET DEFAULT gen_random_uuid();
ALTER TABLE wishlists ALTER COLUMN id SET DEFAULT gen_random_uuid();