FROM dclong/jupyterlab

RUN pip3 install jupyterhub \
    && npm install -g configurable-http-proxy

ADD settings/jupyter_notebook_config.py /etc/jupyter/
ADD settings/jupyterhub_config.py /etc/jupyterhub/
ADD scripts /scripts

EXPOSE 8000
