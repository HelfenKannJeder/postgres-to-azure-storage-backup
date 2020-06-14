#!/usr/bin/env sh
echo "$PGPASSWORD" > ~/.pgpass
pg_dumpall -f $PGDATABASE.sql --database=$PGDATABASE
ls -lh $PGDATABASE.sql
azcopy copy $PGDATABASE.sql $AZCOPY_DESTINATION_URL/$PGDATABASE.sql$AZCOPY_SAS_TOKEN
