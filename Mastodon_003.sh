#!/bin/bash

sudo -u postgres psql

sudo -u postgres CREATE USER mastodon CREATEDB;

sudo -u postgres \q

exit
