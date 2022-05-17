#!/bin/bash

git log --pretty=format:"%h %an %ad %s" --date=short > CHANGELOG
