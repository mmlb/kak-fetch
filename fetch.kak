# SPDX-License-Identifier: AGPL-3.0
 
hook  global WinDisplay (.*?):(\d+) %{ evaluate-commands %sh{
    file=$kak_hook_param_capture_1
    line=$kak_hook_param_capture_2

    echo "delete-buffer";
    echo "edit $file $line";
}}
