# 视觉Task2
## 一、完成流程
1. 安装usb_cam包  
   ```sudo apt-get install ros-kinetic-usb-cam```  
2. 运行`roslaunch usb_cam usb_cam-test.launch`查看功能包是否正常安装
3. 确定Topic需要的消息类型，到ROS.index上进行查找
4. 创建功能包，并且在`CMakelist.txt`和`package.xml`中加入opencv相关配置
5. 编写节点py文件：初步分析可得，节点1既是接受usb_cam信息的subscriber，又是给节点2发送信息的publisher，节点2只需要接受节点1的消息
6. 将节点1命名为`image_catch_node`,节点1接收`usb_cam/image_raw`  Topic的消息，在Topic`image_process`下发布消息；将节点2命名为`image_store_node`，用来接收节点1的消息并且存储图像
7. 编写节点py文件
8. 编写对应的cpp文件（可选）
9. 在`CMakelist.txt`生成可执行文件并添加配置
10. 为py文件增加可执行权限
11. `rosrun`测试节点功能
12. 功能无误，编写`launch`文件
## 二、运行方式
1. ```git clone git@github.com:djz47/Homework.git```下载项目文件
2. 进入`视觉_task2`文件夹`source devel/setup.bash`
3. 安装usb_cam包  ```git clone https://github.com/ros-drivers/usb_cam.git```  
4. 运行usb_cam`roslaunch usb_cam usb_cam.launch`
5. 运行项目中`launch`文件`roslaunch image_catch cam_cap.launch`
6. 运行结束后关闭终端结束进程，可在项目文件夹`iamge`下找到抓拍的三张图片