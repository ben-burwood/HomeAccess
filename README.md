# HomeAccess

Nginx Reverse Proxy, LetsEncrypt and DuckDNS for External Home Network Acess

## SSL

### Certificate Renewal

Let's Encrypt Certificates expire after 90 days.

Certbot has a renew command which can be used to renew these certificates if they expire in less than 30 days.

### Certificate Types

There are two primary methods certbot uses to verify our identity (the “challenge”) before generating a certificate for us:

- HTTP-01 | This challenge looks for a custom file on our public-facing website. If that file exists, a certificate is created for us.
- DNS-01 | This challenge looks for a custom TXT record on our public DNS. If the TXT record is there, a certificate is created for us.
    For Wildcard Certs a DNS Challenge is REQUIRED.

## DDNS

DuckDNS is used currently to provide Dyamic DNS for the HomeAccess Server.

A limitation of DuckDNS os that it only allows one TXT record. The Limitation of this is that it is ONLY implemented for Wildcard Subdomains (i.e. home.<SUB>.duckdns.org and NOT <SUB>.duckdns.org).

### Renewal

https://github.com/infinityofspace/certbot_dns_duckdns

A Crontab is provided to rerun the Certbot Docker Container once every 4 Days, this will Renew the Certificates if Required.
