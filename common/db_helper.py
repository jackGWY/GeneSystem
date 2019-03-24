#!/usr/bin/python3
import pymysql

def get_cursor():
    connection = pymysql.connect(host='localhost',
                                 user='root',
                                 password='421421',
                                 db='genesystem',
                                 charset='utf8'
                                 )
    cursor = connection.cursor()
    return cursor


def get_connection():
    connection = pymysql.connect(host='localhost',
                                 user='root',
                                 password='421421',
                                 db='genesystem',
                                 charset='utf8'
                                 )
    return connection


def colose_conn(conn,cursor):
    cursor.close()
    conn.close()

