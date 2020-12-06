FROM jupyter/datascience-notebook:latest
USER root
RUN apt update && apt install -y \
	graphviz
RUN pip install \
	japanize-matplotlib \
	lxml \
	html5lib \
	bs4 \
	pydotplus
WORKDIR /work
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--LabApp.token='ryotaro-pwd'"]