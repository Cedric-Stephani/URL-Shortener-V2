<cfoutput>
    <table class="table table-striped table-hover">
		<thead>
			<tr>
				<th>Short URL</th><th>Long URL</th><th>Click Count</th>
			</tr>
		</thead>
		<tbody>
			<cfoutput query="#prc.Uri#">
                <tr>
                    <td><a href="#event.buildLink( 'r.#prc.Uri.SHORT_URL#' )#">#prc.Uri.SHORT_URL#</a></td>
                    <td>#prc.Uri.LONG_URL#</td> 
                    <td>#prc.Uri.CLICK_COUNT#</td> 
                </tr>
			</cfoutput>
		</tbody>
    </table>
</cfoutput>
