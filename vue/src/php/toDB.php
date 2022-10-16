<?php 
    if (isset($_SERVER['HTTP_ORIGIN'])) {
        // Decide if the origin in $_SERVER['HTTP_ORIGIN'] is one
        // you want to allow, and if so:
        header('Access-Control-Allow-Origin: *');
        header('Access-Control-Allow-Credentials: true');
        header('Access-Control-Max-Age: 1000');
    }
    if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {
        if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_METHOD'])) {
                // may also be using PUT, PATCH, HEAD etc
                header("Access-Control-Allow-Methods: POST, GET, OPTIONS, PUT, DELETE");
        }

        if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS'])) {
                header("Access-Control-Allow-Headers: Accept, Content-Type, Content-Length, Accept-Encoding, X-CSRF-Token, Authorization");
        }
        exit(0);
    }

    $res = array('error' => false);
    $action='';

    $conn  = new mysqli("localhost","root","","vueassignment");
    if ($conn->connect_error){
        die("Connection Failed".$conn->connect_error);
        echo ("Can't Connect To DB");
    }
    // echo ("Successfully Connected To DB");
    $result = array ('error'=>false);
    $action = '';
    if(isset($_GET['action'])){
        $action=$_GET['action'];
    }
    if($action=='login'){
        $username=$_POST['username'];
        $password=$_POST['password'];
        // $sql="Select * from `users` where username='".$username."' AND password='".$password."'";
        $sql="SELECT * FROM `users` WHERE username='$username' AND password='$password'";
        // $sql="SELECT * FROM `users` WHERE username='admin' AND password='admin'";
        $result=$conn->query($sql);
        $num=mysqli_num_rows($result);
        // echo ":".$username.":" ." ".":".$password.":";
        echo $num;
        if($num > 0){
            $resp['message']="Login Successful";
            // echo "success ty";
            // echo $res['message'];
        }
        else{
            $resp['error']=true;
            $resp['message']="Your Login Username or Password is invalid";
            // echo "error ty";
            // echo $res['message'];
            // echo $res['error'];
        }
    }
    if($action=='signUp'){
        $username=$_POST['username'];
        $fname=$_POST['fname'];
        $lname=$_POST['lname'];
        $acctype=$_POST['acctype'];
        $password=$_POST['password'];
        $sql="INSERT INTO `users` (`username`, `password`, `acctype`, `fname`, `lname`) VALUES ('$username', '$password', '$acctype', '$fname', '$lname');";
        $result=$conn->query($sql);
        echo $result;
        if($result){
            $result['message'] = "Registration Successful!";
            echo 1;
        }else{
            echo 0;
            $result['error'] = true;
            $result['message'] = "Failed To Register";
        }
        // echo json_encode($result);
    }
    if($action=='forgotPW'){
        $username=$_POST['username'];
        $password=$_POST['password'];
        $sql="UPDATE `users` SET `password` = '$password' WHERE `users`.`username` = '$username';";
        $result=$conn->query($sql);
        echo $result;
        if($result){
            $result['message'] = "Password Changed Successfully";
            echo 1;
        }else{
            echo 0;
            $result['error'] = true;
            $result['message'] = "Changing Password Failed";
        }
        // echo json_encode($result);
    }
    if($action =='showPosts'){
        $sql = "SELECT pid, fname, lname, title, category,date FROM posts INNER JOIN users ON posts.uid=users.uid;";
        $result=$conn->query($sql);
        $posts = array();
        while ($row = $result->fetch_assoc()){
            array_push($posts,$row);
        }
        $postsList['posts'] = $posts;
        echo json_encode($postsList);
    }
    if($action =='getPostContent'){
        $postID=$_POST['postID'];
        $sql = "SELECT pid,title, category,date,fname, lname,content,picURL FROM posts INNER JOIN users ON posts.uid=users.uid where pid='$postID';";
        $result=$conn->query($sql);
        $posts = array();
        while ($row = $result->fetch_assoc()){
            array_push($posts,$row);
        }
        $postsList['posts'] = $posts;
        echo json_encode($postsList);
    }
?>