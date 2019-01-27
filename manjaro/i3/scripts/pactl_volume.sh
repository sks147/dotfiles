#!/bin/bash

pacmd list-sinks | grep "index:" | grep '*' | awk '{print $3}'
