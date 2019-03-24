#!/usr/bin/python3
#coding:utf-8
"""
  Author:  dog - <yafeile@sohu.com>
  Purpose: 
  Created: 2016年12月21日
"""
from flask import Blueprint
from flask import render_template, request,make_response,send_file
import common.db_helper as db
from common.utils import json_response
import json
home = Blueprint('home', __name__)


@home.route('/')
def index():

    #locationList = getData(None)
    dict_obj=get_dict()
    return render_template('home/index.html',dict_obj=dict_obj,para={})


@home.route('/search',methods=['post'])
def search():
    req=request.form
    mu=req.get('mu')
    ke = req.get('ke')
    chongzhong = req.get('chongzhong')
    clstq = req.get('clstq')
    para={'mu':mu,'ke':ke,'chongzhong':chongzhong,'clstq':clstq}
    locationList = getData(para)
    tongjituData=tongjitu(para)
    tongjituData1=tongjitu1(para)
    dict_obj = get_dict()

    type=0
    if tongjituData and tongjituData1:
        type=chongzhong


    return render_template('home/index.html', data=locationList, dict_obj=dict_obj,tongjituData=tongjituData,tongjituData1=tongjituData1,para=para,type=type)

@home.route('/login',methods=['get'])
def login():
    print('............')
    return render_template('home/../templates/backgstage/login.html')



def get_dict():
    conn = db.get_connection()
    cursor = conn.cursor()
    cursor.execute(
        """
        select 
            (select GROUP_CONCAT(ke) from (
            select t.ke from QYZTXX t  group by t.ke) t  ) kes,
            
            (select group_concat(mu) from (
            select t.mu from QYZTXX t  group by t.mu) t) mus,
        
            (select group_concat(chongzhong) from (
            select t.chongzhong from QYZTXX t  group by t.chongzhong) t) chongzhongs,
        
            (select group_concat(clstq) from (
            select t.clstq from QYZTXX t  group by t.clstq) t ) clstqs
        from dual
        """
    )
    rows = cursor.fetchall()
    dict_obj={}
    for row in rows:
        dict_obj['kes']=[k for k in row[0].split(',')]
        dict_obj['mus'] = [k for k in row[1].split(',')]
        dict_obj['chongzhongs'] = [k for k in row[2].split(',')]
        dict_obj['clstqs'] = [k for k in row[3].split(',')]

    return dict_obj



#获取百度地图坐标，企业名称，地址，社会统一信用代码
def getData(para):
    conn = db.get_connection()
    cursor = conn.cursor()
    sql="select BAIDU_GEOCODES,UNISCID,ENTNAME,DOM,MU,KE,XUEMING,MEN from QYZTXX t where  BAIDU_GEOCODES is not null "

    if para:
        if para.get('mu',''):
            sql+=" and mu='%s'" % (para.get('mu',''))
        if para.get('ke',''):
            sql += " and ke='%s'" % (para.get('ke', ''))
        if para.get('chongzhong',''):
            sql += " and chongzhong='%s'" % (para.get('chongzhong', ''))
        if para.get('clstq',''):
            sql += " and clstq='%s'" % (para.get('clstq', ''))
    print(sql)
    cursor.execute(sql)
    rows = cursor.fetchall()
    locationList = []
    for row in rows:
        data = eval(row[0])
        data['result']['location']["uniscid"] = row[1]
        data['result']['location']["entname"] = row[2]
        data['result']['location']["dom"] = row[3]
        data['result']['location']["mu"] = row[4]
        data['result']['location']["ke"] = row[5]
        data['result']['location']["xueming"] = row[6]
        data['result']['location']["men"] = row[7]
        locationList.append(data['result']['location'])
    return locationList



def tongjitu(para):
    conn = db.get_connection()
    cursor = conn.cursor()
    sql="select t.dom letter,(count(0)/(select count(0) from QYZTXX ))*100 frequency from  QYZTXX t where 1=1"


    if para:
        if para.get('mu', ''):
            sql += " and mu='%s'" % (para.get('mu', ''))
        if para.get('ke', ''):
            sql += " and ke='%s'" % (para.get('ke', ''))
        if para.get('chongzhong', ''):
            sql += " and chongzhong='%s'" % (para.get('chongzhong', ''))
        if para.get('clstq', ''):
            sql += " and clstq='%s'" % (para.get('clstq', ''))

    sql+="  group by  t.dom"
    print(sql)
    cursor.execute(sql)
    rows = cursor.fetchall()
    list=[]
    for row in rows:
        list.append({'letter':row[0],'frequency':int(row[1])})

    return list




def tongjitu1(para):
    conn = db.get_connection()
    cursor = conn.cursor()
    sql="select t.clstq letter,(count(0)/(select count(0) from QYZTXX where type=3))*100 frequency from  QYZTXX t where 1=1"


    if para:
        if para.get('mu', ''):
            sql += " and mu='%s'" % (para.get('mu', ''))
        if para.get('ke', ''):
            sql += " and ke='%s'" % (para.get('ke', ''))
        if para.get('chongzhong', ''):
            sql += " and chongzhong='%s'" % (para.get('chongzhong', ''))
        if para.get('clstq', ''):
            sql += " and clstq='%s'" % (para.get('clstq', ''))

    sql+="  group by  t.clstq"
    print(sql)
    cursor.execute(sql)
    rows = cursor.fetchall()
    list=[]
    for row in rows:
        list.append({'letter':row[0],'frequency':int(row[1])})

    return list


