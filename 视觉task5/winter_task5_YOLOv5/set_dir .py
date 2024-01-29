import os
import shutil


def set_dir(txt_path,source_image_folder,source_label_folder,destination_image_folder,destination_label_folder):
    txt_files = open(txt_path , 'r' , encoding= 'utf-8')
    for txt_file in txt_files:
        txt_image_file = txt_file.strip() + ".jpg"
        txt_label_file = txt_file.strip() + ".txt"
        origin_image_path = os.path.join(source_image_folder, txt_image_file)
        destination_image_path = os.path.join(destination_image_folder,txt_image_file)
        origin_label_path = os.path.join(source_label_folder, txt_label_file)
        destination_label_path = os.path.join(destination_label_folder,txt_label_file)
        if os.path.exists(source_image_folder) and os.path.exists(source_label_folder):
            shutil.copy(origin_image_path, destination_image_path)
            shutil.copy(origin_label_path,destination_label_path)
        else:
            print(f"ERROR!{origin_image_path} or {origin_label_path}is not found,cannot copy ")


if __name__=="__main__":
    # 原txt文件与图片及标注路径
    train_txt_path = '/home/ding/deeplearning_task/YOLOv5/yolov5/yolov5/datasets/winter_task5_YOLOv5/train.txt'
    test_txt_path = '/home/ding/deeplearning_task/YOLOv5/yolov5/yolov5/datasets/winter_task5_YOLOv5/test.txt'
    val_txt_path = '/home/ding/deeplearning_task/YOLOv5/yolov5/yolov5/datasets/winter_task5_YOLOv5/val.txt'
    image_folder = "/home/ding/deeplearning_task/YOLOv5/yolov5/yolov5/datasets/winter_task5_YOLOv5/image"
    label_folder = "/home/ding/deeplearning_task/YOLOv5/yolov5/yolov5/datasets/winter_task5_YOLOv5/labels"

    # train的图像与标注存储路径
    train_image_folder = "/home/ding/deeplearning_task/YOLOv5/yolov5/yolov5/datasets/winter_task5_YOLOv5/ImageSets/train/images"
    train_label_folder = "/home/ding/deeplearning_task/YOLOv5/yolov5/yolov5/datasets/winter_task5_YOLOv5/ImageSets/train/labels"

    #test的图像与标注存储路径
    test_image_folder = "/home/ding/deeplearning_task/YOLOv5/yolov5/yolov5/datasets/winter_task5_YOLOv5/ImageSets/test/images"
    test_label_folder = "/home/ding/deeplearning_task/YOLOv5/yolov5/yolov5/datasets/winter_task5_YOLOv5/ImageSets/test/labels"

    #val的图像与标注存储路径
    val_image_folder = "/home/ding/deeplearning_task/YOLOv5/yolov5/yolov5/datasets/winter_task5_YOLOv5/ImageSets/val/images"
    val_label_folder = "/home/ding/deeplearning_task/YOLOv5/yolov5/yolov5/datasets/winter_task5_YOLOv5/ImageSets/val/labels"

    set_dir(train_txt_path,image_folder,label_folder,train_image_folder,train_label_folder)
    set_dir(test_txt_path,image_folder,label_folder,test_image_folder,test_label_folder)
    set_dir(val_txt_path,image_folder,label_folder,val_image_folder,val_label_folder)