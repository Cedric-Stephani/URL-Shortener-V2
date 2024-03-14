/**
 * This is your application router.  From here you can controll all the incoming routes to your application.
 *
 * https://coldbox.ortusbooks.com/the-basics/routing
 */
component {

	function configure(){
		setFullRewrites( true );

		/**
		 * --------------------------------------------------------------------------
		 * App Routes
		 * --------------------------------------------------------------------------
		 */

		// Redirect 
		route("/r/:shortUri").to("Redirect.redirectUrl"); 

		// A nice healthcheck route example
		route( "/healthcheck", function( event, rc, prc ){
			return "Ok!";
		} );

		// A nice RESTFul Route example
		route( "/api/echo", function( event, rc, prc ){
			return { "error" : false, "data" : "Welcome to my awesome API!" };
		} );

		route( "/api/test", function( event, rc, prc ){
			return { "error" : false, "data" : "testing" };
		} );

		// @app_routes@

		// Conventions-Based Routing
		route( ":handler/:action?" ).end();
	}

}
