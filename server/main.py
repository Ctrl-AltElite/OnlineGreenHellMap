from replit import db
import flask
import os
import json


app = flask.Flask(__name__)

@app.route("/auth", methods=["GET", "POST"])
def Auth():
    if flask.request.headers.get("Authorization") == os.environ['PASSWORD']:
        return flask.Response(flask.request.headers.get("Authorization"), status=200)
    return flask.Response(status=204)

@app.route("/reg", methods=["GET", "POST"])
def Register():
    if flask.request.headers.get("Authorization") != os.environ['PASSWORD']:
        return flask.Response(status=204)
    
    name = flask.request.form.get("name")
    w = flask.request.form.get("w")
    s = flask.request.form.get("s")
    
    db[name] = {"w": w, "s": s, "id": len(db.keys())}
    json.dump(db, open("db.json", "w"))
        
    return "reg", 200
    
@app.route("/render/<int>")
def Render(id: int):
    for k in db.keys():
        if db[k]["id"] == id:
            return "Location:\n  Name: {}\n  W: {}\n  S: {}".format(db[k]["name"], db[k]["w"], db[k]["s"])
    return "-- err --"

app.run()