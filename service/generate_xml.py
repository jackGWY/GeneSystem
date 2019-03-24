#!/usr/bin/python3
from xml.etree import ElementTree as ET
import os
"""
读xml文件
"""
def read_xml(filename):
    try:
        tree = ET.ElementTree()
        tree.parse(filename)
    except Exception as e:
        raise e

    return tree

"""
写xml文件
"""
def write_xml(tree, fileName):
    try:
        tree.write(fileName, xml_declaration=True, encoding='utf-8')
    except Exception as e:
        raise e


"""
递归出所有的dict类型作为下一个节点
"""
def createElement(data_dict, root, labelProperty=None):
    try:
        if data_dict:
            for k, v in data_dict.items():

                if isinstance(v, dict):
                    if labelProperty and k in labelProperty:  # 如果属性字典中存在该标签
                        elem = ET.SubElement(root, k, labelProperty.get(k))
                    else:
                        elem = ET.SubElement(root, k)
                    # 支持json无限子节点添加
                    createElement(v, elem, labelProperty)

                elif isinstance(v, list):
                    # 支持json无限子节点添加
                    for children_column in v:
                        if children_column:
                            if labelProperty and k in labelProperty:
                                children_elem = ET.SubElement(root, k, labelProperty.get(k))
                            else:
                                children_elem = ET.SubElement(root, k)
                            createElement(children_column, children_elem, labelProperty)
                else:
                    if labelProperty and k in labelProperty:
                        elem = ET.SubElement(root, k, labelProperty.get(k))
                    else:
                        elem = ET.SubElement(root, k)
                    elem.text = ordCode(str(v))

    except RuntimeError:
        raise RuntimeError('createElement：发生运行时异常,但是我找不到异常详情')

#获取字符的
def ordCode(value):
    newValue=''
    for i in value:
        if int(ord(i))>31:
            newValue+=i
    return newValue

"""
写xml文件(v1)
labelProperty :标签属性  格式 {'标签名':{'属性名':属性值},'标签名':{'属性名':属性值}}
"""
def write_rule_xml(data_dict, filename, rootTag='config', labelProperty=None):
    flag = True
    try:
        # 已经存在xml文件，追加rule节点
        if os.path.exists(filename):
            tree=read_xml(filename)
            root = tree.getroot()
            createElement(data_dict, root, labelProperty)
            write_xml(tree, filename)
        # 不存在xml文件，新加一个xml
        else:
            root = ET.Element(rootTag)
            createElement(data_dict, root, labelProperty)
            tree = ET.ElementTree(root)
            write_xml(tree, filename)
    except Exception as e:
        raise e
        flag = False

    return flag

def update_project_by_id(file_name, dict_data, id):
    """
    :param file_name 文件名
    :param dict_data: 要修改的具体内容
    :param id: 修改条件
    :return: 真假
    """
    flag = True
    try:

        # ; 加载规则文件
        tree = read_xml(file_name)
        #: 用XPATH方式查找符合条件的内容
        ruleNode = tree.find('project/[id="%s"]' % (id))
        #: 遍历要修改的节点内容
        for key in dict_data:
            if ruleNode.find(key) != None and dict_data.get(key) != None:
                ruleNode.find(key).text = str(dict_data.get(key))
        #: 修改内容
        write_xml(tree, file_name)

    except Exception as e:
        flag = False
        raise e

    return flag
