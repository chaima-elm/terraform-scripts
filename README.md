# Terraform

## Launch EC2 Instance

Configure AWS CLI with an IAM user with access keys:

$ aws configure
AWS Access Key ID [None]: **********
AWS Secret Access Key [None]: ************
Default region name [None]: 
Default output format [None]: json

write your own terraform file based on the file: first_instance.tf 

its better to validate and format before initialize terrafrom

here we are the instance has been launched using the ressources we mentioned in the tf file :
![Screenshot from 2023-10-11 19-16-19](https://github.com/chaima-elm/terraform-scripts/assets/70073617/618ed93e-1150-486b-a967-4243eb46d16b)

Don't forget to destroy what you've created using: terraform destroy

## Variables

We can also launch our instance the same way using variables

all needed resources are on the directory Var 

here we go ;) 
![Screenshot from 2023-10-12 23-49-44](https://github.com/chaima-elm/terraform-scripts/assets/70073617/4325a479-d825-4c2f-a72a-4741986a8f67)

on AWS:
![Screenshot from 2023-10-12 23-48-14](https://github.com/chaima-elm/terraform-scripts/assets/70073617/1656397e-f273-491a-974c-0ded324385c7)

## Provisioning
To provision resources on the EC2 instance, we use provisioners. 
first you need to generate your key:

![Screenshot from 2023-10-13 00-37-53](https://github.com/chaima-elm/terraform-scripts/assets/70073617/239e5f51-49fb-4df8-ac5c-7177d0fc45ac)
 
Then Update your Terraform file with provisioner configurations (check /provision directory) and apply changes.
you can open your instance public IPv4 address, but before you should add an Inbound rule for this:
![Screenshot from 2023-10-14 17-46-36](https://github.com/chaima-elm/terraform-scripts/assets/70073617/8d749486-d5e8-4314-b7ec-ed2a5bb50e69)


