<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>XYZ Central Library</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" origin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" origin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" origin="anonymous"></script>
    <style><%@include file="css/style.css"%></style>
</head>
<body> 
    <div class="site-wrapper">
    <div class="site-navbar">
        <h4 class="navbar-contents">XYZ library</h4>
    </div>
    <div class="form-wrapper">
        <h1>login</h1>
        <form action="login" method="post">
            <div class="form-group">
                <label for="email">User ID</label>
                <input type="text" class="form-control" placeholder="Enter your user id" id="user" name="userEmail" minlength="5" maxlength="50" required>
              </div>
              <div class="form-group">
                <label for="email">Password</label> 
                <input type="password" class="form-control" placeholder="Enter your password" id="password" name="userPassword" minlength="5" maxlength="50" required>
              </div>
              <button type="submit" class="btn-submit">login</button>
        </form>
    </div>
    <div class="site-footer">
        <p class="footer-contents">XYZ Central Library </p>
    </div>
    </div>
</body>
</html>