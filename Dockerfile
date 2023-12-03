FROM quali/torque-cli:2.4.4-beta

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
