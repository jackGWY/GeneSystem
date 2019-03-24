from flask import Blueprint
from flask import render_template, request,make_response,send_file
import common.db_helper as db
from common.utils import json_response
import json
network = Blueprint('network', __name__)


@network.route('/',methods=['get'])
def index():
    conn = db.get_connection()
    cursor = conn.cursor()
    cursor.execute(
        """
        select id,fid,name,type from network where fid!=''
        """
    )
    rows = cursor.fetchall()
    dict_result= []
    for row in rows:
        dict_obj={}
        dict_obj['id'] = row[0]
        dict_obj['fid'] = row[1]
        dict_obj['name'] =row[2]
        dict_obj['type'] = row[3]
        dict_result.append(dict_obj)
    return render_template('ghdn/network/network.html', data=dict_result,type='network')

@network.route('/getData',methods=['post'])
def getData():
    conn = db.get_connection()
    cursor = conn.cursor()
    cursor.execute(
        """
        select trim(hsa),count(0) total from network_hsa group by trim(hsa)
        """
    )
    rows = cursor.fetchall()
    dict_result = {}
    data_arr=[]
    title_arr=[]
    for index,row in enumerate(rows):
        dict_obj = {}
        dict_obj['name'] = row[0]
        dict_obj['value'] = row[1]
        title_arr.append(row[0])
        data_arr.append(dict_obj)
    dict_result['data']=data_arr
    dict_result['title']=title_arr
    return json_response(dict_result)

@network.route('/detail',methods=['get'])
def detail():
    result={}
    req=request.args
    id=req.get("id")
    fid = req.get("fid")

    conn = db.get_connection()
    cursor = conn.cursor()
    cursor.execute(
        """
        select name,definitionExpanded,type from network t where trim(t.id)=%s 
        """ % (id)
    )
    rows = cursor.fetchall()
    data = {}
    for row in rows:
        i=0
        data['name'] = row[i]
        i+=1
        data['definitionExpanded'] = row[i]
        i += 1
        data['type'] = row[i]


    sql="""
       select t3.* from  network_hsa t2
        inner join hsa t3
        on trim(t3.hsa_id)=trim(t2.hsa)
         where trim(t2.network)='%s' """ % (fid)
    #路通信息
    cursor.execute(sql)
    rows = cursor.fetchall()
    print(sql)
    hsa_data = []
    for row in rows:
        dict_json={}
        i = 0
        dict_json['hsa_id'] = row[i]
        i += 1
        dict_json['disease'] = row[i]
        hsa_data.append(dict_json)

    #基因信息
    cursor.execute(
        """
          select t5.* from gene_network t4 
            inner join gene t5
            on trim(t5.fid)=trim(t4.Gene)
             where trim(t4.network)='%s'
        """ % (fid)
    )
    rows = cursor.fetchall()
    gene_data = []
    for row in rows:
        dict_json = {}
        i = 0
        dict_json['fid'] = row[i]
        i += 1
        dict_json['Gene'] = row[i]
        i += 1
        dict_json['Definition'] = row[i]
        i += 1
        dict_json['Organism'] = row[i]
        gene_data.append(dict_json)

    result['network']=data
    result['hsa'] = hsa_data
    result['gene'] = gene_data
    return render_template('ghdn/network/detail.html', result=result,type='network')

@network.route('/network_form',methods=['get'])
def network_form():
    return render_template('ghdn/network/network_form.html', type='network')


@network.route('/network_form_submit',methods=['post'])
def network_form_submit():
    conn = db.get_connection()
    cursor = conn.cursor()

    req=request.form
    fid=req.get('fid')
    name=req.get('name')
    definitionExpanded=req.get('definitionExpanded')
    type=req.get('type')
    para = (fid, name, definitionExpanded, type)
    sql="insert into network(fid, name, definitionExpanded, type) values(%s,%s,%s,%s)"

    cursor.execute(sql,para)

    return "1"

@network.route('/network_hsa_form',methods=['get'])
def network_hsa_form():
    result={}
    conn = db.get_connection()
    cursor = conn.cursor()
    cursor.execute(
        """
        select fid from network t 
        """
    )
    rows = cursor.fetchall()
    network = []
    for row in rows:
        network.append(row[0])

    cursor.execute(
        """
        select hsa_id from hsa t 
        """
    )
    rows = cursor.fetchall()
    hsa_data = []
    for row in rows:
        hsa_data.append(row[0])

    result['network']=network
    result['hsa'] = hsa_data

    return  render_template('ghdn/network/network_hsa_form.html',result=result, type='network')


@network.route('/network_hsa_form_submit',methods=['post'])
def network_hsa_form_submit():
    conn = db.get_connection()
    cursor = conn.cursor()
    req=request.form
    network=req.get('network')
    hsa=req.get('hsa')
    para = (network, hsa)
    sql="insert into network_hsa(network,hsa) values(%s,%s)"
    cursor.execute(sql,para)
    return "1"


@network.route('/gene_network_form',methods=['get'])
def gene_network_form():
    result = {}
    conn = db.get_connection()
    cursor = conn.cursor()
    cursor.execute(
        """
        select fid from network t 
        """
    )
    rows = cursor.fetchall()
    network = []
    for row in rows:
        network.append(row[0])

    cursor.execute(
        """
        select fid from gene t 
        """
    )
    rows = cursor.fetchall()
    gene_data = []
    for row in rows:
        gene_data.append(row[0])

    result['network'] = network
    result['Gene'] = gene_data

    return render_template('ghdn/network/gene_network_form.html',result=result, type='network')


@network.route('/gene_network_form_submit',methods=['post'])
def gene_network_form_submit():
    conn = db.get_connection()
    cursor = conn.cursor()
    req=request.form
    network=req.get('network')
    Gene=req.get('Gene')
    para = (Gene,network)
    sql="insert into gene_network(Gene,network) values(%s,%s)"
    cursor.execute(sql,para)
    return "1"