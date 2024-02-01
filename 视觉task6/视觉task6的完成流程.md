# 视觉task6的完成流程

1. 解压darknet_ros压缩包到指定工作空间
2. 观察文件结构与各文件包内容
3. 将自己训练的模型的配置文件cfg和训练权重weight放入`yolo_network_config`文件夹的指定位置
4. 进入`config`文件夹修改对应的`.yaml`文件
5. 修改`darknet_ros.launch`文件
6. 运行`usbcam.launch`和`darknet_ros.launch`
7. 在终端使用命令`rqt_image_view`选择对应的话题，可以看到识别的结果

![2024-01-31_17-04](https://raw.githubusercontent.com/djz47/test/main/202401312038775.png)