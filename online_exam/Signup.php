<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <link rel="stylesheet" type="test/css">
        <link rel="stylesheet" type="text/css" href="bootstrap.min.css">
  </head>
    <body style="background:lightCyan">
        <div class="container">
              <h1 class="text-center text-success">Welcome to Online Examination System</h1>
              <hr style="border:solid 3px">
            <div class="row">
                <div class="col-lg-6">
                    <h2> Sign Up Form </h2>
                    <form action="registration.php" method="post">
                        <div class="form-group">
                            <label> Username </label>
                            <input type="text" name="user" class="form-control">
                        </div>
                        
                        <div class="form-group">
                            <label> Password </label>
                            <input type="password" name="password" class="form-control"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
                        </div>
                        <button type="submit" class="btn btn-primary">Sign Up</button>
                        
                    </form>
                    
                </div>
            </div>
        </div>
        <p style="margin-left:230px"> Already Sign up ! <a href="login.php">Login here</a>
   
       </body>
</html>