# How to run

Make sure you have the following things installed and ready to go:

- Ruby (RVM) (https://rvm.io/)
- SQLite3 
- Yarn (https://classic.yarnpkg.com/en/docs/install#debian-stable)
- Nodel.js ^

Navigate into your `/ScuffedMetalArchives/SMAC` folder and execute `bundle install`, when this is done execute `yarn install --check-files`. To get the tables correct, execute `rails db:migrate`.

After that you can start the rails server via `rails s`.