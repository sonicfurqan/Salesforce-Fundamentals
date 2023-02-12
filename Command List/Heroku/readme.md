1.Authenticate  your heroku account
	a.heroku login
	
2.Create app in heroku
 	a heroku create <your name >
	b.Example:heroku create myserverforheroku

2.1 If app is already created 
	a.login to heroku and open app
	b.goto deploy tab
	c.copy command heroku git:remote -a <appname>
	d.and paste in terminal to get the code 

2.2 If app is connected to git
	a.login to git account of that repo
	b.clone that repo
	c.commit to the git repo not heroku
	d.after  git commit goto deploy tab under "Manual deploy" select branch and click deploy

3 check code locally 
	a.heroku local web
	b. http://localhost:5000  to check app
	
4.1 : add new code to commit que
	a.git add .
4.2 : Commit your code to git
	a.git commit -m "commit message"

5.push code to heroku app if its not linked to git 
	a.git push heroku master


6.add Dynos to app
	a.heroku ps:scale web=<number of dynos>
	b.Example:heroku ps:scale web=1
7.open created app
	a.heroku open
