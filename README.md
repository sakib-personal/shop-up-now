# Shop Up Now
A basic E-Commerce application

# Build & Run Application
```
mvn clean install -DskipTests=true
docker-compose build
docker-compose down
docker-compose up -d
```

# Development Plans
1. Git repo creation
2. Spring boot initial basic source code preparation
3. Dockerize project -> Dockerfile & docker-compose.yaml setup
4. Datasource configuration -> PostgreSQL
5. All Entity creation
6. initial data dump into DB
7. Global exception handling
8. Custom response
9. all api development using tdd, layer architecture & logger

# Current project Issue
One Jackson bind issue is occurring due to Spring Data JPA setup which needs to be fixed first to proceed further development.

# Improvements
1. Use ``DTO`` & ``ResponseEntity`` with proper ``HTTP Status`` for handling API responses.
2. Add ``Global Exception`` Handling
3. Add ``Custom API Response``.
4. Ensure ``Richardson Maturity Model`` for Rest API.