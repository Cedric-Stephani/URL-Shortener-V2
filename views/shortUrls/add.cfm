<cfoutput>
    <h1>Create new short URL:</h1>
    <form action="#event.buildLink( 'shortUrls' )#" method="POST">
        <cfinclude template="form.cfm"/>
    </form>
</cfoutput>
