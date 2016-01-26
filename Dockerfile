FROM docker/whalesay
COPY myscript.sh /
CMD sh /myscript.sh
