# Take picture and save it in "images"
mkdir -p /home/cpl/Documents/images
libcamera-jpeg -o /home/cpl/Documents/images/$(date +"%m_%d_%Y_%H:%M").jpg

# Feed image into python program
python3 evan-main.py $(date +"%m_%d_%Y_%H:%M").jpg