# 程序运行过程及结果

## 程序运行流程

1. 从github中获取项目[git@github.com:ultralytics/yolov5.git](https://github.com/ultralytics/yolov5.git)

2. 观察项目结构

3. 新建python虚拟环境，避免版本相互干扰

4. 按照`tutorial.ipynb`中的指示运行程序：

   ```shell
   $ cd yolov5
   $ pip install -qr requirements.txt comet_ml 
   $ python detect.py --weights yolov5s.pt --img 640 --conf 0.25 --source data/images
   #source后的参数不同时，检测的目标也不同
   ```

   ```shell
   #python detect.py --source 0  # webcam
                             img.jpg  # image
                             vid.mp4  # video
                             screen  # screenshot
                             path/  # directory
                            'path/*.jpg'  # glob
                            'https://youtu.be/LNwODJXcvt4'  # YouTube
                            'rtsp://example.com/media.mp4'  # RTSP, RTMP,HTTP stream
   ```

## 程序运行结果

- `python detect.py --weights yolov5s.pt --img 640 --conf 0.25 --source data/images`运行结果

![zidane](https://raw.githubusercontent.com/djz47/test/main/202401271616322.jpg)![bus](https://raw.githubusercontent.com/djz47/test/main/202401271616891.jpg)

- `python detect.py --weights yolov5s.pt --img 640 --conf 0.25 --source 0`运行结果

  ![2024-01-27_16-07](https://raw.githubusercontent.com/djz47/test/main/202401271618778.png)