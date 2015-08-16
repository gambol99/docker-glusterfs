#
#   Author: Rohith
#   Date: 2015-08-16 11:39:30 +0100 (Sun, 16 Aug 2015)
#
#  vim:ts=2:sw=2:et
#
NAME=glusterfs
AUTHOR=gambol99

.PHONY: build test

default: build

build:
	sudo docker build -t ${AUTHOR}/${NAME} .

test:
	sudo docker run -ti --rm -e --net=host ${AUTHOR}/${NAME}
