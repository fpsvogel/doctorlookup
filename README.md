<h1 align="center">👩‍⚕️ Doctor Lookup 👨‍⚕️</h1>

Welcome to the Doctor Lookup codebase. Doctor Lookup is a tool for finding doctors in the U.S. by name, state, and/or specialization. It uses the [NPI API](https://npiregistry.cms.hhs.gov/registry/help-api) by the U.S. Centers for Medicare & Medicaid Services.

This the last of four "lightning apps" that I built for practice, with a focus on Rails testing. For links to the other apps, and for more on how I built this one, see my blog post [Doctor Lookup: Rails lightning app #4](https://fpsvogel.com/posts/2022/doctor-lookup-health-provider-search-tool).

### Table of Contents

- [Why this is on my GitHub portfolio](#why-this-is-on-my-github-portfolio)
- [Contributing](#contributing)
- [Requirements](#requirements)
- [Initial setup](#initial-setup)
- [License](#license)

## Why this is on my GitHub portfolio

As with my previous lightning apps, I kept good habits at the front of my mind as I built Doctor Lookup. Here's the process that I followed, in a nutshell:

- Test my code as I write it, not as an afterthought. I used RSpec and wrote model and system specs.
- Use a minimalist CSS framework to speed up frontend development. This time I used [Pico](https://picocss.com/).
- Avoid using the database if it's not necessary, just to keep things simple. In this case I did forgo the database, because the important features of a lookup tool don't require users or other persisted models. (The search results are shown dynamically with Turbo Streams, without the need to store them between requests.)

For more, see my blog post [Doctor Lookup: Rails lightning app #4](https://fpsvogel.com/posts/2022/doctor-lookup-health-provider-search-tool).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/fpsvogel/doctorlookup.

## Requirements

- Ruby 3+
- Node.js 14+
- PostgreSQL 9.3+

## Initial setup

- Checkout the doctorlookup git tree from Github:
    ```sh
    $ git clone git://github.com/fpsvogel/doctorlookup.git
    $ cd doctorlookup
    doctorlookup$
    ```
- Run Bundler to install gems needed by the project:
    ```sh
    doctorlookup$ bundle
    ```
- If this is your first time using PostgreSQL, log in to PostgreSQL and create a user:
    ```
    $ psql -U postgres
    postgres=# create role "your_username" login createdb
    postgres=# exit
    ```
- Create the development and test databases:
    ```sh
    doctorlookup$ rails db:create
    ```
  - If you see an error about peer authentication, then you need to [change one or two settings in pg_hba.conf](https://stackoverflow.com/questions/18664074/getting-error-peer-authentication-failed-for-user-postgres-when-trying-to-ge), then try creating the databases again.
- Load the schema into the new database:
    ```sh
    doctorlookup$ rails db:schema:load
    ```

## License

Distributed under the [MIT License](https://opensource.org/licenses/MIT).
