require! express
router = express.Router();

router.get '/', (req, res, next) ->
  res.render 'index', { title: 'LiveScript' };


module.exports = router;
