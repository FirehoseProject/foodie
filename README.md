# Foodie Database

The true power of SQL isn't apparent, unless you're working with a database with tens of thousands (or more) records and multiple tables.

This is pretty typical in real-world scenarios for web applications that are maintained by a full team of developers.  Companies will allow developers to query the data, but seldom share this data.

The foodie database is a database that mirrors real world examples and will allow you to run queries against it, similar to what you'd might need to do on the job.

This project includes random data generation using random numbers and the `faker` gem to populate this with sample data.  While things like the restaurant names, and descriptions will have silly values, things like multiple star ratings, and varying priced menu items will give you a feel for what a typical database is at a real company.

## Table Structure

The file `sql/seed.sql` includes the table structure for the database.  For easier reference this is documented down below.

### Restaurants

| field  | type  |
|---|---|
| id  | SERIAL PRIMARY KEY NOT NULL  |
| name  |  VARCHAR(255) |
| description  | VARCHAR  |
| user_id  | INT  |
|  cost | INT  |
|  vegetarian_friendly | BOOLEAN  |

### Users

| field  | type  |
|---|---|
| id  | SERIAL PRIMARY KEY NOT NULL  |
| email  |  VARCHAR(255) |

### Ratings

| field  | type  |
|---|---|
| id  | SERIAL PRIMARY KEY NOT NULL  |
| stars  |  INT |
| user_id  | INT  |
| restaurant_id  | INT  |


### Menu Items

| field  | type  |
|---|---|
| id  | SERIAL PRIMARY KEY NOT NULL  |
| name  |  VARCHAR(255) |
| description  | VARCHAR  |
| cost  | DECIMAL  |
| restaurant_id  | INT  |


## Installation

First clone the project into your environment:

```
git clone git@github.com:FirehoseProject/foodie.git
```

The SQL files are a little over 85 megabytes, so it may take a bit of time for the command to finish.

The `install.sh` script will execute the five different `sql` scripts required to populate the database.

```
sh install.sh
```

It will take several minutes to complete.

## License

The Foodie database is released under the [MIT License](http://www.opensource.org/licenses/MIT).