if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/CyberTG/master_personal.git /master_personal
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /master_personal
fi
cd /master_personal
pip3 install -U -r requirements.txt
echo "Starting master_personal...."
python3 bot.py
