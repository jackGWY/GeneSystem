from flask import Blueprint
from flask import render_template, request,make_response,send_file
import common.db_helper as db
from common.utils import json_response
import json
gene = Blueprint('gene', __name__)


@gene.route('/',methods=['get'])
def index():
    conn = db.get_connection()
    cursor = conn.cursor()
    cursor.execute(
        """
        select id,fid,Gene,Definition from gene
        """
    )
    rows = cursor.fetchall()
    dict_result= []
    for row in rows:
        dict_obj={}
        dict_obj['id'] = row[0]
        dict_obj['fid'] = row[1]
        dict_obj['gene'] =row[2]
        dict_obj['Definition'] = row[3]
        dict_result.append(dict_obj)
    return render_template('ghdn/gene/gene.html', data=dict_result, type='gene')

@gene.route('/getData',methods=['post'])
def getData():
    conn = db.get_connection()
    cursor = conn.cursor()
    cursor.execute(
        """
        select gene,count(0) total from gene_hsa group by gene
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

@gene.route('/detail',methods=['get'])
def detail():
    result={}
    req=request.args
    id=req.get("id")
    fid = req.get("fid")

    conn = db.get_connection()
    cursor = conn.cursor()
    cursor.execute(
        """
        select Gene,Definition,Organism from gene t where t.id=%s
        """ % (id)
    )
    rows = cursor.fetchall()
    data = {}
    for row in rows:
        i=0
        data['Gene'] = row[i]
        i+=1
        data['Definition'] = row[i]
        i += 1
        data['Organism'] = row[i]


    #网络
    cursor.execute(
        """
       select t2.* from gene_network t1 
        inner join network t2 
        on t1.network=t2.fid
        where trim(t1.Gene)='%s'
        """ % (fid)
    )
    rows = cursor.fetchall()
    network_arr = []
    for row in rows:
        dict_obj={}
        i = 0
        dict_obj['fid'] = row[i]
        i += 1
        dict_obj['name'] = row[i]
        i += 1
        dict_obj['definitionExpanded'] = row[i]
        i += 1
        dict_obj['type'] = row[i]
        network_arr.append(dict_obj)

    result['data']=data
    result['network']=network_arr


    return render_template('ghdn/gene/detail.html', result=result,type='gene')




@gene.route('/gene_form',methods=['get'])
def gene_form():
    return render_template('ghdn/gene/gene_form.html', type='gene')


@gene.route('/gene_hsa_form',methods=['get'])
def gene_hsa_form():
    result = {}
    conn = db.get_connection()
    cursor = conn.cursor()
    cursor.execute(
        """
        select trim(fid) from gene t 
        """
    )
    rows = cursor.fetchall()
    gene_data = []
    for row in rows:
        gene_data.append(row[0])

    cursor.execute(
        """
        select hsa_id from hsa t 
        """
    )
    rows = cursor.fetchall()
    hsa_data = []
    for row in rows:
        hsa_data.append(row[0])

    result['gene'] = gene_data
    result['hsa'] = hsa_data
    return render_template('ghdn/gene/gene_hsa_form.html',result=result, type='gene')


@gene.route('/hsa_form',methods=['get'])
def hsa_form():
    return render_template('ghdn/gene/hsa_form.html', type='gene')




@gene.route('/gene_form_submit',methods=['post'])
def gene_form_submit():
    conn = db.get_connection()
    cursor = conn.cursor()
    req=request.form
    fid=req.get('fid')
    Gene = req.get('Gene')
    Definition = req.get('Definition')
    Organism = req.get('Organism')
    para = (fid, Gene,Definition,Organism)
    sql="insert into gene(fid,Gene,Definition,Organism) values(%s,%s,%s,%s)"
    cursor.execute(sql,para)
    return "1"




@gene.route('/gene_hsa_form_submit',methods=['post'])
def gene_hsa_form_submit():
    conn = db.get_connection()
    cursor = conn.cursor()
    req=request.form
    gene=req.get('gene')
    hsa = req.get('hsa')
    para = (gene, hsa)
    sql="insert into gene_hsa(gene,hsa) values(%s,%s)"
    cursor.execute(sql,para)
    return "1"




@gene.route('/hsa_form_submit',methods=['post'])
def hsa_form_submit():
    conn = db.get_connection()
    cursor = conn.cursor()
    req=request.form
    hsa_id=req.get('hsa_id')
    disease = req.get('disease')
    para = (hsa_id, disease)
    sql="insert into hsa(hsa_id,disease) values(%s,%s)"
    cursor.execute(sql,para)
    return "1"