FROM jupyter/datascience-notebook:latest
RUN pip install \
	japanize-matplotlib \
	lxml \
	html5lib \
	bs4
WORKDIR /work
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--LabApp.token='ryotaro-pwd'"]