#!/usr/bin/python3

import common.db_helper as db


tablename='tb_assets_detail'
def insert_demo():
    cursor=db.get_cursor()

    cursor.execute("select column_name,data_type,column_comment from information_schema.COLUMNS where table_name = '%s'" % tablename)

    rows=cursor.fetchall()
    insert_sql="insert into %s" % (tablename)
    columns=""
    columns_values=""
    type_list=[]
    type_values_list=[]
    for index,row in enumerate(rows):
        columnname=row[0]
        type=row[1]
        comment=row[2]
        if index==len(rows)-1:
            columns += columnname
            columns_values += "?%s" % (columnname)
        else:
            columns+=row[0]+","
            columns_values+="?%s," % (columnname)

        if type=="varchar":
            type="String"
        elif type=="float":
            type="String"
        elif type=="datetime":
            type="DateTime"
        elif type=="int":
            type="String"

        if comment.find("日期")>0:
            comment="this.%s.Value" % (columnname)
        elif comment.find("下拉框")>0:
            comment = "this.%s.SelectedValue" % (columnname)
        else:
            comment = "this.%s.Text" % (columnname)
        type_list.append("""new MySqlParameter("?%s",MySqlDbType.%s)""" % (columnname,type))
        type_values_list.append("""
parass[kkk].Value = %s;
kkk+=1;""" % (comment))

    insert_sql="%s(%s) values(%s)" % (insert_sql,columns,columns_values)

    print(insert_sql)

    for t in type_list:
        print(t+",")

    for t in type_values_list:
        print(t)

def load_demo():
    cursor = db.get_cursor()

    cursor.execute("select column_name,data_type,column_comment from information_schema.COLUMNS where table_name = '%s'" % tablename)

    rows = cursor.fetchall()

    for index, row in enumerate(rows):
        columnname = row[0]
        if columnname=="c99" or columnname=="c100":
            continue
        type = row[1]
        comment=row[2]

        if type == "varchar":
            type = "String"
        elif type == "float":
            type = "Float"
        elif type == "date":
            type = "Date"
        elif type == "int":
            type = "Int32"

        text=""
        if comment :
            if comment.find('下拉框')>0:
                comment='SelectedValue'
                text = """this.%s.%s=reader["%s"]!=null ? reader["%s"].ToString() : null;""" % (columnname, comment, columnname,columnname)
            elif comment.find('日期')>0:
                comment = 'Value'
                text = """this.%s.%s=reader["%s"]!=null ?Convert.ToDateTime( reader["%s"]) : DateTime.Now;""" % (columnname, comment,columnname, columnname)
            else:
                comment="Text"
                text = """this.%s.%s=reader["%s"]!=null ? reader["%s"].ToString() : null;""" % (columnname, comment, columnname,columnname)


        print(text)


def update_demo():
    cursor = db.get_cursor()

    cursor.execute(
        "select column_name,data_type,column_comment from information_schema.COLUMNS where table_name = '%s'" % tablename)

    rows = cursor.fetchall()

    update_content_list=[]
    fileds=""
    for index, row in enumerate(rows):
        columnname = row[0]
        if columnname == "c99" or columnname == "c100":
            continue
        type = row[1]
        comment = row[2]

        if type == "varchar":
            type = "String"
        elif type == "float":
            type = "Float"
        elif type == "date":
            type = "Date"
        elif type == "int":
            type = "Int32"


        if comment.find("日期")>0:
            comment="this.%s.Value" % (columnname)
        elif comment.find("下拉框")>0:
            comment = "this.%s.SelectedValue" % (columnname)
        else:
            comment = "this.%s.Text" % (columnname)

        fileds+="%s=?%s," % (columnname,columnname)

        text = ""
        para_value="""parass[i].Value=%s;""" % (comment)
        i_variable="i+=1;"

        print(para_value)
        print(i_variable)
        if text:
            update_content_list.append(text)

    print(fileds)
    for t in update_content_list:
        print(t)


if __name__=="__main__":
    insert_demo()