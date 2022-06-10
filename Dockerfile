FROM jgoerzen/debian-base-security:bullseye

COPY setup/ /usr/local/debian-base-setup/
RUN /usr/local/debian-base-setup/040-debian-base-vnc

CMD ["/usr/local/bin/boot-debian-base"]
