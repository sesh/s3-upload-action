FROM amazon/aws-cli

ADD upload.sh /upload.sh
RUN chmod +x /upload.sh

ENTRYPOINT ["/upload.sh"]
