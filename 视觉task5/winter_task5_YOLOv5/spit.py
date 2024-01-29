import os
import random

trainval_percent = 0.8  #可以自己修改
train_percent = 0.75   #可以自己修改
xmlfilepath = "/home/ding/deeplearning_task/winter_task5/VOCdevkit/VOC2007/Annotations"
txtsavepath = "/home/ding/deeplearning_task/winter_task5/VOCdevkit/VOC2007/ImageSets/Main"
total_xml = os.listdir(xmlfilepath)

num=len(total_xml)
list=range(num)
tv=int(num*trainval_percent)
tr=int(tv*train_percent)
trainval= random.sample(list,tv)
train=random.sample(trainval,tr)

ftrainval = open('/home/ding/deeplearning_task/winter_task5/VOCdevkit/VOC2007/ImageSets/Main/trainval.txt', 'w')
ftest = open('/home/ding/deeplearning_task/winter_task5/VOCdevkit/VOC2007/ImageSets/Main/test.txt', 'w')
ftrain = open('/home/ding/deeplearning_task/winter_task5/VOCdevkit/VOC2007/ImageSets/Main/train.txt', 'w')
fval = open('/home/ding/deeplearning_task/winter_task5/VOCdevkit/VOC2007/ImageSets/Main/val.txt', 'w')

for i  in list:
    name=total_xml[i][:-4]+'\n'
    if i in trainval:
        ftrainval.write(name)
        if i in train:
            ftrain.write(name)
        else:
            fval.write(name)
    else:
        ftest.write(name)

ftrainval.close()
ftrain.close()
fval.close()
ftest.close()

