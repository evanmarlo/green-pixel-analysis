# Takes an argument that is the name of the image

from sys import argv
from lib import gpix

gpix._analyzeImage_('/home/cpl/Documents/images/' + argv[1], False, 50).writeCsv('/home/cpl/Documents/pixel-analysis-logging')