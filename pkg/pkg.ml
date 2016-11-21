#!/usr/bin/env ocaml
#use "topfind"
#require "topkg"
open Topkg

let () =
  let change_logs = [ Pkg.std_file "CHANGES" ] in
  let licenses = [] in
  Pkg.describe ~change_logs ~licenses
  "mirage-block-solo5" @@ fun c ->
  Ok [ Pkg.mllib "lib/mirage_block_solo5.mllib"; ]
