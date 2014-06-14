%#template for the form for a new task
% include('templates/head.tpl', title=title)
<body>
<div class="row">
	<div class="small-9 small-centered columns">
		<h1>Create a new task</h1>
	</div>
</div>
<div class="row">
	<div class="small-9 small-centered columns">
	<p>Add a new task to the ToDo list:</p>
		<form action="/new" method="get" data-abide>
		<div class="row">
			<div class="large-12 columns">
			<label>Task description <small>Required</small></label>
				<input type="text" name="task" placeholder="Type a new task here..." required>
				<small class="error">Task description cannot be null.</small>
			</div>
		</div>
		<div class="row">
			<div class="large-12 columns">
				<input type="submit" name="save" value="save" class="small button">
			</div>
			</div>
		</form>
	</div>
</div>
<script src="/js/jquery.js"></script>
<script src="/js/foundation.min.js"></script>
<script>
$(document).foundation();
</script>
% include('templates/footer.tpl')
</body>