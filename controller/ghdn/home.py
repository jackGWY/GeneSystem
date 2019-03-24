from flask import Blueprint,session
from flask import render_template, request,make_response,send_file
import common.db_helper as db
from common.utils import json_response
import json
ghdn = Blueprint('ghdn', __name__)

@ghdn.route('/')
def index():
    return render_template('ghdn/index.html',type='home')

@ghdn.route('/hsa',methods=['get'])
def hsa():
    req=request.args
    id=req.get('id')
    return  render_template('ghdn/hsa/hsa.html',id=id,type='pathway')

@ghdn.route('/quitSystem',methods=['get'])
def quitSystem():
    if session['username'] is not None:
        del session['username']
        del session['roleid']
    return render_template('backgstage/login.html')

