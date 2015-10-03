FROM kevinsimper/opencv:2.4.11

RUN sudo apt-get install -y git qt5-default libqt5svg5-dev qtcreator

RUN git clone https://github.com/biometrics/openbr.git && \
      cd openbr && \
      git checkout v1.1.0 && \
      git submodule init && \
      git submodule update

RUN cd openbr && mkdir build && \
      cd build && \
      cmake -DCMAKE_BUILD_TYPE=Release .. && \
      make -j4 && \
      sudo make install
