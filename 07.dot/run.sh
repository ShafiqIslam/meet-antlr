#!/bin/sh

grun DOT graph -tokens test.dot

grun DOT graph -tree test.dot

grun DOT graph -gui test.dot
