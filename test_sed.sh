#!/bin/sh
set -e

 sed -e '/name: "PreludeCore",/,/),/c\
          name: "PreludeCore",\
          file: "aFile"\
      ),' Package.swift.test