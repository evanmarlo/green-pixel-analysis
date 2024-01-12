# libcamera-jpeg -o /home/cpl/Documents/images/test2.jpg
# libcamera-jpeg -o /home/cpl/Documents/images/`\%m_\%d_\%Y_\%H:\%M:\%S`.jpg
libcamera-jpeg -o /home/cpl/Documents/images/$(date +"%m_%d_%Y_%H:%M").jpg
echo test