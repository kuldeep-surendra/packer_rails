## Requirements
* packer installed
* active AWS IAM Access Keys

## Running template
export AWS_ACCESS_KEY_ID=an-access-key<br/>
export AWS_SECRET_ACCESS_KEY=a-secret-key<br/>
export AWS_DEFAULT_REGION=an-aws-region<br/>
packer build -var password=<user_password for newly created system user> app.json <br />

* This creates am ebs backed ami with all ruby dependencies installed. *

## What all are installed

* Creates new deploy user
* Ruby 2.4.2
* Rails 
* nginx




