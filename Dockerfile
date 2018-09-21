FROM dclong/jupyterlab:18.04

RUN npm install -g configurable-http-proxy \
    && pip3 install jupyterhub

ADD settings/jupyter_notebook_config.py /etc/jupyter/
ADD settings/jupyterhub_config.py /etc/jupyterhub/
ADD scripts /scripts

EXPOSE 8000
