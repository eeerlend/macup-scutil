#!/bin/bash

# todo: check if array is declared up front!
# shellcheck disable=SC2154
for ((i=0; i<${#macup_scutil_prefs[@]}; ++i)); do
  pref="$(echo "${macup_scutil_prefs[i]}" | cut -d':' -f1)"
  value="$(echo "${macup_scutil_prefs[i]}" | cut -d':' -f2)"

  current_value="$(scutil --get $pref)"

  if [ "$current_value" != "$value" ]; then
    report_from_package "Setting \"$pref\" to \"$value\" "
    sudo scutil --set "$pref" "$value"
  else
    report_from_package "\"$pref\" is already set to \"$current_value\" "
  fi
done
