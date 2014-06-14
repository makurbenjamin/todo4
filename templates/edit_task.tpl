%#template for editing a task
%#the template expects to receive a value for "no" as well a "old", the text of the selected ToDo item
% include('templates/head.tpl', title=title)
<body>
<div class="row">
	<div class="small-9 small-centered columns">
		<h1>Edit the task #{{no}}</h1>
	</div>
</div>
<div class="row">
	<div class="small-9 small-centered columns">
		<form action="/edit/{{no}}" method="get" data-abide>
			<div class="row">
				<div class="large-8 columns">
					<label>Task description <small>Required</small></label>
					<input type="text" name="task" placeholder="Type a new task here..." value="{{old[0]}}" required>
					<small class="error">Task description cannot be null.</small>
				</div>
				<div class="large-4 columns">
					<label>Status <small>Required</small></label>
					<select name="status">
					<option>open</option>
					<option>closed</option>
					</select>
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
% include('templates/footer.tpl')
<script src="/js/jquery.js"></script>
<script src="/js/foundation.min.js"></script>
<script>
$(document).foundation();
</script>
</body>