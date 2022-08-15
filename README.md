# Project Purple Cow
Counts when users login.

## Build with
- Ruby on Rails
- Bootstrap with Webpack

## Get Started
### Requirements
- Ruby 2.6
- Rails 6

### Clone
```bash
git clone https://github.com/mrgrantley/project_purple_cow.git
cd project_purple_cow
```
### Install and migrate db

```bash
bundle install
yarn install --check-files
rails db:migrate
```
### Start Server
To start rails server
```bash
rails server

### Test App
- In browser visit http://localhost:3000 or http://127.0.0.1:3000
- Sign Up (you will see the current count)
- Sign out
- Sign in with credentials you provided and you will add to the count (Every sign in hits the api)
