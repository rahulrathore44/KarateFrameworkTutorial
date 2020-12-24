function fn() {    
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'staging';
  }
  var config = {
    env: env,
	myVarName: 'someValue',
	username: 'admin1',
	password: 'welcome',
	_url: 'http://localhost:9898',
		
  }
  if (env == 'dev') {
    // customize
    // e.g. config.foo = 'bar';
	  config.username = 'author';
	  config.password = 'authorpassword';
  } else if (env == 'e2e') {
	  config.username = 'user';
	  config.password = 'userpassword';
  }
  
  return config;
}