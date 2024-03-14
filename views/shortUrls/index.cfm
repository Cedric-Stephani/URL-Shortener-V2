<cfoutput>

<h1>URL Shortener</h1>

<p> Welcome to this URL shortener. You can view shortened URL's in the table below or click 'add new' to go ahead and create a new short URL. </p>

<div class="button" border="1px solid">
	<a href="#event.buildLink( 'shortUrls.add' )#" class="button is-info is-light">Add New</a>
</div>a

<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th>Short URL</th><th>Long URL</th><th>Click Count</th>
			</tr>
		</thead>
		<tbody>
			<cfoutput query="#prc.Uri#">
                <tr>
                    <td><a href="#event.buildLink( 'redirect.#prc.Uri.SHORT_URL#' )#">#prc.Uri.SHORT_URL#</a></td>
                    <td>#prc.Uri.LONG_URL#</td> 
                    <td>#prc.Uri.CLICK_COUNT#</td> 
                </tr>
			</cfoutput>
		</tbody>

</cfoutput>
