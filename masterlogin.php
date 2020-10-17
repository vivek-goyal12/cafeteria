<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>Signin Form </title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />

    <!-- //Meta tag Keywords -->
    <link rel="stylesheet" href="style.css" type="text/css" media="all" /><!-- Style-CSS -->
    <link href="css/font-awesome.css" rel="stylesheet"><!-- font-awesome-icons -->
</head>

<body>
    <section class="signin-form">
        <div class="overlay" style="height: 100vh">
            <div class="wrapper">
                <div class="form34">
                    <h6 class="form-head" style="color: red">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Admin Login</h6>
<!--
                    <p class="form-para">Sign in using social media to get quick access</p>
                    <div class="main-div">
                        <a href="#facebook">
                            <div class="signin facebook">
                                <span class="fa fa-facebook" aria-hidden="true"></span>
                                <p class="action">facebook</p>
                            </div>
                        </a>
                        <a href="#google-plus">
                            <div class="signin google-plus">
                                <span class="fa fa-google-plus" aria-hidden="true"></span>
                                <p class="action">google</p>
                            </div>
                        </a>
                    </div>
-->
<!--
                    <div class="form-34or">
                        <span class="pros">
                            <span>or</span>
                        </span>
                    </div>
-->
                    <form action="" method="post">
                        <div class="">
                            <p class="text-head">Username</p>
                            <input type="text" name="username" class="input" placeholder="" required />
                        </div>
                        <div class="">
                            <p class="text-head">Password</p>
                            <input type="password" name="password" class="input" placeholder="" required />
                        </div>
                        <label class="remember">
                            <input type="checkbox">
                            <span class="checkmark"></span>Remember me
                        </label>
                        <button type="submit" class="signinbutton btn">Sign in</button>
<!--
                        <p class="signup">Have not an account yet?<a href="signupform.html" class="signuplink">Sign up</a>
                        </p>
-->
                    </form>
                </div>
            </div>
            <!-- copyright -->
		<div class="copyright text-center">
            <p> Login Form . All rights reserved | Design by :</p>
            </div>
            <!-- //copyright --> 
        </div>
    </section>
</body>

</html>