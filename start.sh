if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone AT1Bots/Auto-Filter /AT1Bots/Auto-Filter
  else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /AT1Bots/Auto-Filter
fi
cd /AT1Bots/Auto-Filter
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
