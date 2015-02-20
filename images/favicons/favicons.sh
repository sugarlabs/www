#!/bin/sh

set -x

for i in `seq -f '%02.0f' 1 12`; do
	for s in 64 48 32 16; do
		sxs=${s}x${s}
		# The PNGs are much bigger than the GIFs
		convert Favicon_${i}.png -resize $sxs -depth 8 -transparent white sugarlabs_favicon_${i}_${sxs}.gif
	done
	# Bug in ImageMagick: conversion to .ICO does not work with PNG!
	convert sugarlabs_favicon_${i}_16x16.gif sugarlabs_favicon_${i}_48x48.gif sugarlabs_$i.ico
done
