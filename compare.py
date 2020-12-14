import sys
import imagehash
from PIL import ImageChops,Image

im1 = sys.argv[1]
im2 = sys.argv[2]

pic1hash = imagehash.average_hash(Image.open(im1))
pic2hash = imagehash.average_hash(Image.open(im2))

print(pic1hash - pic2hash)
