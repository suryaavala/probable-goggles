{{cookiecutter.project_name}}
==============================

{{cookiecutter.description}}


Pre-commit Hooks:
-----------
Code styling and formatting configurations on commit is in `{{ cookiecutter.repo_name }}/.pre-commit-config.yaml`.

To install, run the following under `{{ cookiecutter.repo_name }}` directory:

```
pip install pre-commit
pre-commit install
```

This will result in a message `pre-commit installed at .git/hooks/pre-commit`, which means the pre-commit configs are installed successfully.

Once the pre-commit hooks are installed properly, code styling and formatting will be run automatically on `git commit`. 

To bypass the styling and formatting check/correction, run `git commit --no-verify`.


NOTE: More pre-commit hooks can be added to `.pre-commit-config.yaml` and [here](https://github.com/pre-commit/pre-commit-hooks) is a list of some "out-of-the-box" hooks available.


Non-persistant Jupyter Notebook workspace container:
-----------
This is also known as `PIIP` (Personally Identifiable Information Prototype).

It creates a safe workspace using Jupyter Notebook for Data Scientists to explore data that may contain any Personally Identifiable Information. Essentially, it's a Docker container:

1. Mounted to `tmpfs` (temporary file system)

2. Contains Jupyter Notebook configuration to scrub output on save

3. Configured with reverse proxy to disable browser cache

To spin up a workspace, run the following script:

```
./run_notebook_non_persisted.sh
```


Project Organization
------------

    ├── LICENSE
    ├── Makefile           <- Makefile with commands like `make data` or `make train`
    ├── README.md          <- The top-level README for developers using this project.
    ├── data
    │   ├── external       <- Data from third party sources.
    │   ├── interim        <- Intermediate data that has been transformed.
    │   ├── processed      <- The final, canonical data sets for modeling.
    │   └── raw            <- The original, immutable data dump.
    │
    ├── docs               <- A default Sphinx project; see sphinx-doc.org for details
    │
    ├── models             <- Trained and serialized models, model predictions, or model summaries
    │
    ├── notebooks          <- Jupyter notebooks. Naming convention is a number (for ordering),
    │                         the creator's initials, and a short `-` delimited description, e.g.
    │                         `1.0-jqp-initial-data-exploration`.
    │
    ├── references         <- Data dictionaries, manuals, and all other explanatory materials.
    │
    ├── reports            <- Generated analysis as HTML, PDF, LaTeX, etc.
    │   └── figures        <- Generated graphics and figures to be used in reporting
    │
    ├── requirements.txt   <- The requirements file for reproducing the analysis environment, e.g.
    │                         generated with `pip freeze > requirements.txt`
    │
    ├── setup.py           <- makes project pip installable (pip install -e .) so src can be imported
    ├── src                <- Source code for use in this project.
    │   ├── __init__.py    <- Makes src a Python module
    │   │
    │   ├── data           <- Scripts to download or generate data
    │   │   └── make_dataset.py
    │   │
    │   ├── features       <- Scripts to turn raw data into features for modeling
    │   │   └── build_features.py
    │   │
    │   ├── models         <- Scripts to train models and then use trained models to make
    │   │   │                 predictions
    │   │   ├── predict_model.py
    │   │   └── train_model.py
    │   │
    │   └── visualization  <- Scripts to create exploratory and results oriented visualizations
    │       └── visualize.py
    │
    └── tox.ini            <- tox file with settings for running tox; see tox.testrun.org


--------

<p><small>Project based on the <a target="_blank" href="https://drivendata.github.io/cookiecutter-data-science/">cookiecutter data science project template</a>. #cookiecutterdatascience</small></p>
