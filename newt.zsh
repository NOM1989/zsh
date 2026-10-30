# newt (nmtui, whiptail) colours, matching NvChad bearded-arc
if [[ $COLORTERM == (truecolor|24bit) ]]; then
  export NEWT_COLORS='
root=#a1adb7,#19212e
roottext=#a1adb7,#19212e
helpline=#1c2433,#69c3ff
shadow=#19212e,#141a24
border=#69c3ff,#1c2433
window=#c3cfd9,#1c2433
title=#bd93ff,#1c2433
label=#c3cfd9,#1c2433
textbox=#c3cfd9,#1c2433
acttextbox=#1c2433,#69c3ff
listbox=#c3cfd9,#1c2433
actlistbox=#1c2433,#3cec85
sellistbox=#3cec85,#1c2433
actsellistbox=#1c2433,#3cec85
checkbox=#c3cfd9,#1c2433
actcheckbox=#1c2433,#3cec85
entry=#c3cfd9,#303847
disentry=#626a79,#1c2433
button=#c3cfd9,#303847
actbutton=#1c2433,#69c3ff
compactbutton=#a1adb7,#1c2433
fullscale=,#69c3ff
emptyscale=,#303847
'
else
  # 16-colour fallback (e.g. Linux console)
  export NEWT_COLORS='
root=white,black
border=white,black
window=white,black
shadow=black,black
title=yellow,black
roottext=white,black
helpline=black,lightgray
label=white,black
textbox=white,black
acttextbox=black,cyan
listbox=white,black
actlistbox=black,cyan
sellistbox=black,brightgreen
actsellistbox=black,yellow
checkbox=white,black
actcheckbox=black,cyan
entry=black,lightgray
disentry=gray,black
button=black,cyan
actbutton=black,yellow
compactbutton=white,black
emptyscale=,gray
fullscale=,cyan
'
fi
