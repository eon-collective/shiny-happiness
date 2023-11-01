```bash
./shiny-happiness
├── analyses
│   ├── .gitkeep
│   ├── order_by_day.sql
│   └── total_revenue.sql
├── dbt_project.yml
├── etc
│   └── image
│       ├── dbt-dag.png
│       └── project_tree_structure.md
├── .github
│   └── workflows
│       ├── ci_pipe.yml
│       ├── linting.yml
│       └── project_evaluator.yml
├── .gitignore
├── LICENSE
├── macros
│   ├── cents_to_dollars.sql
│   ├── clean_stale_models.sql
│   ├── .gitkeep
│   ├── grant_select.sql
│   ├── limit_date_in_dev.sql
│   └── log_results.sql
├── models
│   ├── marts
│   │   ├── core
│   │   │   ├── core.yml
│   │   │   ├── dim_customers.sql
│   │   │   └── fct_orders.sql
│   │   └── intermediate
│   │       ├── intermidiate.yml
│   │       └── int_orders_pivoted.sql
│   └── staging
│       ├── jaffle_shop
│       │   ├── jaffle_shop.md
│       │   ├── src_jaffle_shop.yml
│       │   ├── stg_customers.sql
│       │   ├── stg_jaffle_shop.yml
│       │   └── stg_orders.sql
│       └── stripe
│           ├── src_stripe.yml
│           ├── stg_payments.sql
│           └── stg_stripe.yml
├── packages.yml
├── README.md
├── seeds
│   ├── dbt_project_evaluator_exceptions.csv
│   ├── employees.csv
│   └── .gitkeep
├── snapshots
│   ├── .gitkeep
│   └── mock_orders.sql
└── tests
    ├── assert_positive_total_for_payments.sql
    └── .gitkeep

```