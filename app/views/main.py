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
# from passlib.hash import sha256_crypt as sha

main = Blueprint('main', __name__)

@main.route('/')
def index():
    return render_template("dashboard.html", **locals())
