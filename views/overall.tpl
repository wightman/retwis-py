%#list of currents posts
%include shared/header.tpl header=page,logged=logged
<div id="main">
	<h1>What's Happening?</h1>
	<form method="POST" action="/post" class="update">
		<textarea name="content"></textarea>
		<fieldset>
		<p>{{posts[0].content}}</p>
		<input type="submit" value="update!" />
		</fieldset>
	</form>
	
	<div class="tweets">
	%for tweet in overall:
		%include shared/post.tpl tweet=tweet
	%end
	</div>
</div>
%include shared/side.tpl username=username,counts=counts
	
%include shared/footer.tpl
