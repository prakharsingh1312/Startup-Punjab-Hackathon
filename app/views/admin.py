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

admin = Blueprint('admin', __name__,url_prefix='/admin')

@admin.route('/login', methods=["GET", "POST"])
def login():
    if request.method=="POST":
        email = request.form["email"]
        password = request.form["password"]
        query = query_db("SELECT password FROM admin where email=%s", (email, ))
        if query is None:
            flash("Email Is not Registered", "danger")
        else:
            if bcrypt.verify(password, query[0][0]):
                session["admin"] = email
                flash("Logged In Successfully", "success")
                return redirect(url_for('admin.index'))
            else:
                flash("Password Incorrect!", "danger")
        return redirect(url_for('admin.login'))
    return render_template("admin/login.html", **locals())

@admin.route('/logout')
def logout():
    session.clear()
    return redirect(url_for("admin.login"))

@admin.route('/', methods=["GET", "POST"])
@admin_required
def index():
    announcements = query_db("SELECT * FROM announcements")
    return render_template("dashboard.html", **locals())

@admin.route('/add_announment', methods=["GET", "POST"])
@admin_required
def add_announment():
    announcements = query_db("SELECT * FROM announcements")
    if request.method=="POST":
        title = request.form["title"]
        content = request.form["content"]
        execute_db("INSERT INTO announcements(title, content) values(%s, %s);", (title, content, ))
        flash("Announcement Added Successfully", "success")
        return redirect(url_for('admin.index'))
    return render_template("admin/add_announcement.html", **locals())
