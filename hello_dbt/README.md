Welcome to your new dbt project!

### Using the starter project

Install dependencies via Python Poetry
`poetry install`

Starting local Postgres container
`make local-db`


Try running the following commands after cd into hello_dbt:
- export DBT_PASSWORD="mysecretpassword"
- poetry run dbt deps (Install dbt dependencies)
- poetry run dbt seed
- poetry run dbt run
- poetry run dbt test
- poetry run dbt build (run then test, step by step)


### TODO
- Try using duckdb instead to eliminate the need for postgres container, sqlite also works but limited to 1 thread


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
