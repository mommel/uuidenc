from flask import Flask, request, render_template, redirect, send_from_directory
import os
import subprocess
import socket

app = Flask(__name__)

@app.route("/")
def hello():
    return render_template('initial.html') 

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=80)