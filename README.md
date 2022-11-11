
1. Media source
```
$ python track.py --source 0  # webcam
                           img.jpg  # image
                           vid.mp4  # video
                           path/  # whole directory
                           'https://youtu.be/link'  # YouTube
                           'rtsp://example.com/media.mp4'  # RTSP, RTMP, HTTP stream
```
2. Yolo Model
```
$ python track.py --source 0 --yolo_model yolov5n.pt 
                                          yolov5s.pt 
                                          yolov5m.pt       
                                          yolov5l.pt 
                                          yolov5x.pt 
                                          ...
```
3. Image size (pixels)
```
$ python track.py --source 0 --yolo_model yolov5n.pt --img 640  
                                                     --img 1280 
                       
```
4. How to save output
```
$ python track.py --source 0 --yolo_model yolov5n.pt --img 640  --save-vid
                                                                --show-vid
                                                                --save-txt
```

