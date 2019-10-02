# copy Depth labels
mkdir depth
mkdir depth/00
find ./Output/Depth/06-00/CLEAR_SKY/DEGRADATION/ -iname "*.png" -exec cp {} ./depth/00 \;

mkdir depth/01
find ./Output/Depth/06-00/CLEAR_SKY/NO_DEGRADATION/ -iname "*.png" -exec cp {} ./depth/01 \;

mkdir depth/02
find ./Output/Depth/12-00/CLEAR_SKY/DEGRADATION/ -iname "*.png" -exec cp {} ./depth/02 \;

mkdir depth/03
find ./Output/Depth/12-00/CLEAR_SKY/NO_DEGRADATION/ -iname "*.png" -exec cp {} ./depth/03 \;

mkdir depth/04
find ./Output/Depth/17-00/CLEAR_SKY/DEGRADATION/ -iname "*.png" -exec cp {} ./depth/04 \;

mkdir depth/05
find ./Output/Depth/17-00/CLEAR_SKY/NO_DEGRADATION/ -iname "*.png" -exec cp {} ./depth/05 \;

mkdir depth/06
find ./Output2/Depth/06-00/CLEAR_SKY/DEGRADATION/ -iname "*.png" -exec cp {} ./depth/06 \;

mkdir depth/07
find ./Output2/Depth/06-00/CLEAR_SKY/NO_DEGRADATION/ -iname "*.png" -exec cp {} ./depth/07 \;

mkdir depth/08
find ./Output2/Depth/12-00/CLEAR_SKY/DEGRADATION/ -iname "*.png" -exec cp {} ./depth/08 \;

mkdir depth/09
find ./Output2/Depth/12-00/CLEAR_SKY/NO_DEGRADATION/ -iname "*.png" -exec cp {} ./depth/09 \;

mkdir depth/10
find ./Output2/Depth/17-00/CLEAR_SKY/DEGRADATION/ -iname "*.png" -exec cp {} ./depth/10 \;

mkdir depth/11
find ./Output2/Depth/17-00/CLEAR_SKY/NO_DEGRADATION/ -iname "*.png" -exec cp {} ./depth/11 \;
