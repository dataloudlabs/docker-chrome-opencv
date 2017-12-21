FROM pjsousa/docker-chrome-python

USER root

# Install Chrome.
RUN apt-get update && apt-get -y install python-opencv

## instal pip packages
RUN pip install \
  imageio\
  opencv-python==3.3.0.10

CMD "python -m imageio"


