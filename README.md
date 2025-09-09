# dbt_databricks_project

A modern data pipeline project using [dbt](https://www.getdbt.com/) and [Databricks](https://www.databricks.com/).

---

## 🚀 Quickstart

1. **Install dbt**  
   Follow the [dbt installation guide](https://docs.getdbt.com/docs/installation).

2. **Configure your profile**  
   Edit [`profiles.yml`](profiles.yml) or use [`profiles_demo.yml`](profiles_demo.yml) for environment variable-based secrets.

3. **Run dbt commands**
   ```sh
   dbt deps      # Install dependencies
   dbt seed      # Load seed data
   dbt run       # Build models
   dbt test      # Run tests
   dbt docs generate && dbt docs serve  # Generate and view docs
   ```

---

## 🗂️ Project Structure

```
dbt_databricks_project/
├── analyses/         # Custom analysis SQL files
├── logs/             # dbt logs
├── macros/           # Custom Jinja macros
├── models/           # Data models
│   ├── bronze/       # Raw ingested data
│   ├── silver/       # Cleaned/transformed data
│   ├── gold/         # Aggregated/curated data
│   └── source/       # Source definitions
├── seeds/            # CSV seed data
├── snapshots/        # Snapshots for slowly changing dimensions
├── target/           # dbt build artifacts
├── dbt_project.yml   # Project config
├── profiles.yml      # Connection profile
└── README.md         # Project documentation
```

---

## 🔑 Connection Profile Example

See [`profiles_demo.yml`](profiles_demo.yml):

```yaml
dbt_databricks:
  outputs:
    dev:
      catalog: <your_catalog>
      host: <your_databricks_host>
      http_path: <your_http_path>
      schema: default
      threads: 1
      token: "{{ env_var('DATABRICKS_TOKEN') }}"
      type: databricks
  target: dev
```

---

## 📦 Models Overview

- **Bronze Layer:** Raw data from sources ([bronze_orders.sql](models/bronze/bronze_orders.sql), [bronze_customers.sql](models/bronze/bronze_customers.sql))
- **Silver Layer:** Cleaned and transformed data
- **Gold Layer:** Business-level aggregates

Model configs are managed in [`dbt_project.yml`](dbt_project.yml) and YAML property files.

---

## 🛠️ Custom Macros

Reusable Jinja macros are in [`macros/generate_schema.sql`](macros/generate_schema.sql).

---

## 📚 Resources

- [dbt Documentation](https://docs.getdbt.com/docs/introduction)
- [Databricks SQL](https://docs.databricks.com/sql/index.html)
- [dbt Community](https://community.getdbt.com/)

---

## 🤝 Contributing

Pull requests and issues are welcome! Please follow [dbt best practices](https://docs.getdbt.com/docs/guides/best-practices).

---

## 📝 License

This project is licensed under the MIT
