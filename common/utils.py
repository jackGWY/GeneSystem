#!/usr/bin/python3
from flask import make_response
from json import dumps
import datetime
def json_response(data, status_code=200):
    data = dumps(data)
    resp = make_response(data, status_code)
    resp.headers['Content-Type'] = 'application/json'
    return resp


def parse_row(cursor,row):
    dict_keys = [r[0].lower() for r in cursor.description]
    new = list(row)
    for index, i in enumerate(new):
        if isinstance(i, datetime.datetime):
            try:
                new[index] = str(i)
            except Exception as e:
                print('=============Ora.get_rows日期转换错误===================', i, e)
                new[index] = i

    row = tuple(new)
    return dict(zip(dict_keys, '' if row is None else row))


def parse_rows(cursor,rows):
    dict_keys = [r[0].lower() for r in cursor.description]
    dict_rows = []
    for row in rows:
        new = list(row)
        for index, i in enumerate(new):
            if isinstance(i, datetime.datetime):
                try:
                    new[index] = str(i)
                except Exception as e:
                    print('=============Ora.get_rows日期转换错误===================', i, e)
                    new[index] = i

        row = tuple(new)
        dict_rows.append(dict(zip(dict_keys, '' if row is None else row)))
    rows = dict_rows
    return rows

