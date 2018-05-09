<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
<style type="text/css">

$head-font = 'Montserrat', sans-serif
$main-font = 'Open Sans', sans-serif
$main-color = rgba(76,175,80,1)
$error-color = rgba(244,67,54,1)

animated(name, duration)
  -webkit-animation name duration
  -moz-animation name duration
  -o-animation name duration
  animation name duration
	
borderRadius(r)
	-webkit-border-radius r
	-moz-border-radius r
	border-radius r

transformation(s)
		-ms-transform scale(s, s)
		-webkit-transform scale(s, s)
		transform scale(s, s)
	
transitions(t)
	-webkit-transition all t ease-in-out
	transition all t ease-in-out
	
body
	overflow hidden
	background-color: #e2e1e0 	
	background-image url("https://www.toptal.com/designers/subtlepatterns/patterns/topography.png")
	background-size 35%
	
// .background
//  	position absolute
//  	width 100%
//  	height 100%
//  	top 0
//  	left 0  
//  	//-webkit-filter blur(5px)
//  	//filter blur(5px)
//  	background-image url("https://www.toptal.com/designers/subtlepatterns/patterns/topography.png")
//  	// &::after
//  	// 	content ""
//  	// 	position absolute
//  	// 	height 100%
//  	// 	width 100%
//  	// 	top 0
//  	// 	left 0
//  	// 	background-color rgba(0, 0, 0, .2)

.modalbox
	&.success,
	&.error
		box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
		transition: all 0.3s cubic-bezier(.25,.8,.25,1);
		borderRadius(2px)
		margin-top 10%
		background white
		padding 25px 25px 15px
		//border 1px solid #ddd
		text-align center
		&.animate
			//animated(plunge, 1s)
			.icon
				animated(fall-in, .75s)
				box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
				//animation-delay .6s
		h1
			font-family $head-font
		p
			font-family $main-font
		button,
		button:active,
		button:focus
			transitions(.1s)
			borderRadius(30px)
			margin-top 15px
			width 80%
			background transparent
			color $main-color
			border-color $main-color
			outline none
			&:hover
				color white
				background $main-color
				border-color transparent
		.icon
			position relative
			margin 0 auto
			margin-top -75px
			background $main-color
			height 100px
			width 100px
			border-radius 50%
			span
				postion absolute
				font-size 4em
				color white
				text-align center
				padding-top 20px
	&.error
		button,
		button:active,
		button:focus
			color $error-color
			border-color $error-color
			&:hover
				color white
				background $error-color
		.icon
			background $error-color
			span
				padding-top 25px
		
.center
	float none
	margin-left auto
	margin-right auto	
	
	.change 
		clearn both
		display block
		font-size 10px
		color #ccc
		margin-top 10px
	
	/* stupid browser compat. smh */
@-webkit-keyframes fall-in
	0%
		transformation(3)
		opacity 0
	50%
		transformation(1)
		opacity 1
	60%
		transformation(1.1)
	100%
		transformation(1)
		
@-moz-keyframes fall-in
	0%
		transformation(3)
		opacity 0
	50%
		transformation(1)
		opacity 1
	60%
		transformation(1.1)
	100%
		transformation(1)

@-o-keyframes fall-in
	0%
		transformation(3)
		opacity 0
	50%
		transformation(1)
		opacity 1
	60%
		transformation(1.1)
	100%
		transformation(1)

@keyframes fall-in
	0%
		transformation(3)
		opacity 0
	50%
		transformation(1)
		opacity 1
	60%
		transformation(1.1)
	100%
		transformation(1)

// currently not using plunge.
@-webkit-keyframes plunge
	0%
		margin-top -100%
	100%
		margin-top 25%
		
@-moz-keyframes plunge
	0%
		margin-top -100%
	100%
		margin-top 25%

@-o-keyframes plunge
	0%
		margin-top -100%
	100%
		margin-top 25%

@keyframes plunge
	0%
		margin-top -100%
	100%
		margin-top 15%

</style>

<script type="text/javascript">

$(document).ready(function() {
	$('.redo').click(function() {
		$('.success, .error').toggle();
	});
});

</script>

</head>
<body>

<div class="background"></div>
<div class="container">
	<div class="row">
		<div class="modalbox error col-sm-8 col-md-6 col-lg-5 center animate">
			<div class="icon">
				<span class="glyphicon glyphicon-ok"></span>
			</div>
			<!--/.icon-->
			<h1>Success!</h1>
			<p>We've sent a confirmation to your e-mail
				<br>for verification.</p>
			<button type="button" class="redo btn">Ok</button>
		</div>
	</div>
	
	<div class="row">
	
	<table class="table">
    <thead>
      <tr>
        <th>Flight Id</th>
        <th>Passenger Name</th>
        <th>Phone Number</th>
        <th>Transaction RefID</th>
      </tr>
    </thead>
    <tbody>
      <tr class="success">
        <td>${reservation.flightId}</td>
        <td>${reservation.passengerFirstName}</td>
        <td>${reservation.passengerPhone}</td>
        <td>${reservation.referenceId}</td>
      </tr>
    </tbody>
  </table>
  
	
	</div>
	
	
</div>
</body>
</html>