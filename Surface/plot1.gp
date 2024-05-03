set terminal png
set output "fc_00000000_00000000_ALL_ALL_VI_0_thresholds.1.png"
set datafile missing "-99"
set title "Frequency  for Visibility (m)\n   Selection: ALL    104 stations\n  Period: 20211110-20211120\n  Used {00,06,12,18} + 00 01 ... 36" 

set style line 1 lt 0 lw 1 pt 5 # use black thin lines
set style line 2 lt 8 lw 1 pt 1 # use black thicker lines
set grid
set xlabel "thresholds m"
set ylabel "Frequency"
set logscale x
 
 set arrow  1 from  1000.00000,graph 0.05 to  1000.00000,graph 0.01 lt -1 lw 2 
 set arrow  2 from  5000.00000,graph 0.05 to  5000.00000,graph 0.01 lt -1 lw 2 
 set arrow  3 from  10000.0000,graph 0.05 to  10000.0000,graph 0.01 lt -1 lw 2 
 set arrow  4 from  20000.0000,graph 0.05 to  20000.0000,graph 0.01 lt -1 lw 2
 plot 'c_00000000_00000000_ALL_ALL_VI_0_REF.scores2' using 2:13 title 'OBS' with linespoints lt 8 lw 2 pt 7,'c_00000000_00000000_ALL_ALL_VI_0_REF.scores2' using 2:14 title 'REF' with linespoints lt 1 lw 2 pt 7,'c_00000000_00000000_ALL_ALL_VI_0_sob0km_dt30min_copolspd.scores2' using 2:14 title 'sob0km_dt30min_copolspd' with linespoints lt 2 lw 2 pt 7,'c_00000000_00000000_ALL_ALL_VI_0_sob25km_dt30min_copolspd.scores2' using 2:14 title 'sob25km_dt30min_copolspd' with linespoints lt 3 lw 2 pt 7,'c_00000000_00000000_ALL_ALL_VI_0_sob25km_dt30min_sarospd.scores2' using 2:14 title 'sob25km_dt30min_sarospd' with linespoints lt 4 lw 2 pt 7,'c_00000000_00000000_ALL_ALL_VI_0_sob25km_dt90min_cpspd.scores2' using 2:14 title 'sob25km_dt90min_cpspd' with linespoints lt 5 lw 2 pt 7,'c_00000000_00000000_ALL_ALL_VI_0_sob50km_dt30min_copolspd.scores2' using 2:14 title 'sob50km_dt30min_copolspd' with linespoints lt 6 lw 2 pt 7