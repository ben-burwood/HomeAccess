# HomeAccess

Nginx Reverse Proxy, LetsEncrypt and DuckDNS for External Home Network Acess

## Certificate Renewal

Let's Encrypt Certificates expire after 90 days.

Certbot has a renew command which can be used to renew these certificates if they expire in less than 30 days.

Set up a cronjob to automate this process by checking daily:

1. Copy Cloudflare Credentials File `cp ./certbot/credentials.ini.example cp ./certbot/credentials.ini`
2. Input Credentials
3. Restrict File Access `chmod 600 ./certbot/cloudflare.ini`
4. Generate Certs
5. Schedule Renew/Reload Job

### Certificate Types

There are two primary methods certbot uses to verify our identity (the “challenge”) before generating a certificate for us:

- HTTP-01 | This challenge looks for a custom file on our public-facing website. If that file exists, a certificate is created for us.
- DNS-01 | This challenge looks for a custom TXT record on our public DNS. If the TXT record is there, a certificate is created for us.
    For Wildcard Certs a DNS Challenge is REQUIRED.
