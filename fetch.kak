# SPDX-License-Identifier: AGPL-3.0
 
hook  global WinDisplay .*:[0-9]+ %{ evaluate-commands %sh{
    newfile=$(echo "$kak_buffile" | awk -F: '{print $1}')
    line=$(echo "$kak_buffile" | awk -F: '{print $2}')
    echo "delete-buffer";
    echo "edit $newfile $line";
}}
