# Yolov4运行流程及结果

1. 从github中获取项目[git@github.com:AlexeyAB/darknet.git](https://github.com/AlexeyAB/darknet.git)

2. 观察项目结构

3. 新建python虚拟环境，避免版本相互干扰

4. 从github中下载`yolov4.weights`文件

5. 按照`README.md`文件中`How to compile on Linux/macOS (usingCMake) `部分的指导进行编译

   ```shell
   cd darknet
   mkdir build_release
   cd build_release
   cmake ..
   cmake --build . --target install --parallel 8
   ```

6. 测试图片`./darknet detect cfg/yolov4.cfg yolov4.weights data/dog.jpg`

   ![predictions](https://raw.githubusercontent.com/djz47/test/main/202401271702882.jpg)

7. 测试摄像头`./darknet detector demo cfg/coco.data cfg/yolov4.cfg yolov4.weights `

   ![image-20240127170403984](https://raw.githubusercontent.com/djz47/test/main/202401271704380.png)