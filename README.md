# openbr-docker

A build version of openbiometrics.org to easy use with Docker

```
docker pull kevinsimper/openbr
```

To see an example on how to use this, go to https://github.com/kevinsimper/face-recognition

Run a simple command:

```
$ docker run kevinsimper/openbr br -help
<arg> = Input; {arg} = Output; [arg] = Optional; (arg0|...|argN) = Choice

==== Core Commands ====
-train <gallery> ... <gallery> [{model}]
-enroll <input_gallery> ... <input_gallery> {output_gallery}
-compare <target_gallery> <query_gallery> [{output}]
-eval <simmat> [<mask>] [{csv}] [{matches}]
-plot <csv> ... <csv> {destination}

==== Other Commands ====
-fuse <simmat> ... <simmat> (None|MinMax|ZScore|WScore) (Min|Max|Sum[W1:W2:...:Wn]|Replace|Difference|None) {simmat}
-cluster <simmat> ... <simmat> <aggressiveness> {csv}
-makeMask <target_gallery> <query_gallery> {mask}
-makePairwiseMask <target_gallery> <query_gallery> {mask}
-combineMasks <mask> ... <mask> {mask} (And|Or)
-cat <gallery> ... <gallery> {gallery}
-convert (Format|Gallery|Output) <input_file> {output_file}
-evalClassification <predicted_gallery> <truth_gallery> <predicted property name> <ground truth proprty name>
-evalClustering <clusters> <truth_gallery> [truth_property [cluster_csv [cluster_property]]]
-evalDetection <predicted_gallery> <truth_gallery> [{csv}] [{normalize}] [{minSize}] [{maxSize}]
-evalLandmarking <predicted_gallery> <truth_gallery> [{csv} [<normalization_index_a> <normalization_index_b>] [sample_index] [total_examples]]
-evalRegression <predicted_gallery> <truth_gallery> <predicted property name> <ground truth property name>
-evalKNN <knn_graph> <knn_truth> [{csv}]
-pairwiseCompare <target_gallery> <query_gallery> [{output}]
-inplaceEval <simmat> <target> <query> [{csv}]
-assertEval <simmat> <mask> <accuracy>
-plotDetection <file> ... <file> {destination}
-plotLandmarking <file> ... <file> {destination}
-plotMetadata <file> ... <file> <columns>
-plotKNN <file> ... <file> {destination}
-project <input_gallery> {output_gallery}
-deduplicate <input_gallery> <output_gallery> <threshold>
-likely <input_type> <output_type> <output_likely_source>
-getHeader <matrix>
-setHeader {<matrix>} <target_gallery> <query_gallery>
-<key> <value>

==== Miscellaneous ====
-help
-gui
-objects [abstraction [implementation]]
-about
-version
-daemon
-slave
-exit
```
