# A Synthetic Dataset for 3D lane Detection

## Introduction

This is a synthetic dataset constructed to stimulate the development and evaluation of 3D lane detection methods 
(download dataset from [[google drive](https://drive.google.com/open?id=1Kisxoj7mYl1YyA_4xBKTE8GGWiNZVain)] [[baidu netdisk](https://pan.baidu.com/s/1y_d73-SaNreesif5nVXIVg?pwd=a852)]). 
This dataset is an extension to [Apollo Synthetic Dataset](http://apollo.auto/synthetic.html).
The detailed strategy of construction and the evaluation method refer to our ECCV 2020 paper:

"Gen-LaneNet: a generalized and scalable approach for 3D lane detection", Y. Guo, etal., ECCV, 2020 [[eccv](https://www.ecva.net/papers/eccv_2020/papers_ECCV/papers/123660664.pdf)][[arxiv](https://arxiv.org/abs/2003.10656)] [[code](https://github.com/yuliangguo/Pytorch_Generalized_3D_Lane_Detection)]

<p align="center">
  <img src="figs/00_0000045.jpg" width="280" />
  <img src="figs/08_0000003.jpg" width="280" /> 
  <img src="figs/16_0000077.jpg" width="280" />
</p>



## Requirements

* python                    3.7.3
* numpy                     1.16.2
* scipy                     1.2.1 
* matplotlib                3.0.3 
* opencv-python             4.1.0.25
* py3-ortools               5.1.4041



## Data preparation


You are welcome to proceed to the development and evaluation directly using the splits of the training and testing sets we provide.
Feel free to skip this section if you use our data split directly.

    ```
    data_splits
    ├── standard
    │   ├── 3D_LaneNet
    |   |       └──test_pred_file.json
    │   ├── Gen_LaneNet
    |   |       └──test_pred_file.json
    │   ├── train.json
    │   └── test.json
    │── rare_subset
    │   ├── 3D_LaneNet
    |   |       └──test_pred_file.json
    │   ├── Gen_LaneNet
    |   |       └──test_pred_file.json
    │   ├── train.json
    │   └── test.json
    |── illus_chg
    │   ├── 3D_LaneNet
    |   |       └──test_pred_file.json
    │   ├── Gen_LaneNet
    |   |       └──test_pred_file.json
    │   ├── train.json
    │   └── test.json
    ```

Meanwhile, we provide the helper functions needed to build your own split from the raw datasets downloaded. The following codes 
need to be right in order.

    parse_apollo_sim_raw_data.py

This code extracts lane-lanes and center-lanes in an interested top-view area. The code reasons about the foreground and background
occlusion based on the provided ground-truth depth maps and semantic segmentation map. Those lane segments in the distance occluded
by background are discarded, because in general they are not expected to recover from a lane detection method. By setting 'vis=True',
this code will draw ground-true lane-lines and center-lines on each image and save them.

    prepare_data_split.py

This code randomly splits the whole data into training and testing sets following a 'standard' five-fold split. Specifically, 
a subset generated from a difficult urban map are further extracted to be the test set for 'rare subset' data split.

    prepare_data_subset
 
Given the standard split of data, this code excludes images corresponding to a certain 'illumination' condition (before dawn)
from the training set. On contrary, in the testing set, only images corresponding to that illumination condition are kept.



## Evaluation


    eval_3D_lane.py
    
You need to modify 'method_name', 'data_split' to specify the method and the data split to conduct evaluation.
For example, the default setting compares 'data_splits/illus_chg/Gen_LaneNet/test_pred_file.json' against ground-truth
'data_splits/illus_chg/test.json'.
Optionally, set 'args.dataset_dir' to the folder containing the original dataset. The original images are only required for visualizing lane results, when setting 'vis = True'.

In this dataset, each image sample is associated with a set of ground-truth 3D lane-lines and center-lines, as well as 
the camera height and pitch angle. 
Per image, the optimal bipartite match between a set of predicted lane curves and a set of ground-truth lane curves is sought via
solving a min-cost flow.
Precision and recall are computed via varying lane confidence thresholds. Overall, evaluation metrics include:
 * Average Precision (AP)
 * max F-score
 * x-error in close range (0-40 m)
 * x-error in far range (40-100 m)
 * z-error in close range (0-40 m)
 * z-error in far range (40-100 m)

Before running the evaluation, you need to make sure the predicted lanes are saved in the 'test_pred_file.json' file following
the format included in our example. Specifically, each lane needs to be associated with a 'prob' score to calculate the
precision and recall in full-range. Otherwise, you can only keep 'evaluator.bench_one_submit' in the main code to 
evaluate your algorithm at a single operation point.

## Baselines Results

We show the evaluation results comparing two baseline methods: 
* "3d-lanenet:  end-to-end 3d multiple lane detection", N. Garnet, etal., ICCV 2019
* "Gen-LaneNet: a generalized and scalable approach for 3D lane detection", Y. Guo, etal., Arxiv, 2020

Comparisons are conducted under three distinguished splits of the dataset. For simplicity, only lane-line results are reported here.
The results from the code is slightly different from that reported in the paper due to different random splits.

- **Standard**

| Method                 | AP     | F-Score | x error near (m) | x error far (m) | z error near (m) | z error far (m) |
|------------------------|:---------:|:---------:|:---------:|:---------:|:---------:|:---------:|
| 3D-LaneNet             |   89.3    | 86.4      | 0.068     | 0.477     | 0.015     | 0.202
| Gen-LaneNet            |   90.1    | 88.1      | 0.061     | 0.496     | 0.012     | 0.214

- **Rare Subset**

| Method                 | AP     | F-Score | x error near (m) | x error far (m) | z error near (m) | z error far (m) |
|------------------------|:---------:|:---------:|:---------:|:---------:|:---------:|:---------:|
| 3D-LaneNet             |  74.6     | 72.0      | 0.166     | 0.855     | 0.039     | 0.521
| Gen-LaneNet            |  79.0     | 78.0      | 0.139     | 0.903     | 0.030     | 0.539

- **Illumination Change**

| Method                 | AP     | F-Score | x error near (m) | x error far (m) | z error near (m) | z error far (m) |
|------------------------|:---------:|:---------:|:---------:|:---------:|:---------:|:---------:|
| 3D-LaneNet             |   74.9    | 72.5      | 0.115     | 0.601     | 0.032     | 0.230
| Gen-LaneNet            |   87.2    | 85.3      | 0.074     | 0.538     | 0.015     | 0.232



## Visualization

Visual comparisons to the ground truth can be generated per image when setting 'vis = True'.
We show two examples for each method under the data split involving illumination change.

* 3D-LaneNet

<img src="figs/3D_LaneNet/images_00_0000148.jpg" width="400"> <img src="figs/3D_LaneNet/images_00_0000171.jpg" width="400">

* Gen-LaneNet

<img src="figs/Gen_LaneNet/images_00_0000148.jpg" width="400"> <img src="figs/Gen_LaneNet/images_00_0000171.jpg" width="400">


## Citation
Please cite the paper in your publications if it helps your research: 

    @article{guo2020gen,
      title={Gen-LaneNet: A Generalized and Scalable Approach for 3D Lane Detection},
      author={Yuliang Guo, Guang Chen, Peitao Zhao, Weide Zhang, Jinghao Miao, Jingao Wang, and Tae Eun Choe},
      booktitle={Computer Vision - {ECCV} 2020 - 16th European Conference},
      year={2020}
    }
