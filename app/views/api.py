import os
from flask import Flask, request, render_template, flash, redirect, url_for, session, send_file
from flask import Blueprint, g
from flask_mysqldb import MySQL
from passlib.hash import bcrypt
from flask_session import Session
from tempfile import mkdtemp
from functools import wraps
from datetime import date
from app import *

api = Blueprint('api', __name__,url_prefix='/api')

@api.route('/login', methods=["POST"])
def login():
    if request.method=="POST":
        email = request.json["email"]
        password = request.json["password"]
        query = query_db("SELECT password FROM startup where email=%s", (email, ))
        if query is None:
            return jsonify(status=False)
        else:
            if bcrypt.verify(password, query[0][0]):
                return jsonify(status=True)
            else:
                return jsonify(status=False)
