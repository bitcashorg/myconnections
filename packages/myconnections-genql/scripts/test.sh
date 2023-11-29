#!/bin/sh
eval $(grep '^MYCONNECTIONS_TEST_API' ./.env) && \
eval $(grep '^MYCONNECTIONS_TEST_API_ADMIN_SECRET' ./.env) && \

echo "genql --endpoint $MYCONNECTIONS_TEST_API \
--output ./generated \
-H 'content-type: application/json' \
-H 'x-hasura-admin-secret: $MYCONNECTIONS_TEST_API_ADMIN_SECRET'" && \

genql --endpoint $MYCONNECTIONS_TEST_API \
--output ./generated \
-H 'content-type: application/json' \
-H "'x-hasura-admin-secret: $MYCONNECTIONS_TEST_API_ADMIN_SECRET'"