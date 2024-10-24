#!/bin/bash

RAILS_ENV=production bundle exec rake helpy:mailman mail_interval=60 & 

/bin/bash /helpy/docker/run.sh
