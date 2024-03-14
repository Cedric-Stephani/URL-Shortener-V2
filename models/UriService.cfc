/**
 * I am a new service
 */
component singleton accessors="true"{

	// DI

	/**
	 * Constructor
	 */
	UriService function init(){
		
		return this;
	}

	/**
	 * getAll
	 */
	function getAll(){
		var sql  = "
			SELECT * from URI_TABLE
		";

		return queryExecute(sql, {}); 
	}

	/**
	 * addNew
	 */
	function addNew(){

	}

	/**
	 * getById
	 */
	function getById(){

	}

	/**
	 * getByShortUri
	 */
	function getByShortUri(){

	}


}