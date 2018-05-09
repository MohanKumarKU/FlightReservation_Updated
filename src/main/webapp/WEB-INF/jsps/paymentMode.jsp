<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment Mode</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
	font-family: Arial;
	font-size: 17px;
	padding: 8px;
}

* {
	box-sizing: border-box;
}

.row {
	display: -ms-flexbox; /* IE10 */
	display: flex;
	-ms-flex-wrap: wrap; /* IE10 */
	flex-wrap: wrap;
	margin: 0 -16px;
}

.col-25 {
	-ms-flex: 25%; /* IE10 */
	flex: 25%;
}

.col-50 {
	-ms-flex: 50%; /* IE10 */
	flex: 50%;
}

.col-75 {
	-ms-flex: 75%; /* IE10 */
	flex: 75%;
}

.col-25, .col-50, .col-75 {
	padding: 0 16px;
}

.container {
	background-color: #f2f2f2;
	padding: 5px 20px 15px 20px;
	border: 1px solid lightgrey;
	border-radius: 3px;
}

input[type=text] {
	width: 100%;
	margin-bottom: 20px;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 3px;
}

label {
	margin-bottom: 10px;
	display: block;
}

.icon-container {
	margin-bottom: 20px;
	padding: 7px 0;
	font-size: 24px;
}

.btn {
	background-color: #4CAF50;
	color: white;
	padding: 12px;
	margin: 10px 0;
	border: none;
	width: 100%;
	border-radius: 3px;
	cursor: pointer;
	font-size: 17px;
}

.btn:hover {
	background-color: #45a049;
}

a {
	color: #2196F3;
}

hr {
	border: 1px solid lightgrey;
}

span.price {
	float: right;
	color: grey;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
@media ( max-width : 800px) {
	.row {
		flex-direction: column-reverse;
	}
	.col-25 {
		margin-bottom: 20px;
	}
}
</style>

  
</head>
<body>



	<div class="container">
		<h2>Payment Mode</h2>
		<form>
			<label class="radio-inline"> <input type="radio"
				name="netBanking" value="netBanking">Net Banking
			</label> <label class="radio-inline"> <input type="radio" name="card"
				value="card" checked>Credit / Debit Card
			</label>
		</form>
	</div>



	<div class="row">
		<div class="col-75">
			<div class="container">
				<form action="paymentGate" method="post">

					<div class="col-50">
						<h3>Payment</h3>
						<label for="fname">Accepted Cards</label>
						<div class="icon-container">
							<i class="fa fa-cc-visa" style="color: navy;"></i> <i
								class="fa fa-cc-amex" style="color: blue;"></i> <i
								class="fa fa-cc-mastercard" style="color: red;"></i> <i
								class="fa fa-cc-discover" style="color: orange;"></i>
						</div>
						<label for="cname">Name on Card</label> <input type="text"
							id="cname" name="nameOnTheCard" placeholder="Name on the card">
						<label for="ccnum">Card number</label> <input type="text"
							id="ccnum" name="cardNumber" placeholder="1111-2222-3333-4444">
						<label for="expmonth">Exp Month</label> <input type="text"
							id="expmonth" name="expirationMonth" placeholder="September">

						<input type="hidden" id="latitude" name="latitude">
						<input type="hidden" id="longitude" name="longitude">
						
						<input type="hidden"  name="passengerFirstName" value = "${request.passengerFirstName}">
						<input type="hidden"  name="passengerLastName" value = "${request.passengerLastName}">
						<input type="hidden"  name="passengerEmail" value = "${request.passengerEmail}">
						<input type="hidden"  name="passengerPhone" value = "${request.passengerPhone}">
						
						<div class="row">
							<div class="col-50">
								<label for="expyear">Exp Year</label> <input type="text"
									id="expyear" name="expirationYear" placeholder="2018">
							</div>
							<div class="col-50">
								<label for="cvv">CVV</label> <input type="text" id="cvv"
									name="securityCode" placeholder="352">
							</div>
						</div>
					</div>

					<input type="submit" value="Pay" class="button">
				</form>
			</div>
		</div>
	</div>


	<script>
	window.onload = function() {
		getLocation();
		};
		function getLocation() {
			if (navigator.geolocation) {
				navigator.geolocation.getCurrentPosition(showPosition);
			} else {
				x.innerHTML = "Geolocation is not supported by this browser.";
			}
		}
		 function showPosition(position) {
		  document.getElementById('latitude').value = position.coords.latitude;
		  document.getElementById('longitude').value = position.coords.longitude;
		}
		 
 </script>

	
</body>
</html>