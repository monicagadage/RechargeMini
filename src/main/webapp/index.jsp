
<!DOCTYPE html>
<!-- saved from url=(0063)file:///C:/Users/vshadmin/Desktop/UI.html?Phone+Number=&AMOUNT= -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MOBILE RECHARGE APPLICATION</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
    box-sizing: border-box;
}

body {
  margin: 0;
}

/* Style the header */
.header {
    background-color: #f1f1f1;
    padding: 20px;
    text-align: center;
}

/* Style the top navigation bar */
.topnav {
    overflow: hidden;
    background-color: #333;
}

/* Style the topnav links */
.topnav a {
    float: left;
    display: block;
    color: #f2f2f2;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

/* Change color on hover */
.topnav a:hover {
    background-color: #ddd;
    color: black;
}

/* Create three equal columns that floats next to each other */
.column {
    float: left;
    width: 33.33%;
    padding: 15px;
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}

/*Css3 button properties*/
.myButton {
  background-color:#44c767;
  -moz-border-radius:28px;
  -webkit-border-radius:28px;
  border-radius:28px;
  border:1px solid #18ab29;
  display:inline-block;
  cursor:pointer;
  color:#ffffff;
  font-family:Arial;
  font-size:17px;
  padding:16px 31px;
  text-decoration:none;
  text-shadow:0px 1px 0px #2f6627;
}
.myButton:hover {
  background-color:#5cbf2a;
}
.myButton:active {
  position:relative;
  top:1px;
}

/* Responsive layout - makes the three columns stack on top of each other instead of next to each other */
@media screen and (max-width:600px) {
    .column {
        width: 100%;
    }
}
</style>
</head>
<body>
<div class="header">
  <marquee><h1>MOBILE RECHARGE APPLICATION</h1></marquee>
</div>

<form action="confrim">
<div class="row">
  <div class="column">
    <h2>MOBILE NO </h2>
   <input type="text" name="phoneNo"><br>
  </div>
  <div class="column">
    <h2>AMOUNT</h2>
    <input type="text" name="amount"><br><br><br><br><br>
    <input type="submit" value="Submit">
  </div>
  <div class="column">
   <h2>Operator</h2>
    <select name="operator">
  <option value="airtel">airtel</option>
  <option value="vodafone">vodafone</option>
  <option value="bsnl">bsnl</option>
  <option value="idea">idea</option>
  <option value="jio">jio</option>
</select>
  </div>
  </div>
</form>



</body></html>