FROM docker:dind

VOLUME /certs/ca
VOLUME /certs/client
ENV DOCKER_TLS_CERTDIR=/certs
RUN apk update && apk upgrade
RUN apk add zsh && \
apk add git && \
apk add fzf && \
apk add perl

# Install oh-my-zsh
RUN cd /tmp && \
wget "https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh" \
&& sh install.sh

# Install cowsay
RUN cd /tmp && \
    git clone https://github.com/jasonm23/cowsay.git  && \
    cd cowsay ; ./install.sh /usr/local && \
    rm -rf /var/cache/apk/* /var/tmp/* /tmp/* && \
    ln -s /usr/local/bin/cowsay /usr/bin/cowsay

WORKDIR demo
COPY ./main.sh .
RUN chmod +x main.sh
# CMD ["cowsay", "-f", "dragon-and-cow", "Nicolas Nuñez 45027"]



