#!/bin/env bash

cat input.txt | tr -d '[:alpha:]' | sed -r 's/^([0-9])$/\1\1/' | sed -r 's/(.).*(.)/\1\2/' | paste -sd+ | bc
