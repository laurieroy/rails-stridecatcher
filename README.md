# Stridecatcher - WIP

[(demo current version)](https://laurie-stridecatcher.herokuapp.com)

This is a Strava clone, built following Steve Polito's [tutorial](https://www.railscodealong.com). He uses BS4, Travis-CI for the builds, and mini test.

Ruby(2.6.3) on Rails (6.1.3.2) using PG (13) for the db. UI is Bootstrap 5.0, for now. I'm using RSpec / FactoryBot for testing.

Thanks to Steve Polito for the tutorial and Chris Oliver for the [Procfile](https://github.com/excid3/jumpstart/blob/master/Procfile.dev).

## To use locally:

- Clone the repository onto your local machine

```
git clone git@github.com:laurieroy/rails-stridecatcher.git
```

- CD into the directory

```
cd rails-stridecatcher
```

- Run `bundle install` to install the gems

```
bundle
```

- Run `rails db:create` to create the dbs, migration file
- Run `rails db:migrate` to create the tables

```
rails db:create && rails db:migrate
```

- Run `rails s` to Start the server, browse to `localhost:3000`.

```
rails s
```

- (ctl - c to stop the server)

If installing locally, can run using foreman to run any procfiles:

Install [Foreman](https://github.com/ddollar/foreman) globally on machine, (will run on 5000 instead of 3000). This is used for automatic db updates on release.

```
foreman start
```
