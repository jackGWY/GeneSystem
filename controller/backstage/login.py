#!/usr/bin/python3
from flask import Blueprint,Flask,session
from flask import render_template, request,make_response,send_file
import common.db_helper as db
from common.utils import json_response
import json
login = Blueprint('login', __name__)


@login.route('/')
def index():
    return render_template('backgstage/login.html')




@login.route('/register')
def register():
    return render_template('backgstage/register.html')


@login.route('/register_submit',methods=['post'])
def register_submit():
    result = "0"
    conn = db.get_connection()
    cursor = conn.cursor()
    req = request.form
    username = req.get('username')
    password = req.get('password')
    confPassword = req.get('confPassword')
    if password==confPassword:
        option = (username, password,1)
        sql = "insert into tb_user(username,password,roleid) values(%s,%s,%s)"
        cursor.execute(sql, option)
        result="1"
    else:
        result="2"
    return result


@login.route('/login_submit',methods=['post'])
def login_submit():
    result="0"
    conn = db.get_connection()
    cursor = conn.cursor()
    req=request.form
    username=req.get('username')
    password=req.get('password')
    option=(username,password)
    sql="select username,password,roleid from tb_user t where username=%s and password=%s"
    cursor.execute(sql,option)
    rows = cursor.fetchall()
    if len(rows)==1:
        session['username']=rows[0][1]
        session['roleid'] = rows[0][2]
        result="1"
    return result



@login.route('/toIndex')
def toIndex():
    return render_template('ghdn/index.html')