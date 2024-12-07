# Website for BookFinder app

Demo is available at https://snap22.github.io/BookFinder-website/

### Overview
Site for creating pages for each user, and a table of owned books along with a search bar for finding specific books.

#### Data
Json files containing owned books for each user is located in [assets/books/json](assets/books/json) directory.

#### Pages 
Each user has its own directory in [content](content/) directory, containing `preview.md` for a table of books and `search.md` for searchbar.

#### Dependencies
For this project, [dot-org](https://themes.gohugo.io/themes/dot-org-hugo-theme/) theme was used along with [fuse.js](https://www.fusejs.io) library.

### Setup
#### Local
Install Hugo, npm & run `npm build`, then `npm start`.

#### Docker
Build the image `docker build -t hugo-site . ` then run it `docker run -p 1313:1313 hugo-site`

Access the website at http://localhost:1313/