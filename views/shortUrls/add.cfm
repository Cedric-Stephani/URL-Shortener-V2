<cfoutput>
    <h1>Create new short URL:</h1>
    <form action="#event.buildLink( 'shortUrls.create' )#" method="POST">
        <cfinclude template="form.cfm"/>
    </form>
</cfoutput>
