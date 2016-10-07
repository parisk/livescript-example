require! express
require! path

require! './routes/index': routes

port = parseInt process.env.PORT || 3000

absolutePath = (relativePath) ->
  path.join(__dirname, relativePath);

app = express!
  ..set 'views', ('views' |> absolutePath)
  ..set 'view engine', 'pug'
  ..use '/', routes
  ..use ('public' |> absolutePath |> express.static)
  ..listen port
