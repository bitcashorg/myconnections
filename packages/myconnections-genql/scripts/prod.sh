#!/bin/sh
eval $(grep '^MYCONNECTIONS_PROD_API' ./.env) && \
eval $(grep '^MYCONNECTIONS_PROD_API_ADMIN_SECRET' ./.env) && \

echo "genql --endpoint $MYCONNECTIONS_PROD_API \
--output ./generated \
-H 'content-type: application/json' \
-H 'x-hasura-admin-secret: $MYCONNECTIONS_PROD_API_ADMIN_SECRET'" && \

genql --endpoint $MYCONNECTIONS_PROD_API \
--output ./generated \
-H 'content-type: application/json' \
-H "'x-hasura-admin-secret: $MYCONNECTIONS_PROD_API_ADMIN_SECRET'"