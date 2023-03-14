from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, world!'

if __name__ == '__main__':
    #app.run(port=8080)
    #In the Python code, app.run() binds to port 8080 on localhost by default. Since you are sending requests from outside, you need to bind it to 0.0.0.0 to allow requests from outside the host.
    app.run(host='0.0.0.0', port=8080)


