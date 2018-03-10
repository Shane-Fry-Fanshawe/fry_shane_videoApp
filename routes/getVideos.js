// Connection to database and express router 
var express = require('express');
var connect = require('../utils/sqlConnect');
var router = express.Router();

/* Video Data Rendered */
router.get('/', (req, res) => {
  connect.query('SELECT * FROM videos', (err, result) => {
    if (err) {
      throw err; console.log(err);
    } else {
      console.log(result);

      res.render('video', {
        title: 'video app',
        video: true,
        message : "Video App",
        videoData : result
      });
    }
  });
});

module.exports = router;
