#!/bin/sh

ocamlbuild \
    -use-ocamlfind \
    -syntax camlp4o \
    -pkg core,async,async_ssl,cohttp,cohttp.async,yojson,cryptokit,simple_pam \
    -pkg sexplib.syntax \
    -tag thread \
    -tag bin_annot \
    -tag short_paths \
    -cflags "-w A-4-33-40-41-42-43-34-44" \
    -cflags -strict-sequence \
    -cflags -principal \
    $@

