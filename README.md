# Bill my Work #
### Initial requirements ###

    Rails 5.2.1
    Ruby 2.5.1
    PostgreSQL
    RSpec
    Capybara

### Install gems ###

Execute the gems installer

    $ bundle install

### Configure database ###

To connect to the database create the file <b>config/database.yml</b>.

For an easy creation, duplicate the `database.yml.example` file, and rename it.

```bash
cp config/database.yml.example config/database.yml
```

After configuring the database run (if the database has not been created)

    $ rails db:create

### Start Server ###

To run the Application locally.

At the root of the application run

    $ rails s