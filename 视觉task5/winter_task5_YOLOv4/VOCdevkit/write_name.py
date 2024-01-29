import os

def write_name(name_file_path,path_file_path,task_path):

    name_file = open(name_file_path , 'r' , encoding= 'utf-8')
    path_file = open(path_file_path , 'w' , encoding= 'utf-8')
    for i in name_file:
        i = i[:-1]
        path = f"{task_path}/{i}.jpg\n"
        path_file.write(path)
    path_file.close()
    name_file.close()

if __name__ == "_main__":
    task_path = "/home/ding/deeplearning_task/winter_task5/VOCdevkit/VOC2007/JPEGImages"
    name_file_path1 = "/home/ding/deeplearning_task/winter_task5/VOCdevkit/VOC2007/ImageSets/Main/train.txt"
    path_file_path1 = "/home/ding/deeplearning_task/winter_task5/VOCdevkit/2007_train.txt"
    name_file_path2 = "/home/ding/deeplearning_task/winter_task5/VOCdevkit/VOC2007/ImageSets/Main/test.txt"
    path_file_path2 = "/home/ding/deeplearning_task/winter_task5/VOCdevkit/2007_test.txt"
    name_file_path3 = "/home/ding/deeplearning_task/winter_task5/VOCdevkit/VOC2007/ImageSets/Main/val.txt"
    path_file_path3 = "/home/ding/deeplearning_task/winter_task5/VOCdevkit/2007_val.txt"    
    write_name(name_file_path1,path_file_path1,task_path)
    write_name(name_file_path2,path_file_path2,task_path)
    write_name(name_file_path3,path_file_path3,task_path)