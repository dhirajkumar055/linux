#!/bin/bash
function add(){
return $(($1+$2))
}
add 3 5
echo $?

