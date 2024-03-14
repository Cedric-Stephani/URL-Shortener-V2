<cfoutput>
    <html>
        <head>   
        </head>

        <body>
            <h1>URL Shortener</h1>
            <p> Welcome to this URL shortener. You can view shortened URL's in the table below or click 'add new' to go ahead and create a new short URL. </p>

            <div class="button" border="1px solid">
                <a href="#event.buildLink( 'shortUrls.add' )#" class="button is-info is-light">Add New</a>
            </div>

            #renderView( "shortUrls/view" )#
        </body>
    </html>
</cfoutput>
