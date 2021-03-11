# SPDX-License-Identifier: AGPL-3.0
 
hook  global WinDisplay (.*?):(\d+)(?::(\d+):?)? %{ evaluate-commands %sh{
    file=$kak_hook_param_capture_1
    line=$kak_hook_param_capture_2
    col=$kak_hook_param_capture_3

    if ! [ -f "$file" ]; then
        echo "kak-fetch: file=$file does not exist" >&2
        exit 1
    fi

    echo "delete-buffer";
    echo "edit $file $line $col";
}}
