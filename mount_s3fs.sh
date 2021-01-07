#!/bin/bash

export s3bucket=audio-for-wordpress-43760614807f9d04391cb32d0d1651cfe4a2db0e
export s3mountpath=:~/_s3fs/audio-for-wordpress-43760614807f9d04391cb32d0d1651cfe4a2db0e

# Might not change often
export s3_passwd_file=~/.passwd-s3fs

mkdir -p $s3mountpath

s3fs $s3bucket $s3mountpath -o passwd_file=$passwd_file

