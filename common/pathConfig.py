#!/usr/bin/python3
import datetime
project_xml_path='xml/project_info.xml'

# 获取当前机器时间
def now_time():
    return datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')


#导出文件保存的地址
export_txt_path='txt/'

#进程对象
pool=None

def current_time():
    i = datetime.datetime.now()
    return "%s%s%s%s%s%s" % (i.year,i.month,i.day,i.hour,i.minute,i.second)