[![Build Status](https://travis-ci.com/suryaavala/probable-goggles.svg?branch=master)](https://travis-ci.com/suryaavala/probable-goggles)

# probable-goggles
A logical, reasonably standardized, but flexible project structure for doing and sharing data science work. <br>
Based On: 
 - [Cookie Cutter](https://github.com/drivendata/cookiecutter-data-science)
 - [Eliiza Cookie Cutter](https://gitlab.mantelgroup.com.au/eliiza/eliiza-cookiecutter-data-science)

#### Install
-----------
 - Python 2.7 or 3.5
 - [Cookiecutter Python package](http://cookiecutter.readthedocs.org/en/latest/installation.html) >= 1.4.0: This can be installed with pip by or conda depending on how you manage your Python packages:

``` bash
$ pip install cookiecutter
```

or

``` bash
$ conda config --add channels conda-forge
$ conda install cookiecutter
```

### To start a new project, run:
------------

    cookiecutter git@github.com:suryaavala/probable-goggles.git



#### The resulting directory structure
------------

```
├── Dockerfile-notebook   <- Dockerfile to containerise the project to run Jupter Notebook
├── LICENSE
├── Makefile              <- Makefile with commands like `make data` or `make train`
├── README.md             <- The top-level README for developers using this project.
├── data
│   ├── external          <- Data from third party sources.
│   ├── interim           <- Intermediate data that has been transformed.
│   ├── processed         <- The final, canonical data sets for modeling.
│   └── raw               <- The original, immutable data dump.
├── docs                  <- A default Sphinx project; see sphinx-doc.org for details
│   ├── Makefile
│   ├── commands.rst
│   ├── conf.py
│   ├── getting-started.rst
│   ├── index.rst
│   └── make.bat
├── models                <- Trained and serialized models, model predictions, or model summaries
│
├── notebooks             <- Jupyter notebooks. Naming convention is a number (for ordering),
│                            the creator's initials, and a short `-` delimited description, e.g.
│                            `1.0-jqp-initial-data-exploration`.
│
├── references            <- Data dictionaries, manuals, and all other explanatory materials.
│
├── reports               <- Generated analysis as HTML, PDF, LaTeX, etc.
│   └── figures           <- Generated graphics and figures to be used in reporting
├── requirements.txt      <- The requirements file for reproducing the analysis environment, e.g.
│                            generated with `pip freeze > requirements.txt`
│
├── run_notebook.sh       <- Script to run the dockerised Jupyter Notebook
├── setup.py
├── .gitlab-ci.yml / .travis.yml  <- CI/CD config file for running tests
├── src                   <- Source code for use in this project.
│   ├── __init__.py       <- Makes src a Python module
│   ├── common            <- Scripts for common utility / helper functions
│   │   ├── __init__.py
│   │   ├── misc
│   │   │   └── __init__.py
│   │   └── utils
│   │       └── __init__.py
│   ├── data              <- Scripts to download or generate data
│   │   ├── __init__.py
│   │   └── make_dataset.py
│   ├── evaluation        <- Scripts to evaluate performances of models
│   │   └── __init__.py
│   ├── features          <- Scripts to turn raw data into features for modeling
│   │   ├── __init__.py
│   │   └── build_features.py
│   ├── tests            <- Folder to put tests in
│   ├── models            <- Scripts to train models and then use trained models to make
│   │   │                    predictions
│   │   ├── __init__.py
│   │   ├── predict_model.py
│   │   └── train_model.py
│   └── visualization     <- Scripts to create exploratory and results oriented visualizations
│       ├── __init__.py
│       └── visualize.py
├── test_environment.py
└── tox.ini               <- tox file with settings for running tox; see tox.testrun.org
```


### Installing development requirements
------------

    pip install -r requirements.txt

### Running the tests
------------

    py.test tests