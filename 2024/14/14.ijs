require 'format/printf viewmat'
coinsert 'jgl2'


'P V' =. (|./.~ I.@2 2 $~ #) ".&> '-?\d+' rxall fread 'D:\south\Desktop\repos\aoc\2024\14\input.txt'
D =: 103 101
M =. D $~ # P
F =: _2 <\ M | P +~ V * ]
S =. */ +/^:_&> (, { ;~ 0 _1) { (<. -: D) <;._3 (F 100) (#/.~@[)`(~.@[)`] } D $ 0
G =. 8006
echo S , G

NB. visualized brute-force, takes ~3.3m to find the easter egg
R =. {{)v
  wd 'pc w0'
  wd 'minwh 150 150; cc g0 isidraw'
  wd 'pshow'
  wd 'psel w0; ptop'
  vmcc =: glpaint_jgl2_ @ viewmatcc_jviewmat_
  
  C =: 7900
  update =: {{)v
    im =: 1 (F C) } D $ 0
    C =: >: C
  }}
  render =: {{)v
    (15 15 35 ,: 243 243 98) vmcc im;'g0'
  }}
  step =: render @ update
  
  w0_close =: {{)v
    wd 'timer 0'
    wd 'pclose'
    echo C
  }}
  sys_timer_z_ =: step_base_
  wd 'timer 25'
}}
