-- Insert data into addresses table
INSERT INTO public.addresses (id, address_line_one, address_line_two, apartment, city, country, created_at, province, updated_at)
VALUES ('3f8c43d2-4e29-4b07-a2fb-5b9805314eaa', '123 Main Street', 'Apt 1B', '1B', 'Anytown', 'USA', '2024-04-28 10:00:00', 'California', '2024-04-28 10:00:00');

INSERT INTO public.addresses (id, address_line_one, address_line_two, apartment, city, country, created_at, province, updated_at)
VALUES ('6b4f2a17-29fc-4c60-94dc-1d294d4b98b3', '456 Elm Avenue', '', '2B', 'Smallville', 'USA', '2024-04-28 10:05:00', 'Kansas', '2024-04-28 10:05:00');

INSERT INTO public.addresses (id, address_line_one, address_line_two, apartment, city, country, created_at, province, updated_at)
VALUES ('8e5d6d24-8a9e-4cf6-bc2e-f25a20be6f4a', '789 Oak Lane', 'Apt 3C', '3C', 'Metropolis', 'USA', '2024-04-28 10:10:00', 'New York', '2024-04-28 10:10:00');

INSERT INTO public.addresses (id, address_line_one, address_line_two, apartment, city, country, created_at, province, updated_at)
VALUES ('9e98fb1a-0ed5-415d-ae2f-1655d9a0ae14', '321 Pine Street', '', '2B', 'Springfield', 'USA', '2024-04-28 10:15:00', 'Illinois', '2024-04-28 10:15:00');

INSERT INTO public.addresses (id, address_line_one, address_line_two, apartment, city, country, created_at, province, updated_at)
VALUES ('c6a4a68b-02ad-4cc1-8fa9-85d03a276b54', '101 Maple Drive', '', '2B', 'Gotham City', 'USA', '2024-04-28 10:20:00', 'New Jersey', '2024-04-28 10:20:00');

INSERT INTO public.addresses (id, address_line_one, address_line_two, apartment, city, country, created_at, province, updated_at)
VALUES ('e003aa91-80c2-4ad4-bb44-c2cf19862b58', '555 Cedar Street', '', '2B', 'Lakeside', 'USA', '2024-04-28 10:25:00', 'Minnesota', '2024-04-28 10:25:00');

INSERT INTO public.addresses (id, address_line_one, address_line_two, apartment, city, country, created_at, province, updated_at)
VALUES ('ef5f3dc3-3a47-4fa2-af9c-1f31b2bf7862', '777 Birch Road', '', '2B', 'Rivertown', 'USA', '2024-04-28 10:30:00', 'Missouri', '2024-04-28 10:30:00');

INSERT INTO public.addresses (id, address_line_one, address_line_two, apartment, city, country, created_at, province, updated_at)
VALUES ('f3b4fd06-3681-4bc8-a114-84719ab51db8', '888 Willow Lane', 'Apt 2A', '2A', 'Sunnydale', 'USA', '2024-04-28 10:35:00', 'California', '2024-04-28 10:35:00');

INSERT INTO public.addresses (id, address_line_one, address_line_two, apartment, city, country, created_at, province, updated_at)
VALUES ('f4eac5c4-c3c4-4821-8fc0-f28a7b93c0b1', '999 Elm Street', '', '2B', 'Twin Peaks', 'USA', '2024-04-28 10:40:00', 'Washington', '2024-04-28 10:40:00');

INSERT INTO public.addresses (id, address_line_one, address_line_two, apartment, city, country, created_at, province, updated_at)
VALUES ('fdbd9879-470e-44af-8c70-1a4a032a66d9', '234 Oak Avenue', '', '2B', 'Springwood', 'USA', '2024-04-28 10:45:00', 'Ohio', '2024-04-28 10:45:00');

-- Insert data into customers table
INSERT INTO customers (id, created_at, date_of_birth, email, first_name, last_name, updated_at, username)
VALUES
    ('01234567-89ab-cdef-0123-456789abcdef', '2024-04-28 12:00:00', '1990-05-15', 'john.doe@example.com', 'John', 'Doe', '2024-04-28 12:00:00', 'johndoe'),
    ('12345678-9abc-def0-1234-56789abcdef0', '2024-04-28 12:01:00', '1985-08-20', 'jane.smith@example.com', 'Jane', 'Smith', '2024-04-28 12:01:00', 'janesmith'),
    ('23456789-abcd-ef01-2345-6789abcdef01', '2024-04-28 12:02:00', '1978-12-10', 'mike.jackson@example.com', 'Mike', 'Jackson', '2024-04-28 12:02:00', 'mikejackson'),
    ('3456789a-bcde-f012-3456-789abcdef012', '2024-04-28 12:03:00', '1995-03-25', 'sarah.brown@example.com', 'Sarah', 'Brown', '2024-04-28 12:03:00', 'sarahbrown'),
    ('456789ab-cdef-0123-4567-89abcdef0123', '2024-04-28 12:04:00', '1982-06-08', 'chris.wilson@example.com', 'Chris', 'Wilson', '2024-04-28 12:04:00', 'chriswilson'),
    ('56789abc-def0-1234-5678-9abcdef01234', '2024-04-28 12:05:00', '1993-09-30', 'emily.thomas@example.com', 'Emily', 'Thomas', '2024-04-28 12:05:00', 'emilythomas'),
    ('6789abcd-ef01-2345-6789-abcdef012345', '2024-04-28 12:06:00', '1987-02-14', 'david.johnson@example.com', 'David', 'Johnson', '2024-04-28 12:06:00', 'davidjohnson'),
    ('789abcde-f012-3456-789a-bcdef0123456', '2024-04-28 12:07:00', '1991-07-12', 'lisa.williams@example.com', 'Lisa', 'Williams', '2024-04-28 12:07:00', 'lisawilliams'),
    ('89abcdef-0123-4567-89ab-cdef01234567', '2024-04-28 12:08:00', '1976-11-05', 'mark.davis@example.com', 'Mark', 'Davis', '2024-04-28 12:08:00', 'markdavis'),
    ('9abcdef0-1234-5678-9abc-def012345678', '2024-04-28 12:09:00', '1989-04-18', 'amy.miller@example.com', 'Amy', 'Miller', '2024-04-28 12:09:00', 'amymiller');

-- Insert data into customer_addresses table
INSERT INTO public.customer_addresses(customer_id, address_id)
VALUES
    ('01234567-89ab-cdef-0123-456789abcdef', '3f8c43d2-4e29-4b07-a2fb-5b9805314eaa'),
    ('12345678-9abc-def0-1234-56789abcdef0', '6b4f2a17-29fc-4c60-94dc-1d294d4b98b3'),
    ('23456789-abcd-ef01-2345-6789abcdef01', '8e5d6d24-8a9e-4cf6-bc2e-f25a20be6f4a'),
    ('3456789a-bcde-f012-3456-789abcdef012', '9e98fb1a-0ed5-415d-ae2f-1655d9a0ae14'),
    ('456789ab-cdef-0123-4567-89abcdef0123', 'c6a4a68b-02ad-4cc1-8fa9-85d03a276b54'),
    ('56789abc-def0-1234-5678-9abcdef01234', 'e003aa91-80c2-4ad4-bb44-c2cf19862b58'),
    ('6789abcd-ef01-2345-6789-abcdef012345', 'ef5f3dc3-3a47-4fa2-af9c-1f31b2bf7862'),
    ('789abcde-f012-3456-789a-bcdef0123456', 'f3b4fd06-3681-4bc8-a114-84719ab51db8'),
    ('89abcdef-0123-4567-89ab-cdef01234567', 'f4eac5c4-c3c4-4821-8fc0-f28a7b93c0b1'),
    ('9abcdef0-1234-5678-9abc-def012345678', 'fdbd9879-470e-44af-8c70-1a4a032a66d9');
