# URL Shortener Application

This is a URL Shortening application made with CFML and MySQL as the database, which currently supports the following functions: 

* Adding a URL to shorten. 
* Redirecting shortened URL's to the original one. 

----

## Running the application after cloning: 

1. Install the template dependencies by running the `install` command:

```bash
box install
```

2. You will need to change the dataSource in Application.cfc to your own database. 

```bash
	this.datasources["url_schema"] = {
		class: "com.mysql.cj.jdbc.Driver", 
		bundleName: "com.mysql.cj", 
		bundleVersion: "8.0.33",
		connectionString: "jdbc:mysql://localhost:3306/URL_SCHEMA?characterEncoding=UTF-8&serverTimezone=America/Vancouver&maxReconnects=3",
		username: "root",
		password: "encrypted:226937e61b04d0a4f5f0bba2aabe32593f2744c4ea3a834204fc06988e10860e",

		// optional settings
		connectionLimit:-1, // default:-1
		liveTimeout:15, // default: -1; unit: minutes
		alwaysSetTimeout:true, // default: false
		validate:false, // default: false
	};
	this.datasource="url_schema"; 
```

| Columns  | Type |
| ------------- | ------------- |
| ID (PK)  | Int  |
| LONG_URL (U) | Varchar  |
| SHORT_URL  | Varchar  |
| CLICK_COUNT | Int  |

3. After this you should be able to run the application with. 

```bash
box server start
```
- Note: I ran this with Lucee version 5.4.4.38

4. After starting Lucee you will want to navigate to the following URL: http://{server_port}/shortUrls/index
----
