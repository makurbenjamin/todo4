%#template for the form for a new task
% include('templates/head.tpl', title=title)
<body>
<div class="row">
	<div class="small-9 small-centered columns">
		<h1>Important message</h1>
	</div>
</div>

<div class="row">
	<div class="small-9 small-centered columns">
		<div data-alert class="alert-box">
			<!-- Your content goes here -->
			{{message}}
			<a href="#" class="close">&times;</a>
		</div>
	</div>
</div>

% include('templates/footer.tpl')

	<script src="/js/jquery.js"></script>
	<script src="/js/foundation.min.js"></script>
	<script>
	$(document).foundation();
	</script>
</body>