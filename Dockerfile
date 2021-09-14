FROM docker:dind

RUN apk update
RUN apk upgrade
RUN apk add zsh
RUN apk add git
RUN apk add fzf
RUN cd /tmp
RUN wget "https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh"
RUN sh install.sh
RUN apk add figlet

# Install cowsay
RUN apk update && \
    apk add --no-cache perl && \
    cd /tmp && \
    git clone https://github.com/jasonm23/cowsay.git  && \
    cd cowsay ; ./install.sh /usr/local && \
    rm -rf /var/cache/apk/* /var/tmp/* /tmp/*


WORKDIR demo

# CMD ["figlet", "Nicolas Nunez 25027"]
