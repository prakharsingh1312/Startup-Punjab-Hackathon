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
# from passlib.hash import sha256_crypt as sha

main = Blueprint('main', __name__)

@main.route('/')
def index():
    return render_template("dashboard.html", **locals())

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
