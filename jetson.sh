# System
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install -y liblapack-dev libblas-dev gfortran libfreetype6-dev libopenblas-base libopenmpi-dev libjpeg-dev zlib1g-dev build-essential git curl cmake

# Python 3.8 & pip
sudo apt-get install -y python3.8 python3.8-distutils
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3.8 get-pip.py
python3.8 -m pip install --upgrade pip

# Add cuda, "/usr/local/cuda/bin" to PATH 

# Follow steps 2.3, 2.4, 2.7 and 3 from README.md
# Remember to use 'python3.8 -m pip' instead of just pip