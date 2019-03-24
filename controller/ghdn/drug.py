from flask import Blueprint
from flask import render_template, request,make_response,send_file
import common.db_helper as db
from common.utils import json_response
import json
drug = Blueprint('drug', __name__)


@drug.route('/',methods=['get'])
def index():
    conn = db.get_connection()
    cursor = conn.cursor()
    cursor.execute(
        """
        select id,fid,drug from drug where fid!=''
        """
    )
    rows = cursor.fetchall()
    dict_result= []
    for row in rows:
        dict_obj={}
        dict_obj['id'] = row[0]
        dict_obj['fid'] = row[1]
        dict_obj['drug'] =row[2]
        dict_result.append(dict_obj)
    return render_template('ghdn/drug/drug.html', data=dict_result,type='drug')

@drug.route('/detail',methods=['get'])
def detail():
    req=request.args
    id=req.get("id")
    conn = db.get_connection()
    cursor = conn.cursor()
    cursor.execute(
        """
        select fid,drug,type,description,indication,pharmacodynamics,machanismOfAction,stucture,synonyms,SafetyAndHazards from drug where id=%s
        """ % (id)
    )
    rows = cursor.fetchall()
    data = {}
    for row in rows:
        i=0
        data['fid'] = row[i]
        i+=1
        data['drug'] = row[i]
        i += 1
        data['type'] = row[i]
        i += 1
        data['description'] = row[i]
        i += 1
        data['indication'] = row[i]
        i += 1
        data['pharmacodynamics'] = row[i]
        i += 1
        data['machanismOfAction'] = row[i]
        i += 1
        data['stucture'] = row[i]
        i += 1
        data['synonyms'] = row[i]
        i += 1
        data['SafetyAndHazards'] = row[i]

    return render_template('ghdn/drug/detail.html',data=data,type='drug')


@drug.route('/drug_form',methods=['get'])
def drug_form():
    return render_template('ghdn/drug/drug_form.html', type='gene')


@drug.route('/drug_form_submit',methods=['post'])
def drug_form_submit():
    conn = db.get_connection()
    cursor = conn.cursor()
    req = request.form
    fid = req.get('fid')
    drug = req.get('drug')
    type = req.get('type')
    description = req.get('description')
    indication = req.get('indication')
    pharmacodynamics = req.get('pharmacodynamics')
    machanismOfAction = req.get('machanismOfAction')

    para = (fid, drug, type, description,indication,pharmacodynamics,machanismOfAction)
    sql = "insert into drug(fid, drug, type, description,indication,pharmacodynamics,machanismOfAction) values(%s,%s,%s,%s,%s,%s,%s)"
    cursor.execute(sql, para)
    return "1"
