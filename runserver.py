#!/usr/bin/python3
#coding:utf-8
from click import command
from main import create_app
from flask import render_template

@command()
def main():
    app = create_app()

    app.run(port=8040,debug=True,host='127.0.0.1',threaded=True)

if __name__ == '__main__':
    main()
