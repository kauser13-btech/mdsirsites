@extends('layouts.desktop')

@section('content')

<div class="container">
@if (Session::has('success'))
	<div class="alert alert-success alert-dismissible fade show mt-3" role="alert">
		{{ Session::get('success') }}
		<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
	</div>
	<div class="clearfix"></div>
@endif
<div class="contactus">
	<div class="wrapper mt-4">
		<div class="form">
			<h4>GET IN TOUCH</h4>
			<h2 class="form-headline">Send us a message</h2>
			<form id="submit-form" action="{{ route('mail.store') }}" method="POST">
				@csrf
				<p>
					<input id="name" name="name" class="form-input" type="text" placeholder="Your Name*" required>
					<small class="name-error"></small>
				</p>
				<p>
					<input id="email" name="email" class="form-input" type="email" placeholder="Your Email*" required>
					<small class="name-error"></small>
				</p>
				<p class="full-width">
					<input id="company-name" name="company" class="form-input" type="text" placeholder="Company Name*" required>
					<small></small>
				</p>
				<p class="full-width">
					<textarea  minlength="20" id="message" name="message" cols="30" rows="7" placeholder="Your Message*" required></textarea>
					<small></small>
				</p>
				<p class="full-width">
					<input type="checkbox" id="checkbox" name="checkbox" checked required> Yes, I would like to receive communications by call / email about Company's services.
				</p>
				<p class="full-width">
					<input type="submit" class="submit-btn" value="Submit">
				</p>
			</form>
		</div>

		<div class="contacts contact-wrapper">
			<h4>Reach Us</h4>
			<ul>
				<li class="bi bi-pin-map-fill">Level-19, Bashundhara City Shopping Complex, Panthapath, Dhaka-1215, Bangladesh</li>
				<li class="bi bi-telephone">Hotline: +880258151012</li>
{{--				<li class="bi bi-phone">+8801950771177</li>--}}
				<li class="bi bi-phone">+8801314559773</li>
				<li class="bi bi-envelope">Email: info@bajus.org</li>
				<li class="bi bi-link">Website: www.bajus.org</li>
			</ul>
		</div>
	</div>
</div>
</div>

@endsection

@push('meta')
		<title>Bajus - Contact Us – বাংলাদেশ জুয়েলার্স অ্যাসোসিয়েশন</title>
		<meta property="og:title" content="Bajus - Contact Us – বাংলাদেশ জুয়েলার্স অ্যাসোসিয়েশন" />
		<meta name="url" content="{{ url('/') }}">
		<meta name="keywords" content="বাংলাদেশ জুয়েলার্স অ্যাসোসিয়েশন">
		<meta name="description" content="বাংলাদেশ জুয়েলার্স অ্যাসোসিয়েশন">
		<meta property="og:url" content="{{ url('/') }}" />
		<meta property="og:description" content="বাংলাদেশ জুয়েলার্স অ্যাসোসিয়েশন" />
		<meta property="og:image" content="{{ url('desktop/img/default-img.jpg') }}" />
		<link rel="canonical" href="{{ url('/') }}">
		<link rel="image_src" href="{{ url('desktop/img/default-img.jpg') }}">
@endpush

@push('stylesheet')
@endpush

@push('scripts')
<style type="text/css">
.contactus {
	background-color: #eee;
	padding: 1em;
}

div.form {
	background-color: #eee;
}
.contact-wrapper {
	margin: auto 0;
}
.contact-wrapper ul li{
	margin-bottom: 10px;
	padding-left: 25px;
	position: relative;
}
.contact-wrapper ul li:before{
	position: absolute;
	left: 0;
	top: 5px;
}
.submit-btn {
	float: left;
}

.form-headline:after {
	content: "";
	display: block;
	width: 10%;
	padding-top: 10px;
	border-bottom: 3px solid #ec1c24;
}

.highlight-text {
	color: #ec1c24;
}

.hightlight-contact-info {
	font-weight: 700;
	font-size: 22px;
	line-height: 1.5;
}

.highlight-text-grey {
	font-weight: 500;
}

.email-info {
	margin-top: 20px;
}

::-webkit-input-placeholder {
	/* Chrome */
	font-family: "Roboto", sans-serif;
}

.required-input {
	color: black;
}
@media (min-width: 600px) {
	.contactus {
		padding: 0;
	}
}

h3,
ul {
	margin: 0;
}

h3 {
	margin-bottom: 1rem;
}

.form-input:focus,
textarea:focus {
	outline: 1.5px solid #ec1c24;
}

.form-input,
textarea {
	width: 100%;
	border: 1px solid #bdbdbd;
	border-radius: 5px;
}

.wrapper > * {
	padding: 1em;
}
@media (min-width: 700px) {
	.wrapper {
		display: grid;
		grid-template-columns: 2fr 1fr;
	}
	.wrapper > * {
		padding: 2em 2em;
	}
}

ul {
	list-style: none;
	padding: 0;
}

.contacts {
	color: #212d31;
}

.form {
	background: #fff;
}

form {
	display: grid;
	grid-template-columns: 1fr 1fr;
	grid-gap: 20px;
}
form label {
	display: block;
}
form p {
	margin: 0;
}

.full-width {
	grid-column: 1 / 3;
}

button,
.submit-btn,
.form-input,
textarea {
	padding: 1em;
}

button,
.submit-btn {
	background: transparent;
	border: 1px solid #ec1c24;
	color: #ec1c24;
	border-radius: 15px;
	padding: 5px 20px;
	text-transform: uppercase;
}
button:hover,
.submit-btn:hover,
button:focus,
.submit-btn:focus {
	background: #ec1c24;
	outline: 0;
	color: #eee;
}
.error {
	color: #ec1c24;
}

</style>
@endpush
