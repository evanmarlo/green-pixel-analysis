# Takes an argument that is the name of the image

from sys import argv
from lib import gpix
import socket
hostname = socket.gethostname()

gpix._analyzeImage_('/home/cpl/Documents/pixel-analysis-logging/' + hostname + '-images/' + argv[1], True, 0).writeCsv('/home/cpl/Documents/pixel-analysis-logging')