# Take picture and save it in "images"
mkdir -p /home/cpl/Documents/images
libcamera-jpeg -o /home/cpl/Documents/images/$(date +"%m_%d_%Y_%H:%M").jpg

# Feed image into python program, writing CSV file
cd /home/cpl/Documents/green-pixel-analysis
python3 evan-main.py $(date +"%m_%d_%Y_%H:%M").jpg

# Push CSV file to Git repo
cd /home/cpl/Documents/pixel-analysis-logging
git add --all
git commit -m "Automated push testing"
# git commit -m "Automated push from $hostname"
git push



# python3 evan-main.py 01_16_2024_15:41.jpg
