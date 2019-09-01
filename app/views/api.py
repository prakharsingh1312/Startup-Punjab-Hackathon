import os
from flask import Flask, request, render_template, flash, redirect, url_for, session, send_file
from flask import Blueprint, g, jsonify
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
        query = query_db("SELECT password FROM startups where email=%s", (email, ))
        if query is None:
            return jsonify(status=None)
        else:
            if bcrypt.verify(password, query[0][0]):
                return jsonify(status=True)
            else:
                return jsonify(status=False)

@api.route('/notification', methods=["POST"])
def notfication():
    if request.method=="POST":
        query = query_db("SELECT * FROM announcements")
        if query is None:
            query = []
        notifs = []
        for notif in query:
            notifs.append(dict(id=notif[0], title = notif[1], content = notif[2]))
        return jsonify(notifs)

@api.route('/fetch_profile', methods=["POST"])
def fetch_profile():
    if request.method=="POST":
        email = request.json["email"]
        query = query_db("select * from startups where email=%s", (email, ))
        result = dict()
        result["logo_url"] = query[1]
        result["name"] = query[2]
        result["brief"] = query[3]
        result["funded"] = query[6]
        result["email"] = query[7]
        result["mobile"] = query[9]
        result["website"] = query[10]
        result["app_link"] = query[11]
        stage = query("select id, name from stage where id=%s", (query[4], ))
        result["stage"] = dict(id=query[4], name=stage[0][1])
        city = query("select * from city where id=%s", (query[5], ))
        result["city"] = dict(id=query[5], name=city[0][1], pincode=city[0][2])
        industry = query("select id, name from industry where id=%s", (query[12], ))
        result["industry"] = dict(id=query[12], name=industry[0][1])
        sector = query("select id, name from sector where id=%s", (query[13], ))
        result["sector"] = dict(id=query[13], name=sector[0][1])

        return jsonify(result)
