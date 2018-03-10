// Connection to database and express router
var express = require('express');
var connect = require('../utils/sqlConnect');
var router = express.Router();


/* Video Data Rendered */
router.get('/', (req, res) => {


  connect.query('SELECT * FROM videos', (err, all) => {


    if (err) {
      throw err; console.log(err);
    } else {

    console.log(all);

      res.render('video', {
        title: 'video app',
        video: true,
        message : "Video App",
        videoData : all
        //videoDataT : resultT
      });
    }
  });


});




module.exports = router;
