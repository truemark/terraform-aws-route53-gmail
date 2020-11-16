# AWS Route53 Gmail Terraform Module

This module will setup all MX records as well as an optional SPF TXT record
for use with Gmail.

Example Usage:
```hcl
module "gmail" {
  source = "truemark/route53-gmail/aws"
  zone_name = "example.com"
}
``` 
