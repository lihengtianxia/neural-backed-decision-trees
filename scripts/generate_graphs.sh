for dataset in CIFAR10 CIFAR100 TinyImagenet200;
do
  python generate_graph.py --dataset=${dataset} --single-path;
  python test_generated_graph.py --dataset=${dataset} --single-path;
  for extra in 0 20 50 100;
  do
    python generate_graph.py --dataset=${dataset} --extra=${extra};
    python test_generated_graph.py --dataset=${dataset} --extra=${extra};
  done;
done;
