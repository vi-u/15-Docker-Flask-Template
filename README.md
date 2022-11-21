# 15-Docker-Flask-Template
>>>>  Adding Render Template to Flask App

Templates are files that display static and dynamic content to users who visit your application. 

#So, first let's create home.html

    sudo nano app/templates/home.html

#which contains


    <!doctype html>
    <html lang="en-us">   
      <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Welcome home</title>
      </head>
  
      <body>
        <h1>Home Page</h1>
        <p>This is the home page of our application.</p>
      </body> 
    </html>

#Next, modify app/views.py file so that users are served the contents of the home.html file whenever they visit the /template route on your application.

    from flask import render_template
    from app import app 

    @app.route('/')
    def home():
        return "Hello world!"

    @app.route('/template')
    def template():
        return render_template('home.html')

#Finally, stop and restart the Docker containers

    sudo docker stop docker.test && sudo docker start docker.test

#To verify visit browser page 

    localhost:56733/template


