.PHONY: data-gen
data-gen:
	poetry run generate --input_json_schema_path=hello_dbt/mock/people.json \
		--output_file_format=csv --output_path=hello_dbt/seeds

.PHONY: local-db
local-db:
	docker run --name some-postgres -e POSTGRES_PASSWORD=mysecretpassword -d -p 5432:5432 postgres
