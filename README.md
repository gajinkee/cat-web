# README

- Ruby version

- System dependencies

- Configuration

- Database creation
  `rails db:migrate`
  or
  `rake db:migrate`

- Database initialization
  rails db:create

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions
  run the script to handle compile
  use git bash or WSL if on windows
  `render-build.sh`
  `bin/dev` or `rails s` should start the server

- ...
<h1>Overall</h1>

1. react (typescript) front end + rails 7 backend (ie dont use erb templating engine)
2. use postgre database to integrate with render on deploy easier
3. MUI component library best (bootstrap was easier but for this assignment MUI better)
4. MVC (Model -> pgsql , View -> react,typescript , Controller -> Ruby )

Problems:

1. wat version of rails to use...webpacker works for rails 6 but rails 7 uses importmapped hotwire or smt
2. shakapacker replaces webpacker tho... (soln: Just use webpacker. Upgrade to shakapaker possibly in future)
3. typescript needed for functionality so cant rely on esb which I already created a project on
   3a. Restart project from scratch with above implementations and implement react for the front

Solutions found:

1. rails 7 with react is the way
2. use css-bundling (the default options for many things where wrong out-the-box)
3. react frontend

Todo

1. Commenter is incorrect. Shud reflect current user
2. Tags for each post (major task, impt!)
   2b. Search function for posts (optional)
3. Switch to MUI (optional. Bootstrap is fine)
4. Redesign the page
5. github workflow needs to be edited to work (default commands are wrong)
