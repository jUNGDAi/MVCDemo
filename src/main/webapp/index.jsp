<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    </head>
    <body>

        <div class="container">
            <h1>Hello MVC Demo by Maven!</h1>
            <div class="row">
                <div class="well">
                    <form class="form-inline" action="LoginController" method="post">


                        <div class="form-group">
                            <label class="sr-only" for="user">Username</label>
                            <input type="text" class="form-control" id="user" name="username" placeholder="Username">
                            <label class="sr-only" for="pass">Password</label>
                            <input type="password" class="form-control" id="pass" name="password" placeholder="Password">
                        </div>
                        <button type="submit" class="btn btn-default">Sign in</button>
                    </form>
                    <a href="error.jsp">error page</a>           |        <a href="success.jsp">success page</a>  | <abbr title="jirawat : 1234">password hint</abbr>

                </div>
            </div>
        </div>
    </body>
</html>
