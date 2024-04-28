#!/bin/bash

toggle=true

while true; do
  sleepseconds=2
  cx=$(kubectx -c | tr -d '\n')
  ns=$(kubens -c | tr -d '\n')

  case "$cx" in
    *"-prod")
      sleepseconds=1
      if [ "$toggle" == "true" ]; then
        toggle=false
        echo "%{F#c5c8c6}%{B#e92f6e} $cx/$ns %{B-}%{F-}"
      else
        toggle=true
        echo "%{F#e92f6e}%{B#c5c8c6} $cx/$ns %{B-}%{F-}"
      fi
      ;;
    *"-sandbox")
      echo "%{F#1f211f}%{B#f0c674} $cx/$ns %{B-}%{F-}";;
    "office")
      echo "%{F#1f211f}%{B#78ab78} $cx/$ns %{B-}%{F-}";;
    *)
      echo " $cx/$ns ";;
  esac
  sleep "$sleepseconds"
done
