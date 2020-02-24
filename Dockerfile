FROM hasura/graphql-engine:v1.1.0

# Enable the console
ENV HASURA_GRAPHQL_ENABLE_CONSOLE=true

# Change $DATABASE_URL to your heroku postgres URL if you're not using
# the primary postgres instance in your app
CMD graphql-engine \
    --database-url postgres://nbdxjjjzafwrei:8583789c29dcbf6cfb4433e9058de60f46dfc94ee8f25062ec76372355e2886a@ec2-34-192-30-15.compute-1.amazonaws.com:5432/dfd5765udojott \
    serve \
    ##--server-port 5432

## Comment the command above and use the command below to
## enable an access-key and an auth-hook
## Recommended that you set the access-key as a environment variable in heroku
#CMD graphql-engine \
#    --database-url $DATABASE_URL \
#    serve \
#    --server-port $PORT \
#    --access-key XXXXX \
#    --auth-hook https://myapp.com/hasura-webhook 
#
# Console can be enable/disabled by the env var HASURA_GRAPHQL_ENABLE_CONSOLE
