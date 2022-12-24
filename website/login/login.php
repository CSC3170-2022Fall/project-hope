<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>无标题文档</title>
</head>
 
<body>
    <form action="logincl.php" method="post">
        <h1>login</h1>
        <div>
            user name:
            <input type="text" name="uid" />
        </div>
        
        <div>
            password:
            <input type="password" name="pwd" />
        </div>
        
        <input type="submit" value="登录" />
        
    </form>
    
    <button  onclick = "window.location.href = '/signup.php'" >
        signup
    </button >
</body>
</html>