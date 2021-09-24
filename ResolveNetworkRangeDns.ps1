$ip = $args[0]
$server = $args[1]
for($i=1; $i -lt 256; $i++) 
{
$net_ip="$ip" + "." + "$i"
Resolve-DnsName -DnsOnly $net_ip -Server $server -ErrorAction Ignore
}
