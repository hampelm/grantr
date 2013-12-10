Grantr
======

A simple app for storing organziation <=> grant relationships

To start
--------

You'll probably have to do this:

    bundle install

    bundle exec rake db:create
    bundle exec rake db:schema:load

And make sure the settings in `config/database.yml` will work for you. There
are [some examples here](https://gist.github.com/erichurst/961978).

To run
------

    rails server


To import data
------

    rake organizations:import
    rake grants:import

New Way:

  rake import:grants[../path/to/data.csv]

Path should be relative to the Rails root.


Admin
-----

Head to `/admin`. You might need to make yerself an account.

License
-------

MIT.
