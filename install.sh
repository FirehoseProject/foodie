#!/bin/bash

psql foodie -f sql/seed.sql
psql foodie -f sql/users.sql
psql foodie -f sql/restaurants.sql
psql foodie -f sql/ratings.sql
psql foodie -f sql/menu_items.sql