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


