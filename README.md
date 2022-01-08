<h1 align="center">👩‍⚕️ Doctor Lookup 👨‍⚕️</h1>

Welcome to the [Doctor Lookup](https://doctorlookup.herokuapp.com/) codebase. Doctor Lookup is a tool for finding doctors in the U.S. by name, state, and/or specialization. It uses the [NPI API](https://npiregistry.cms.hhs.gov/registry/help-api) by the U.S. Centers for Medicare & Medicaid Services.

### Table of Contents

- [Why this is on my GitHub portfolio](#why-this-is-on-my-github-portfolio)
- [Contributing](#contributing)
- [Requirements](#requirements)
- [Initial setup](#initial-setup)
- [License](#license)

## Why this is on my GitHub portfolio

I followed the same basic process that I followed in a trio of little apps that I built in December 2021 for Rails testing practice. Here is that process, in a nutshell:

- Test my code as I write it, not as an afterthought. I used RSpec to write model and system specs.
- Use a minimalist CSS framework to speed up frontend development. This time I used [Pico](https://picocss.com/).
- Avoid using the database if it's not necessary, just to keep things simple. In this case I did forgo the database, because the important features of a lookup tool don't require users or other persisted models. (The search results are shown dynamically with Turbo Streams, without the need to store them between requests.) If I were to expand the app further, I would add user accounts to improve the starring (favorites) feature. Currently, a user can star a search result to refer back to it later, but the session cookie (where starred results are saved) has a storage limit. Another downside is that the user might delete their starred results by accident if they happen to delete their cookies.

For more on how I built this app, see my blog post [Doctor Lookup: Rails lightning app #4](https://fpsvogel.com/posts/2022/doctor-lookup-health-provider-search-tool).

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
