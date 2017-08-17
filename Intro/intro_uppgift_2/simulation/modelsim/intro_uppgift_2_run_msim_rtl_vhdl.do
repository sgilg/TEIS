transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/gillj/Documents/AGSTU/Intro/intro_uppgift_2/intro_uppgift_2.vhd}

vcom -93 -work work {C:/Users/gillj/Documents/AGSTU/Intro/intro_uppgift_2/simulation/modelsim/intro_uppgift_2.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  intro_uppgift_2_vhd_tst

add wave *
view structure
view signals
run 1 us
