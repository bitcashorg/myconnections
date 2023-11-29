#!/bin/sh
eval $(grep '^MYCONNECTIONS_LOCAL_API' ./.env) && \
eval $(grep '^MYCONNECTIONS_LOCAL_API_ADMIN_SECRET' ./.env) && \

echo "genql --endpoint $MYCONNECTIONS_LOCAL_API \
--output ./generated \
-H 'content-type: application/json' \
-H 'x-hasura-admin-secret: $MYCONNECTIONS_LOCAL_API_ADMIN_SECRET'" && \

genql --endpoint $MYCONNECTIONS_LOCAL_API \
--output ./generated \
-H 'content-type: application/json' \
-H "'x-hasura-admin-secret: $MYCONNECTIONS_LOCAL_API_ADMIN_SECRET'"