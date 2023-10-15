# Setup

0. (Optional) Install [CUDA](https://developer.nvidia.com/cuda-downloads) to enable inference with gpu (nvidia gpu only)

1. Conda environment
    1. Install [Miniconda](https://docs.conda.io/projects/miniconda/en/latest/index.html)
    2. Launch the miniconda terminal and setup an environment (in Windows should be a new app called "Anaconda Prompt (miniconda3)"):

        `conda create -n traffic_count python=3.8 -y`

        - "traffic_count" will be the name of the environment, feel free to change it, just remember to use the same name later in steps 2.1 and 3.1.
            - You can check if you already have a working environment with the following command:

                `conda info --envs`

        - "python=3.8" means that we will be using version 3.8 in our python environment. The project should work with versions 3.7 and 3.8, any higher than that might require some fixes on the code to keep it up to date.

2. Repositories setup

    1. Activate the environment made in step 1 using the miniconda terminal:
    
        `conda activate traffic_count`

    2. Install git:

        - Option 1: Install [Git](https://git-scm.com/downloads) for your operating system (restart your terminal and reactivate your environment after installation using this approach)

        - Option 2: Install git through conda:
        
            `conda install -c anaconda git`
    
    3. Clone repositories:

        1. Traffic-count-cctval:

            `git clone https://github.com/ijorquera/Traffic-Count-CCTVAL`
        
        2. torchreid:

            `git clone https://github.com/KaiyangZhou/deep-person-reid.git`

    4. (Jetson-nano) Install Traffic-count-cctval dependencies:

        1. Install requirements:

            `python3.8 -m pip install --no-cache-dir -r Traffic-Count-CCTVAL/requirements.txt`

        
        2. Install [pytorch](https://pytorch.org/get-started/locally/) with support for CUDA 10.2 (highest cuda version available for the Jetson nano)

            `python3.8 -m pip install torch==1.12.1+cu102 torchvision==0.13.1+cu102 torchaudio==0.12.1 --extra-index-url https://download.pytorch.org/whl/cu102`
            

    5. (Windows) Install Traffic-count-cctval dependencies:

        1. Install requirements:

            `pip install --no-cache-dir -r Traffic-Count-CCTVAL/requirements.txt`

        
        2. Install [pytorch](https://pytorch.org/get-started/locally/) (check on [pytorch](https://pytorch.org/get-started/locally/) for the right command for your system)

            - For latest version with cuda 12.1 support on windows:
            
                `pip install --no-cache-dir torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu121`
            
            - For latest version with cpu only on windows:

                `pip install torch torchvision torchaudio`

    6. (Linux) Install Traffic-count-cctval dependencies:

        `pip install --no-cache-dir -r Traffic-Count-CCTVAL/requirements-linux.txt`

        - For linux, just requirements is enough since it will auto-detect wether there is a gpu with cuda support or not


    7. Install torchreid:

        `cd deep-person-reid`

        `python setup.py develop`

        `cd ..`
    
3. Traffic-count-cctval test:

    1. Activate the environment made in step 1 using the miniconda terminal:
    
        `conda activate traffic_count`
    
    2. Change directory to the repo with the project:

        `cd Traffic-Count-CCTVAL`
    
    3. Test with one of the sample videos (change `python` for `python3.8` on the Jetson nano):

        `python track.py --source heavy.mp4 --save-vid --show-vid --save-txt`

    4. Test with integrated camera:

        `python track.py --source 0 --save-vid --show-vid --save-txt`

4. Known errors:

    1. Error Placeholder


---

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
