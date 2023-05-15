#!/bin/bash
#take two arguments, source and destination

rsync -ru --append --progress $1 $2