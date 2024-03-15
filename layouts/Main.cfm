<cfoutput>
<!doctype html>
<html lang="en">
<head>
    <!---
        CSS
        - Bootstrap
        - Alpine.js
    --->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">

    <style>
        .text-blue { color:##379BC1; }
        body{
            padding-left: 10px; 
            padding-right: 10px; 
            font-family: sans-serif; 
        }

		button, input[type=submit]{
			background-color: ##1f2124;
			color: white; 
		}

		button, input[type=submit], input[type=url]{
            padding: 5px 5px;
            margin-bottom: 10px; 
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            border: 1px solid ##ccc;
            border-radius: 4px;
		}

		input[type=url]{
			background-color: white;
		}

		label {
			padding: 12px 12px 12px 0;
			display: inline-block;
		}
    </style>

    <!--- Title --->
    <title>Url Shortener</title>
</head>
<body
    data-spy="scroll"
    data-target=".navbar"
    data-offset="50"
    style="padding-top: 60px"
    class="d-flex flex-column h-100"
>
    <!---Top NavBar --->
    <header>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
            <div class="container-fluid">
                <!---Brand --->
                <a class="navbar-brand" href="#event.buildLink( 'shortUrls.index' )#">
                    <strong>Url Shortener</strong>
                </a>
            </div>
        </nav>
    </header>

    <!---Container And Views --->
    <main class="flex-shrink-0">
        #view()#
    </main>

    <!--- Footer --->
    <footer class="w-100 bottom-0 position-fixed border-top py-3 mt-5 bg-light">
        <div class="container">
        </div>
    </footer>

    <!---
        JavaScript
        - Bootstrap
        - Popper
        - Alpine.js
    --->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
    <script defer src="https://unpkg.com/alpinejs@3.x.x/dist/cdn.min.js"></script>
</body>
</html>
</cfoutput>

