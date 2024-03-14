/**
 * I am a new handler
 * Implicit Functions: preHandler, postHandler, aroundHandler, onMissingAction, onError, onInvalidHTTPMethod
 */
component extends="coldbox.system.EventHandler"{
	property name="uriService" inject="UriService";

	this.prehandler_only 	= "";
	this.prehandler_except 	= "";
	this.posthandler_only 	= "";
	this.posthandler_except = "";
	this.aroundHandler_only = "";
	this.aroundHandler_except = "";
	this.allowedMethods = {};

	/**
	 * redirectUrl
	 */
	function redirectUrl( event, rc, prc ){
		// Get the long URI from the database. 
		prc.relocateUrl = uriService.getByShortURI( event.getValue( "shortURI", "" ) );

		if ( prc.relocateUrl.recordCount ){
			relocate( url = prc.relocateUrl.LONG_URL);
		} else {
			// TODO: add a not-found page 
			event.setView("shortUrls/notfound"); 
		}
	}



}

