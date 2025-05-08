# pipe-dreams
The tfds data pipeline notebooks.
This is also the lab for "doing things by the book". (Admittedly I don't keep this standard up on most of my projects.)

* Poetry is used to manage the project
* pre-commit will clean, lint, check and fix everything; committing stuff to git takes a while.



## pre-commit
    # worth trying to solve problems:
    pre-commit autoupdate
    # run all:
    pre-commit run --all-files
    # run one:
    pre-commit run isort --all-files