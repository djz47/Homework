## 开机密码与【sudo】密码
030217
## 相关目录
darknet:/home/ding/deeplearning_task/darknet

本md文件：/home/ding/deeplearning_task/task2/VOCdevkit/instruction.md

项目相关（标注文件、数据集、训练权重）：/home/ding/deeplearning_task/task2/VOCdevkit/VOC2007

## 验证方法
### 1.打开终端进入darknet文件夹
cd /home/ding/deeplearning_task/darknet
### 2.输入指令开始验证（复制到终端加验证图片路径即可）
./darknet detector test /home/ding/deeplearning_task/task2/VOCdevkit/voc.data /home/ding/deeplearning_task/task2/VOCdevkit/yolov4-tiny.cfg /home/ding/deeplearning_task/task2/VOCdevkit/VOC2007/backup/yolov4-tiny_best.weights + (验证图像路径)