# Training-free Neural Architecture Search for RNNs and Transformers [\[paper\]](http://arxiv.org/abs/2306.00288/)
### Aaron Serianni (Princeton University) and [Jugal Kalita](https://eas.uccs.edu/cs/about/faculty/jugal-kalita) (University of Colorado at Colorado Springs)

Neural architecture search (NAS) has allowed for the automatic creation of new and effective neural network architectures, offering an alternative to the laborious process of manually designing complex architectures. However, traditional NAS algorithms are slow and require immense amounts of computing power. Recent research has investigated training-free NAS metrics for image classification architectures, drastically speeding up search algorithms. In this paper, we investigate training-free NAS metrics for recurrent neural network (RNN) and BERT-based transformer architectures, targeted towards language modeling tasks. First, we develop a new training-free metric, named hidden covariance, that predicts the trained performance of an RNN architecture and significantly outperforms existing training-free metrics. We experimentally evaluate the effectiveness of the hidden covariance metric on the NAS-Bench-NLP benchmark. Second, we find that the current search space paradigm for transformer architectures is not optimized for training-free neural architecture search. Instead, a simple qualitative analysis can effectively shrink the search space to the best performing architectures. This conclusion is based on our investigation of existing training-free metrics and new metrics developed from recent transformer pruning literature, evaluated on our own benchmark of trained BERT architectures. Ultimately, our analysis shows that the architecture search space and the training-free metric must be developed together in order to achieve effective results.

**This paper will be published as a long paper at ACL 2023.**

# Code

All dataset files and training-free metric results are in [`data/`](data/). The NAS-Bench-BERT benchmark is described in [`data/BERT_benchmark.json`](data/BERT_benchmark.json).

Required packages are listed in [`requirements.txt`](requirements.txt), and can be installed with `pip install -r requirements.txt`. The Docker file used to define the MacOS container in which code was run is also included. 

Run [`BERT_metrics.ipyb`](BERT_metrics.ipynb) and [`RNN_metrics.ipyb`](BERT_metrics.ipynb) to reproduce results, and [`BERT_stats.ipyb`](BERT_stats.ipynb) and [`RNN_stats.ipyb`](RNN_stats.ipynb) to create figures.

[`nas_runner.ipynb`](nas_runner.ipynb) reproduces the NAS-Bench-BERT benchmark, and requires usage of Google Colab and Google Cloud Storage for TPU training of transformers. [`space_maker.ipynb`](space_maker.ipynb) generates the config file that defines NAS-Bench-BERT.


# Citation
If you use our code for your paper or work, please cite:

```bibtex
@misc{serianni2023trainingfree,
      title={Training-free Neural Architecture Search for RNNs and Transformers}, 
      author={Aaron Serianni and Jugal Kalita},
      year={2023},
      eprint={2306.00288},
      archivePrefix={arXiv},
      primaryClass={cs.LG}
}
```
Proceedings citation in ACL Anthology will added later.