<cfoutput>
    <body>
        <h3>Create new short Url:</h3>
        <form action="#event.buildLink( 'shortUrls.create' )#" method="POST">
            <cfinclude template="form.cfm"/>
        </form>
    </body>
</cfoutput>
