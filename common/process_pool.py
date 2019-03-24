# /usr/bin/python
# coding=utf-8
import datetime
import multiprocessing
from multiprocessing import Value

class ProcessPool():

    __pool = None

    __share_manager_arr = None
    __share_manager_dict = None
    __share_manager_dict_0 = None

    def __init__(self):
        pass

    @staticmethod
    def instance_manager():

        ProcessPool.instance_manager_arr()
        ProcessPool.instance_manager_dict()
        ProcessPool.instance_manager_dict_0()

    @staticmethod
    def instance_manager_arr():
        # 共享内存为空，初始化
        if ProcessPool.__share_manager_arr is None:
            ProcessPool.__share_manager_arr = multiprocessing.Manager().list()

        return ProcessPool.__share_manager_arr

    @staticmethod
    def instance_manager_dict():
        #共享内存为空，初始化
        if ProcessPool.__share_manager_dict is None:
            ProcessPool.__share_manager_dict = multiprocessing.Manager().dict()

        return ProcessPool.__share_manager_dict

    @staticmethod
    def instance_manager_dict_0():
        # 共享内存为空，初始化
        if ProcessPool.__share_manager_dict_0 is None:
            ProcessPool.__share_manager_dict_0 = multiprocessing.Manager().dict()

        return ProcessPool.__share_manager_dict_0

    @staticmethod
    def instance_pool(flagx, count=0, init_fun = None, init_fun_param=None):

        if ProcessPool.__pool is None or flagx is True:
            if count == 0:
                if init_fun is not None:
                    ProcessPool.__pool = multiprocessing.Pool(None, init_fun, init_fun_param)
                else:
                    ProcessPool.__pool = multiprocessing.Pool()
            else:
                ProcessPool.__pool = multiprocessing.Pool(count)

        return ProcessPool.__pool

    def get_pool_count(self):
        if multiprocessing.cpu_count() >= 4:
            return int(multiprocessing.cpu_count() - 2)
        else:
            return multiprocessing.cpu_count()



