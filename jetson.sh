sudo apt-get update
sudo apt-get upgrade

sudo apt-get install build-essential git curl cmake python3.8
# sudo apt-get install python3-pip
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3.8 get-pip.py

git clone https://github.com/ijorquera/Traffic-Count-CCTVAL
git clone https://github.com/KaiyangZhou/deep-person-reid.git

pip install --no-cache-dir -r Traffic-Count-CCTVAL/requirements.txt
cd deep-person-reid
python setup.py develop
cd ..
cd Traffic-Count-CCTVAL
