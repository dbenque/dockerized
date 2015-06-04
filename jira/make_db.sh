gosu postgres postgres --single <<- EOSQL
		CREATE USER jiradbuser;
		CREATE DATABASE jiradb;
		GRANT ALL PRIVILEGES ON DATABASE jiradb TO jiradbuser;
EOSQL
