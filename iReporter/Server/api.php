<?

// API

function errorJson($msg){
	print json_encode(array('error'=>$msg));
	exit();
}

function register($user, $pass) {
	//check if username exists
	$login = query("SELECT username FROM login WHERE username='%s' limit 1", $user);
	if (count($login['result'])>0) {
		errorJson('Username already exists');
	}
	//try to register the user
	$result = query("INSERT INTO login(username, pass) VALUES('%s','%s')", $user, $pass);
	if (!$result['error']) {
		//success
		login($user, $pass);
	} else {
		//error
		errorJson('Registration failed');
	}
 
}

?>