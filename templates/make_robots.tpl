% include('templates/head.tpl', title=title)
<body>
%#template to generate a HTML table from a list of tuples (or list of lists, or tuple of tuples or ...)
<div class="row">
	<div class="small-12 small-centered columns myheader">
		<h1>Welcome to the ToDo application</h1>
	</div>
</div>

<div class="row mymenu">
  <div class="small-2 large-2 columns"><a href="/">Show plane</a></div>
  <div class="small-2 large-2 columns"><a href="/new">New task</a></div>
  <div class="small-2 large-2 columns"><a href="/robots">Show all tasks</a></div>
  <div class="small-2 large-6 columns"><a href="/help" target="_blank">Help</a></div>
</div>

<div class="row">
	<div class="small-8 columns">
		<div class="mymess1">The open items are as follows:</div>
		<ul class="example-orbit myboxtask" data-orbit data-options="timer_speed:2000; resume_on_mouseout:true;">
		%for row in rows:
			<li>
			<img src="https://robohash.org/{{row[1]}}">
				<div class="orbit-caption">
					{{row[1]}} <a href="/edit/{{row[0]}}">edit</a>
				</div>
			</li>
		%end
		</ul>
	<div class="myinfo">
		<h3>Todo App is a handy tool to keep all your commintments on track. With regular security updates and now enriched with the awesome and powerful <span data-tooltip class="has-tip" title="Check the upper menu!">robots widget.</span><br>All your software, here in CEU productions.</h3>
	</div>	
	</div>
		<div class="large-4 columns">
		<a class="twitter-timeline"  href="https://twitter.com/albertolamana"  data-widget-id="270238982686785536">Tweets por @albertolamana</a>
	    <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
	</div>
</div>
% include('templates/footer.tpl')
<script src="/js/jquery.js"></script>
<script src="/js/foundation.min.js"></script>
<script>
$(document).foundation();
</script>
</body>