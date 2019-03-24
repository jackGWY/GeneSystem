#!/usr/bin/python3
#coding:utf-8
"""
主程序文件
"""
from flask import Flask

def create_app():
    app = Flask(__name__)
    app.config['SECRET_KEY'] = 'hello-world-2016'
    from controller.home import home as home_blueprint
    from controller.ghdn.home import ghdn as ghdn_blueprint
    from controller.ghdn.drug import drug as drug_blueprint
    from controller.ghdn.network import network as network_blueprint
    from controller.ghdn.gene import gene as gene_blueprint
    from controller.backstage.login import login as login_blueprint
    app.register_blueprint(home_blueprint, url_prefix='/home')
    app.register_blueprint(ghdn_blueprint, url_prefix='/ghdn')
    app.register_blueprint(drug_blueprint, url_prefix='/drug')
    app.register_blueprint(network_blueprint, url_prefix='/network')
    app.register_blueprint(gene_blueprint, url_prefix='/gene')
    app.register_blueprint(login_blueprint, url_prefix='/login')
    return app
