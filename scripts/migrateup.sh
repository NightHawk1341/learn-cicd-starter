#!/bin/bash

if [ -f .env ]; then
    source .env
fi

echo "DATABASE_URL is: $DATABASE_URL" # Add this line for debugging


cd sql/schema
goose turso "$DATABASE_URL" up
