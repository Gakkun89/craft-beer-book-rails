Craft Beer Book Project
## An updated version of original craft-beer-book which was built on Sinatra
Overview:
Build a basic log book of craft beers I have tried with info
about the beers along with images which will be scraped online.

Basic functionality:
- User can add beers by name (searched on beeradvocate.com and scraped)
- Manual entry for beers not on BA
- Scrape will pull in facts and image
- User can list all beers in the book
- Will all be saved to Postgres
- Will be a basic webapp in Rails

Tech:
- Ruby
- Rails for web app
- postgreSQL for DB
- Nokogiri for parsing
- ActiveRecord for DB management
- ActiveStorage for user image upload
