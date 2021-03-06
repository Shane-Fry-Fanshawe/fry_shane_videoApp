var express = require('express');
var connect = require('../utils/sqlConnect');
var router = express.Router();

/* GET home page. */
router.get('/', (req, res) => {
  connect.query('SELECT * FROM videos', (err, result) => {
    if (err) {
      throw err; console.log(err);
    } else {
      console.log(result);

      res.render('cars', {
        title: 'Mini Cars',
        message : "Video App",
        videoData : result
      });
    }
  });
});

module.exports = router;
