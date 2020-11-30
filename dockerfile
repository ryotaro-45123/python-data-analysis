FROM jupyter/datascience-notebook:latest
WORKDIR /work
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--LabApp.token='ryotaro-pwd'"]