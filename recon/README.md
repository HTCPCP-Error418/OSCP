#Table of Contents:
   [Passive Recon](#passive-recon)
      [General Information Collection](#general-information-collection)
      [Targeted Information Collection](#targeted-information-collection)
   [Active Recon](#active-recon)
      [DNS](#dns-enumeration)
      [Port Scanning](#port-scanning)
      

# Passive Recon

## General Information Collection
### Common open-source information sites:
* Google
* Company's Public Website
* LinkedIn
* Facebook
* Pipl
* Spokeo

### [Google Dorking Reference](https://www.alienvault.com/blog-content/GoogleHackingCheatSheet.pdf)

| Parameter           | Description                                                            |
| :-----------------: | ---------------------------------------------------------------------- |
| `inurl:`            | Value is contained somewhere in the URL                                |
| `site:`             | Only search within the site's domain                                   |
| `filetype:`         | Search only for files, not webpages                                    |
| `allinurl:`         | Search for all of the following words in the URL                       |
| `intext:`           | Search the body of the webpage for the specific text                   |
| `related:`          | Find website results that are related to the search term               |
| `info:`             | Find supplimental information on the page (such as cached pages)       |
| `link:`             | Find pages that reference the given link                               |
| `"[term]"`          | Find the exact phrase, include related words                           |
| `+[term]`           | Show results with this word exactly, do not include related words      |
| `-[term]`           | Show results that do not include this word                             |
| `"[term] * [term]"` | Wildcard - Search for anything between the two words, but include both |
| `OR` or `\|`        | Return results for either term                                         |
| `AND` or `&`        | Return results for both terms                                          |

## Targeted Information Collection
### Email Address Harvesting
* `TheHarvester` can be used to crawl sites for email addresses

### Web Server Information
* [NetCraft](http://searchdns.netcraft.com/)

### Registry Information
* [WhoIs](https://whois.icann.org/en)


# Active Recon

## DNS Enumeration

#### Forward Lookups
* Used to find the IP of a server using the server name
* Good for collecting information on the network structure
* Requires a list of commonly used subdomains for services

#### Reverse Lookups
* Used to find the server name of an IP
* Good for finding servers that may have been missed in the forward lookup by using their IPs as the range

#### Zone Transfer
* Can possibly provide all public and/or private hostnames, IPs, and functionality of servers and endpoints for the target network

### DNS Enumeration Tools

#### Dig
* Reverse Lookup: `dig -x [Target IP] @[Local DNS Server]`
* Forward Lookup: `dig [FQDN] @[Local DNS Server]`

#### dnsrecon

#### dnsenum

## Port Scanning
* Most port scanners default to only scanning TCP ports; however, UDP ports should be scanned as well
* When conducting a port scan, begin with the most common ports and follow up with a full port scan

### Common Types of Port Scans
* `TCP Connect Scans` are commonly the default scan type and completes a full 3-way handshake
* `TCP Half Connect\Half Open\Stealth Scans` begin a 3-way handshake; however, the final ACK packet is replaced with a RST packet
* `UDP Scans` send an empty UDP packet to the target ports
  * UDP ports are able to filter packets based on the packet contents, making UDP scans somewhat unreliable
