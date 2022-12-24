
#printk burst
echo 100 >  /proc/sys/net/core/message_burst

ethtool -K eth0 gso  off
ethtool -K eth0 gro  off

echo 0 >  /proc/sys/net/ipv4/tcp_slow_start_after_idle

