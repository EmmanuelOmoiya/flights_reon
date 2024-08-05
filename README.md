# Flights-Recon
This is an api that records reviews of different airlines. It provides users with the ability to rate and comment on a particular airline based on their flight experience.

## Setup

```bash
git clone git@github.com:EmmanuelOmoiya/flights_recon.git
bundle install
yarn install

rails db:create
rails db:migrate

rails s
```

Use the provided Procfiles to run webpack and rails together, like `overmind start -f Procfile.dev`

1. **`Procfile.dev`**: Uses the [webpack-dev-server](https://webpack.js.org/configuration/dev-server/). This will proxy asset requests to the webpack-dev-server except for a few files: the `manifest.json` and the `server-bundle.js` which are in the standard `public/webpack/development` folder.
2. **`Procfile.dev-static`**: Uses the standard files in the `public/webpack/development` folder. Note, the standard webpack config in `/config/webpack` outputs an array which builds both the client and server bundles.


## Routes
```sh
 root GET    /       pages#index
api_v1_airlines GET    /api/v1/airlines(.format) api/v1/airlines#index 
POST   /api/v1/airlines(.:format) api/v1/airlines#create 
new_api_v1_airline GET    /api/v1/airlines/new(.:format) api/v1/airlines#new 
edit_api_v1_airline GET    /api/v1/airlines/:slug/edit(.:format) api/v1/airlines#edit 
api_v1_airline GET    /api/v1/airlines/:slug(.:format) api/v1/airlines#show 
PATCH  /api/v1/airlines/:slug(.:format) api/v1/airlines#update 
PUT    /api/v1/airlines/:slug(.:format) api/v1/airlines#update
DELETE /api/v1/airlines/:slug(.:format) api/v1/airlines#destroy 
api_v1_reviews POST   /api/v1/reviews(.:format) api/v1/reviews#create 
api_v1_review DELETE /api/v1/reviews/:id(.:format) api/v1/reviews#destroy
```

## Key features

1. `shakpacker` v8! (see explanation of the switch at [rails/webpacker](https://github.com/rails/webpacker)).
2. Webpack configuration for the server bundle is based on the rails/webpacker configuration for the client files.
3. TypeScript
4. CSS Modules

