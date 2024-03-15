<cfoutput>
    <html>
        <body>
            <p> Welcome to this URL shortener. You can view shortened URL's in the table below or click 'add new' to go ahead and create a new short URL. </p>
            <button onclick="window.location.href='add'">Add New</button><br>

            #renderView( "shortUrls/view" )#
        </body>
    </html>
</cfoutput>
