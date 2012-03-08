#!/system/bin/sh
echo "ondemand" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
#echo 90 > /sys/devices/system/cpu/cpu0/cpufreq/ondemand/up_threshold
echo 85 > /sys/devices/system/cpu/cpu0/cpufreq/ondemand/up_threshold
echo 30 > /sys/devices/system/cpu/cpu0/cpufreq/ondemand/down_differential
#echo 500000 > /sys/devices/system/cpu/cpu0/cpufreq/ondemand/sampling_rate
echo 50000 > /sys/devices/system/cpu/cpu0/cpufreq/ondemand/sampling_rate
