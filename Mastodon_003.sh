#!/bin/bash

sudo -u postgres 

psql

CREATE USER mastodon CREATEDB;

\q

sudo -u mastodon
