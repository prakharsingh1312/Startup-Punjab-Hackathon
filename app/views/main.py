import math
import os
from datetime import date
from functools import wraps
from tempfile import mkdtemp
from flask_mail import Mail, Message
from app import *
from flask import (Blueprint, Flask, flash, g, redirect, render_template,
                   request, send_file, session, url_for)
from flask_mysqldb import MySQL
from flask_session import Session
import csv
from passlib.hash import bcrypt

main = Blueprint('main', __name__)

@main.route('/')
@login_required
def index():
    announcements = query_db("SELECT * FROM announcements")
    query = query_db("SELECT brief FROM startups where email=%s", (session["email"], ))[0][0]
    cities = query_db("SELECT * from city")
    industries = query_db("SELECT * FROM industry")
    sectors = query_db("SELECT * FROM sector")
    industries_sector = query_db("SELECT * FROM industry_sector")
    services = query_db("SELECT * FROM services")

    #print(industries_sector)

    visible = False
    if query is None:
        visible  = True
    return render_template("dashboard.html", **locals())

@main.route('/register', methods=["GET", "POST"])
def register():
    if request.method=="POST":
        if request.form.get("optionsCheckboxes"):
            name = request.form["name"]
            email = request.form["email"]
            password = request.form["password"]
            conf_pass = request.form["conf_pass"]
            if password==conf_pass:
                if query_db("SELECT * FROM startups where email=%s", (email, )) is None:
                    password =  bcrypt.using(rounds=8).hash(password)
                    execute_db("INSERT INTO startups(name, email, password) values(%s, %s, %s);",(
                        name,
                        email,
                        password,
                    ))
                    flash("Registered Successfully", "success")
                else:
                    flash("Email Already Registered", "danger")
            else:
                flash("Passwords Dont Match!", "danger")
        else:
            flash("Please accept Terms \& Conditions!", "danger")
        return redirect(url_for('main.register'))
    return render_template("register.html", **locals())

@main.route('/login', methods=["GET", "POST"])
def login():
    if request.method=="POST":
        email = request.form["email"]
        password = request.form["password"]
        query = query_db("SELECT name, password FROM startups where email=%s", (email, ))
        if query is None:
            flash("Email Is not Registered", "danger")
        else:
            if bcrypt.verify(password, query[0][1]):
                session["name"] = query[0][0]
                session["email"] = email
                flash("Logged In Successfully", "success")
                return redirect(url_for('main.index'))
            else:
                flash("Password Incorrect!", "danger")
        return redirect(url_for('main.login'))
    return render_template("login.html", **locals())

@main.route('/logout')
def logout():
    session.clear()
    return redirect(url_for("main.login"))

@main.route('/populate')
def populate():
    with open('services.csv', mode='r') as csv_file:
        csv_reader = csv.DictReader(csv_file)
        line_count = 0
        for row in csv_reader:
            if line_count > 0:
                execute_db("INSERT INTO services(name) values(%s);", (row["services"], ))
            line_count += 1
    return "Success"
