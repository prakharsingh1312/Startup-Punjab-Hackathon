import math
import os
from datetime import date
from functools import wraps
from tempfile import mkdtemp
from flask_mail import Mail, Message
from app import *
from flask import (Blueprint, Flask, flash, g, redirect, render_template,
                   request, send_file, session, url_for, jsonify)
from flask_mysqldb import MySQL
from flask_session import Session
import csv
from passlib.hash import bcrypt

main = Blueprint('main', __name__)

@main.route('/', methods=["GET","POST"])
@login_required
def index():
    announcements = query_db("SELECT * FROM announcements")
    if request.method=="GET":
        query = query_db("SELECT brief FROM startups where email=%s", (session["email"], ))[0][0]
        cities = query_db("SELECT * from city")
        industries = query_db("SELECT * FROM industry")
        sectors = query_db("SELECT * FROM sector")
        industries_sectors = query_db("SELECT * FROM industry_sector")
        services = query_db("SELECT * FROM services")

        #print(industries_sector)

        visible = False
        if query is None:
            visible  = True
        return render_template("dashboard.html", **locals())
    else:
        phone = request.form["phone"]
        city = request.form["city"]
        status = request.form["status"]
        brief = request.form["brief"]
        website = request.form["website"]
        app = request.form["app"]
        #stage = request.form["stage"]
        #sector = request.form["sector"]
        industry = request.form["industry"]
        services = request.form["services"]

        print(int(phone))
        print(city)
        print(status)
        print(brief)
        print(website)
        print(app)
        #print(stage)
        #print(sector)
        print(int(industry))
        print(services)
        print(session["email"])
        execute_db("update startups set mobile = %d, brief = '%s', website = '%s', app_link = '%s', i_id = %d where email = '%s';",(
            int(phone),
            brief,
            website,
            app,
            int(industry),
            session["email"],


        ))

        print()
        return render_template("dashboard.html", **locals())


@main.route('/edit_info', methods=["GET", "POST"])
@login_required
def edit_info():
    announcements = query_db("SELECT * FROM announcements")
    if request.method=="POST":
        phone = request.form["phone"]
        city = request.form["city"]
        status = request.form["status"]
        brief = request.form["brief"]
        website = request.form["website"]
        app = request.form["app"]
        #stage = request.form["stage"]
        #sector = request.form["sector"]
        #industry = request.form["industry"]
        services = request.form["services"]

        execute_db("update startups set mobile = %d, brief = '%s', website = '%s', app_link = '%s', i_id = %d where email = '%s';",(
            int(phone),
            brief,
            website,
            app,
            int(industry),
            session["email"],
        ))
        return redirect(url_for('main.index'))
    else:
        details = query_db("SELECT * from startups where email = '%s'", (session["email"],))
        return redirect(url_for('main.index'), **locals())

@main.route('/drop', methods=["GET", "POST"])
def menu():
    announcements = query_db("SELECT * FROM announcements")
    if request.method=="POST":
        industries = query_db("SELECT * FROM industry")
        sectors = query_db("SELECT * FROM sector")
        industries_sectors = query_db("SELECT * FROM industry_sector")
        selected_value = request.form["selectedValue"]

        ret_sec = ""

        print(selected_value)

        for data in industries_sectors:
            print(data[0])
            if int(data[0]) == int(selected_value):
                #print(data[0])
                #ret_sec.append(sectors[data[1]][0])
                ret_sec=ret_sec+str(sectors[data[1]-1][1])+","
        print(ret_sec)
        #ret_sec = jsonify(ret_sec)

        ret_sec = str(ret_sec)


        print(ret_sec)
        return ret_sec


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
