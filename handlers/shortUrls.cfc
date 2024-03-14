/**
 * I am a new handler
 * Implicit Functions: preHandler, postHandler, aroundHandler, onMissingAction, onError, onInvalidHTTPMethod
 */
component extends="coldbox.system.EventHandler"{
	property name = "uriService" inject="UriService"; 

	this.prehandler_only 	= "";
	this.prehandler_except 	= "";
	this.posthandler_only 	= "";
	this.posthandler_except = "";
	this.aroundHandler_only = "";
	this.aroundHandler_except = "";
	
	this.allowedMethods = {
		create = "POST"
	};

	/**
	 * Display a listing of the resource
	 */
	function index( event, rc, prc ){
		prc.Uri = uriService.getAll(); 
	}

	/**
	 * view
	 */
	function view( event, rc, prc ){
		event.setView("shortUrls/view");
	}

	/**
	 * add
	 */
	function add( event, rc, prc ){
		prc.urlToAdd=""; 
		event.paramPrivateValue( "data", {
			UrlToAdd: ""
		} );
		event.setView( "shortUrls/add" ); 
	}

	/**
	 * form
	 */
	function form( event, rc, prc ){
		event.setView( "shortUrls/form" );
	}

	function create(event, rc, prc){		

		relocate( "index" );
	}



}

