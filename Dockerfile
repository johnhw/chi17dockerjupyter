FROM jupyter/scipy-notebook:18e5563b7486
RUN pip install jupyterthemes jupyter_contrib_nbextensions yapf
RUN pip2 install yapf pykalman pfilter ipywidgets
RUN jupyter nbextension enable --py --sys-prefix widgetsnbextension
RUN pip2 install matplotlib==2.0.0 
RUN jt -t grade3 -f fira -nf oxygensans -tf oxygensans -T
RUN jupyter contrib nbextension install --user
ADD .jupyter /home/jovyan/.jupyter/
RUN git clone --recursive https://github.com/johnhw/computationalchi2017.git /home/jovyan/work
