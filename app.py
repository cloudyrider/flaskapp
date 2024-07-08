from flask import Flask
app = Flask(__name__)

@app.route("/")
def home():
  return "Hello Flask"

def test():
  continue

def test2():
  continue
