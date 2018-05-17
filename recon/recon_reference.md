# Passive Recon

## Good open-source information sites:
* Google
* Company's Public Website
* LinkedIn
* Facebook
* Pipl
* Spokeo

## [Google Dorking Reference](https://www.alienvault.com/blog-content/GoogleHackingCheatSheet.pdf)

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

## Email Address Harvesting
* `TheHarvester` can be used to crawl sites for email addresses

## Web Server Information
* [NetCraft](http://searchdns.netcraft.com/)

## Registry Information
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
* Can be used to conduct forward and reverse DNS lookups and can use local DNS servers
* Reverse Lookup: `dig -x [Target IP] @[Local DNS Server]`
* Forward Lookup: `dig [FQDN] @[Local DNS Server]`

