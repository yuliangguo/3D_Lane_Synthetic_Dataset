# copy segmentation segmentation
mkdir segmentation
mkdir segmentation/00
find ./Output/Segmentation/06-00/CLEAR_SKY/DEGRADATION/ -iname "*.png" -exec cp {} ./segmentation/00 \;

mkdir segmentation/01
find ./Output/Segmentation/06-00/CLEAR_SKY/NO_DEGRADATION/ -iname "*.png" -exec cp {} ./segmentation/01 \;

mkdir segmentation/02
find ./Output/Segmentation/12-00/CLEAR_SKY/DEGRADATION/ -iname "*.png" -exec cp {} ./segmentation/02 \;

mkdir segmentation/03
find ./Output/Segmentation/12-00/CLEAR_SKY/NO_DEGRADATION/ -iname "*.png" -exec cp {} ./segmentation/03 \;

mkdir segmentation/04
find ./Output/Segmentation/17-00/CLEAR_SKY/DEGRADATION/ -iname "*.png" -exec cp {} ./segmentation/04 \;

mkdir segmentation/05
find ./Output/Segmentation/17-00/CLEAR_SKY/NO_DEGRADATION/ -iname "*.png" -exec cp {} ./segmentation/05 \;

mkdir segmentation/06
find ./Output2/Segmentation/06-00/CLEAR_SKY/DEGRADATION/ -iname "*.png" -exec cp {} ./segmentation/06 \;

mkdir segmentation/07
find ./Output2/Segmentation/06-00/CLEAR_SKY/NO_DEGRADATION/ -iname "*.png" -exec cp {} ./segmentation/07 \;

mkdir segmentation/08
find ./Output2/Segmentation/12-00/CLEAR_SKY/DEGRADATION/ -iname "*.png" -exec cp {} ./segmentation/08 \;

mkdir segmentation/09
find ./Output2/Segmentation/12-00/CLEAR_SKY/NO_DEGRADATION/ -iname "*.png" -exec cp {} ./segmentation/09 \;

mkdir segmentation/10
find ./Output2/Segmentation/17-00/CLEAR_SKY/DEGRADATION/ -iname "*.png" -exec cp {} ./segmentation/10 \;

mkdir segmentation/11
find ./Output2/Segmentation/17-00/CLEAR_SKY/NO_DEGRADATION/ -iname "*.png" -exec cp {} ./segmentation/11 \;
