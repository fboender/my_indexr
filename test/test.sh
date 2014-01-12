#!/bin/sh

DB_HOST=localhost
DB_USER=root
DB_NAME=idx_tst

if [ -z "$DB_PASS" ]; then
    echo "Please set the DB_PASS environment variable"
    exit 1
fi

MY_CMD="mysql -u $DB_USER -p$DB_PASS -h $DB_HOST"
IDX_CMD="../src/my_indexr -u $DB_USER --pw-from-stdin -H $DB_HOST $DB_NAME"
TMP_FILE="tmp.$DB_NAME.sql"

# Generate database
$MY_CMD < indexes.sql

# Get SQL for dropping and recreating indices
echo "$DB_PASS" | $IDX_CMD --primary > $TMP_FILE

#cat $TMP_FILE

# Run SQL for dropping indices
grep -e "^DROP" $TMP_FILE | $MY_CMD $DB_NAME

# Run SQL for recreating indices
grep -E "^CREATE|^ALTER" $TMP_FILE | $MY_CMD $DB_NAME

# Cleanup
rm "tmp.$DB_NAME.sql"

