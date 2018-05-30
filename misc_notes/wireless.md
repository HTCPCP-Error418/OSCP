# Wireless Testing

## Enable Promiscuous Mode

1) Find the interface name attached to the wireless NIC
   `sudo ifconfig`
   * The name will most likely be `wlan0` or `wlan1`
2) Start `airmon-ng` to enable promiscuous mode on the interface
   `sudo airmon-ng start [interface name]`
3) Check the interfaces again to ensure that `airmon` started
   * The interface name will have `mon` appended to it (`wlan0` becomes `wlan0mon`)

## Find Target Wireless Access Point(s)

* `airodump-ng` can be used to discover Wireless Access Points in the area
   `airodump-ng [new interface name]`

> __Notes:__
>
> The upper portion of the airodump screen shows information on found Access Points
>
> BSSID		- The MAC address of the Access Point
> PWR		- The signal strength (closer to 0 = better signal quality)
> Beacons	- The number of beacon frames received (more beacons = better signal quality)
> Data		- The number of data frames received
> CH		- The channel the Access Point is operating on
> MB		- The speed or AP mode
> ENC		- The encryption used by the Access Point
> ESSID		- The network name (if broadcasted)
>
> The lower portion of the airodump screen shows information on found wireless clients
>
> BSSID		- The MAC address of the Access Point the client is connected to
> STATION	- The MAC address of the client
> PWR		- The signal strength (closer to 0 = better signal quality)
> Packets	- The number of data frames received
> Probes	- The network names that the client has probed


