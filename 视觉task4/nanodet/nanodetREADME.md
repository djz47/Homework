# Nanodet 运行测试流程及结果

## 程序运行流程

1. 从github中获取项目[git@github.com:RangiLyu/nanodet.githttps://github.com/RangiLyu/nanodet.git](https://github.com/RangiLyu/nanodet.git)

2. 观察项目结构
3. 新建python虚拟环境，避免版本相互干扰
4. 按照如下指令运行

```python
python3 setup.py develop
#图片测试
python3 demo/demo.py image --config CONFIG_PATH --model MODEL_PATH --path IMAGE_PATH
#视频测试
python3 demo/demo.py video --config CONFIG_PATH --model MODEL_PATH --path VIDEO_PATH
#摄像头测试
python3 demo/demo.py webcam --config CONFIG_PATH --model MODEL_PATH
```

## 运行结果

==在配置相关包时，出现了一些报错，但是在解决之后，启动相关程序可以看到图片和视频，但是没有识别结果，目前尚未得到解决==

![2024-01-27_22-13](https://raw.githubusercontent.com/djz47/test/main/202401272227933.png)

![2024-01-27_22-14](https://raw.githubusercontent.com/djz47/test/main/202401272228393.png)