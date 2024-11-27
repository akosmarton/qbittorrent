FROM fedora
RUN dnf install -y qbittorrent-nox && dnf clean all
VOLUME [ "/qbittorrent" ]
ENTRYPOINT [ "qbittorrent-nox" ]
CMD ["--profile=/data","--webui-port=8000","--torrenting-port=16881","--confirm-legal-notice"]
