FROM jgoerzen/debian-base-security:jessie AS debian-addons

FROM homeassistant/home-assistant:0.63.1

COPY --from=debian-addons /usr/local/preinit/ /usr/local/preinit/
COPY --from=debian-addons /usr/local/bin/ /usr/local/bin/
COPY --from=debian-addons /usr/local/debian-base-setup/ /usr/local/debian-base-setup/

RUN run-parts --exit-on-error --verbose /usr/local/debian-base-setup
CMD ["/usr/local/bin/boot-debian-base"]
