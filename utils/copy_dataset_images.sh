# copy images
mkdir images
mkdir images/00
find ./Output/RGB/06-00/CLEAR_SKY/DEGRADATION/ -iname "*jpg" -exec cp {} ./images/00 \;

mkdir images/01
find ./Output/RGB/06-00/CLEAR_SKY/NO_DEGRADATION/ -iname "*jpg" -exec cp {} ./images/01 \;

mkdir images/02
find ./Output/RGB/12-00/CLEAR_SKY/DEGRADATION/ -iname "*jpg" -exec cp {} ./images/02 \;

mkdir images/03
find ./Output/RGB/12-00/CLEAR_SKY/NO_DEGRADATION/ -iname "*jpg" -exec cp {} ./images/03 \;

mkdir images/04
find ./Output/RGB/17-00/CLEAR_SKY/DEGRADATION/ -iname "*jpg" -exec cp {} ./images/04 \;

mkdir images/05
find ./Output/RGB/17-00/CLEAR_SKY/NO_DEGRADATION/ -iname "*jpg" -exec cp {} ./images/05 \;

mkdir images/06
find ./Output2/RGB/06-00/CLEAR_SKY/DEGRADATION/ -iname "*jpg" -exec cp {} ./images/06 \;

mkdir images/07
find ./Output2/RGB/06-00/CLEAR_SKY/NO_DEGRADATION/ -iname "*jpg" -exec cp {} ./images/07 \;

mkdir images/08
find ./Output2/RGB/12-00/CLEAR_SKY/DEGRADATION/ -iname "*jpg" -exec cp {} ./images/08 \;

mkdir images/09
find ./Output2/RGB/12-00/CLEAR_SKY/NO_DEGRADATION/ -iname "*jpg" -exec cp {} ./images/09 \;

mkdir images/10
find ./Output2/RGB/17-00/CLEAR_SKY/DEGRADATION/ -iname "*jpg" -exec cp {} ./images/10 \;

mkdir images/11
find ./Output2/RGB/17-00/CLEAR_SKY/NO_DEGRADATION/ -iname "*jpg" -exec cp {} ./images/11 \;

# save relative image path into list
cd images
find . -iname "*jpg" | sort>../img_list.txt
