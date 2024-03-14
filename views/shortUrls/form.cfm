<cfoutput>
  <label for="long_url">Long URL:</label>
  <input type="long_url" id="long_url" name="long_url" placeholder="https://example.com" value="#encodeForHTMLAttribute( prc.UrlToAdd )#">
  <input type="submit" value="Submit">
</cfoutput>
