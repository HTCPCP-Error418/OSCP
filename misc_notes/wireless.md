# Wireless Testing

## Enable Promiscuous Mode

1) Find the interface name attached to the wireless NIC (most likely `wlan0` or `wlan1`)

   `sudo ifconfig`

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
> | __Column Name__ | __Description__                                                             |
> | :-------------: | :-------------------------------------------------------------------------- |
> | __BSSID__       | The MAC address of the Access Point                                         |
> | __PWR__         | The signal strength (closer to 0 = better signal quality)                   |
> | __Beacons__     | The number of beacon frames received (more beacons = better signal quality) |
> | __Data__        | The number of data frames received                                          |
> | __CH__          | The channel the Access Point is operating on                                |
> | __MB__          | The speed or AP mode                                                        |
> | __ENC__         | The encryption used by the Access Point                                     |
> | __ESSID__       | The network name (if broadcasted)                                           |
>
> The lower portion of the airodump screen shows information on found wireless clients
>
> | __Column Name__ | __Description__                                                |
> | :-------------: | :------------------------------------------------------------- |
> | __BSSID__       | The MAC address of the Access Point the client is connected to |
> | __STATION__     | The MAC address of the client                                  |
> | __PWR__         | The signal strength (closer to 0 = better signal quality)      |
> | __Packets__     | The number of data frames received                             |
> | __Probes__      | The network names that the client has probed                   |


