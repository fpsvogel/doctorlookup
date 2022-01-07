<h1 align="center">👩‍⚕️ Doctor Lookup 👨‍⚕️</h1>

Welcome to the [Doctor Lookup](https://doctorlookup.herokuapp.com/) codebase. Doctor Lookup provides a simple interface to the US Centers for Medicare & Medicaid's NPI (National Provider Identifier) API.

### Table of Contents

- [How I built it](#how-i-built-it)
- [Contributing](#contributing)
- [Requirements](#requirements)
- [Initial setup](#initial-setup)
- [License](#license)

## How I built it

I followed the same basic process that I followed in my recent "lightning apps," which I built in December 2021 for practicing my Rails testing skills. Here is that process, in a nutshell:

- Test my code as I write it, not as an afterthought. I used RSpec to write model and system specs.
- Use a minimalist CSS framework to speed up frontend development. This time I used [Pico](https://picocss.com/).
- Postpone the database if possible—which in this case it was, because the important features of a lookup tool don't require users or other persisted models. The user's search preferences are instead saved in the session cookie. If I were to expand the app further, I would add user accounts via [Sorcery](https://github.com/Sorcery/sorcery) so that users could bookmark or "star" individual search results.

I also did a few new things in this app:

- Mixed `ActiveModel::Model` into a PORO model to give it ActiveRecord-like behavior, so that I can validate input entered into the search form and show form errors, even though I'm not creating a record in the database.
- *Almost* solved a CSS problem that I occasionally run into, namely converting a hex color variable into RGB format (in order to set its opacity). The solution is [relative CSS colors](https://blog.jim-nielsen.com/2021/css-relative-colors), and it's coming soon to a browser near you.

For more on my December lightning apps, see my blog posts about them:

- [A "Pass the Story" collaborative writing game](https://fpsvogel.com/posts/2021/pass-the-story-collaborative-writing-game)
- [A StumbleUpon-style Wikipedia explorer](https://fpsvogel.com/posts/2021/wikipedia-explorer-discover-articles-like-stumbleupon)
- [An AI story writer](https://fpsvogel.com/posts/2021/gpt3-ai-story-writer)

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
