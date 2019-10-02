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

# copy laneline labels
mkdir labels
mkdir labels/00
find ./Output/LaneLine_GroundTruth/06-00/CLEAR_SKY/DEGRADATION/ -iname "*.txt" -exec cp {} ./labels/00 \;

mkdir labels/01
find ./Output/LaneLine_GroundTruth/06-00/CLEAR_SKY/NO_DEGRADATION/ -iname "*.txt" -exec cp {} ./labels/01 \;

mkdir labels/02
find ./Output/LaneLine_GroundTruth/12-00/CLEAR_SKY/DEGRADATION/ -iname "*.txt" -exec cp {} ./labels/02 \;

mkdir labels/03
find ./Output/LaneLine_GroundTruth/12-00/CLEAR_SKY/NO_DEGRADATION/ -iname "*.txt" -exec cp {} ./labels/03 \;

mkdir labels/04
find ./Output/LaneLine_GroundTruth/17-00/CLEAR_SKY/DEGRADATION/ -iname "*.txt" -exec cp {} ./labels/04 \;

mkdir labels/05
find ./Output/LaneLine_GroundTruth/17-00/CLEAR_SKY/NO_DEGRADATION/ -iname "*.txt" -exec cp {} ./labels/05 \;

mkdir labels/06
find ./Output2/LaneLine_GroundTruth/06-00/CLEAR_SKY/DEGRADATION/ -iname "*.txt" -exec cp {} ./labels/06 \;

mkdir labels/07
find ./Output2/LaneLine_GroundTruth/06-00/CLEAR_SKY/NO_DEGRADATION/ -iname "*.txt" -exec cp {} ./labels/07 \;

mkdir labels/08
find ./Output2/LaneLine_GroundTruth/12-00/CLEAR_SKY/DEGRADATION/ -iname "*.txt" -exec cp {} ./labels/08 \;

mkdir labels/09
find ./Output2/LaneLine_GroundTruth/12-00/CLEAR_SKY/NO_DEGRADATION/ -iname "*.txt" -exec cp {} ./labels/09 \;

mkdir labels/10
find ./Output2/LaneLine_GroundTruth/17-00/CLEAR_SKY/DEGRADATION/ -iname "*.txt" -exec cp {} ./labels/10 \;

mkdir labels/11
find ./Output2/LaneLine_GroundTruth/17-00/CLEAR_SKY/NO_DEGRADATION/ -iname "*.txt" -exec cp {} ./labels/11 \;

# copy segmentation labels
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

