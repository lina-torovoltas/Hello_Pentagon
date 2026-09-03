05 rem compiler used: freebasic
06
10 RANDOMIZE
15
20 progress = 0
25
26
30 while progress < 100
40 limit = progress + 20
45
50 if limit > 100 then limit = 100
55
60 progress = int(rnd * (limit - progress)) + progress + 1
65
70 print "Pentagon hack progress:"; progress; "%"
75
80 sleep 1
90 wend
95
96
100 roll = int(rnd * 30) + 1
105
106
110 if roll > 20 then
120 print "Pentagon hack: Completed successfully."
125
130 else
140 print "Pentagon hack: Failed."
150 endif
