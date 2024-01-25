hostname=$(hostname -f)

# Take picture and save it in "images"
mkdir -p /home/cpl/Documents/pixel-analysis-logging/$hostname-images
libcamera-jpeg -o /home/cpl/Documents/pixel-analysis-logging/$hostname-images/$(date +"%m_%d_%Y_%H:%M").jpg

# Feed image into python program, writing CSV file
cd /home/cpl/Documents/pixel-analysis-logging
touch $hostname-image-summary.csv
cd /home/cpl/Documents/green-pixel-analysis
python3 evan-main.py $(date +"%m_%d_%Y_%H:%M").jpg

# Move analyzed image from green pixel analysis to pixel logging
mv /home/cpl/Documents/green-pixel-analysis/$(date +"%m_%d_%Y_%H:%M")-ANALYZED.jpg /home/cpl/Documents/pixel-analysis-logging/$hostname-images

# Push CSV file to Git repo
cd /home/cpl/Documents/pixel-analysis-logging
git add $hostname-images $hostname-image-summary.csv

# git commit -m "Automated push testing"
git commit -m "Automated push from $hostname"
git push



# python3 evan-main.py 01_16_2024_16:28.jpg
