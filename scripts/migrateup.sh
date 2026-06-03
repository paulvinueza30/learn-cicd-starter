#!/bin/bash

if [ -f .env ]; then
    source .env
fi

: "${DATABASE_URL:?DATABASE_URL is required}"

cd sql/schema
goose turso "$DATABASE_URL" up
