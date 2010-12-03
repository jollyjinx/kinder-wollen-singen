#!/usr/bin/perl
$str="(one(((two)))abc)a((b))c(d)";
@arr=$str=~/\(+/g;
@tmp= sort {length($b) <=> length($a)}@arr;
# if would like to find the deepest '()', uncomment below part
#$num=length($tmp[0]);
#$exp1=qr/\({$num}[^\(\)]*\){$num}/;
#$str=~/$exp/;
# change below number can find whatever levels deep '()'
$num=4;
$exp2=qr/\({$num}[^\(\)]*\){$num}/;
@res=$str=~/$exp2/g;
print join "\n", @res;
