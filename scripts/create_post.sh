#! /bin/bash

DATE=`date`
SHORT_DATE=`date +%Y-%m-%d`

TITLE=$1
CATEGORIES=$2
TAGS=$3
AUTHOR=$4

echo Creating post: $TITLE, with categories: $CATEGORIES

FILENAME=_posts/$SHORT_DATE-"$((tr -dc '[:alnum:]- ' | tr [A-Z] [a-z] | tr -s ' ' | tr ' ' '-') <<< "$1")".md

if [ ! -d _posts ]
then
    echo 'Missing post folder. Creating a new one.'
    mkdir _posts
fi

if [ -f $FILENAME ]
then
    echo 'Post already exists'
else
    echo "---
layout: post
title:  $TITLE
date:   $DATE
categories: $CATEGORIES
tags: $TAGS
comments: true
buy_me_a_coffee: true
author: $AUTHOR

side_panel:
  left_panel: side-panels/panel-for-post.html

description:
image:
  link:
  description:
---" > $FILENAME
fi
