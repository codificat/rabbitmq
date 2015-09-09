FROM rabbitmq

# must be a subdir of /var/lib/rabbitmq, which is the VOLUME defined in the parent image
ENV RABBITMQ_HOME /var/lib/rabbitmq/home

RUN usermod --home $RABBITMQ_HOME rabbitmq

RUN ln -sf $RABBITMQ_HOME/.erlang.cookie /root/

COPY docker-entrypoint.sh /
