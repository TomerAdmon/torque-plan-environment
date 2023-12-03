FROM quali/torque-cli:2.4.3-beta

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
