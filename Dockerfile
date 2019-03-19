FROM java:latest

MAINTAINER ADNLS
    
# fetch and install spark 2.4
RUN wget "http://apache.mediamirrors.org/spark/spark-2.4.0/spark-2.4.0-bin-hadoop2.7.tgz" && \
    tar xzvf spark-2.4.0-bin-hadoop2.7.tgz && \
    mv spark-2.4.0-bin-hadoop2.7 /usr/local/spark && \
    rm spark-2.4.0-bin-hadoop2.7.tgz    

# fetch and install livy server
RUN wget "http://apache.crihan.fr/dist/incubator/livy/0.5.0-incubating/livy-0.5.0-incubating-bin.zip" && \
    unzip livy-0.5.0-incubating-bin.zip && \
    mv livy-0.5.0-incubating-bin /usr/local/livy && \
    rm livy-0.5.0-incubating-bin.zip

EXPOSE 8998

ENV SPARK_HOME /usr/local/spark

COPY livy-server-2 /usr/local/livy/bin/  
COPY livy.conf /usr/local/livy/conf/  

ENTRYPOINT ["/usr/local/livy/bin/livy-server-2", "start"]
