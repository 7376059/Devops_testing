from flask import Flask
from flask import request
import json


app = Flask(__name__)

@app.route('/')
def hello_world():
        return 'Hello, World!'


@app.route('/login')
def login():
    return '''
    <form action="/login" method="post">
         Username: <input name="username" type="text" />
         Password: <input name="password" type="password" />
         <input value="Login" type="submit" />
    </form>
        '''


@app.route('/login', methods=['POST'])
def do_login():
    data = request.json
    print data
 ##   if (data.username == "Bob" and  data.password == "1234"):
   ##     return "<p>Your login information was correct.</p>"
   ## else:
    ##    return "<p>Login failed.</p>"
##@app.route('/', methods=['GET', 'POST'])
##def responce():
 ##   if request.method == 'POST':
  ##      return 'thats the POST'
   ## else:
   ## return 'hello first time'
##


#def helloIndex():
 #   return 'Hello World from Python Flask!'
app.run(host='0.0.0.0', port=3000)
