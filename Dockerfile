FROM amazon/aws-cli

ADD upload.sh /upload.sh
ENTRYPOINT ["/upload.sh"]
