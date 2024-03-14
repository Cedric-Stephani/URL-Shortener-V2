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
	 * Returns all URI records in the URI Table
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
		var sql = "
			INSERT INTO URI_TABLE ( SHORT_URL, LONG_URL, CLICK_COUNT )
			VALUES ( :shortURI, :longURI, :clickCount )
		";
		var randomString = getRandomString();
		var params = {
			shortURI: { value: randomString, cfsqltype: "varchar" },
			longURI: { value: arguments.longURI, cfsqltype: "varchar" }, 
			clickCount: { value: 0, cfsqltype: "integer" }

		};

		return queryExecute( sql, params );
	}

	/**
	 * getById
	 */
	function getById(){
		return "Not Implemented"; 
	}

	/**
	 * Return a specific URI record with the specified short URI
	 */
	function getByShortUri(required string shortUri){
		var sql ="
			SELECT SHORT_URL, LONG_URL, CLICK_COUNT from URI_TABLE
			WHERE SHORT_URL=:shortUri
		"; 
		var params = {
			shortUri: {value: arguments.shortUri}
		}
		return queryExecute(sql, params);
	}

	/**
	*	Return a random 10 letter string consisting of uppercase and lowercase letters which will be used as the short URL. 
	**/ 
	function getRandomString(){
		var upperCaseLetters = "a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|r|s|t|u|v|w|x|y|z";
		var lowerCaseLetters = "A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z";
		var compositeList = upperCaseLetters&"|"&lowerCaseLetters;
		var charsInListen = listLen(compositeList,"|");
		var count = 1;
		var randomString = "";
		
		//loop from 1 to 10 to generate string
		while (count LTE 10) {
				randomString = randomString&listGetAt(compositeList,randRange(1,charsInListen),"|");
				count = count + 1;
		}
		
		return randomString;
	}


}