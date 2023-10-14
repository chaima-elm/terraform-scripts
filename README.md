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
![Screenshot from 2023-10-11 19-16-19](https://github.com/chaima-elm/Terraform/assets/70073617/86c8d1e2-a3ba-4913-a5b2-9e782d561759)
Don't forget to destroy what you've created using: terraform destroy

## Variables

We can also launch our instance the same way but using variables

all needed resources are on the directory Var 

here we go ;) 
![Alt text](<Screenshot from 2023-10-12 23-49-44.png>)
on AWS:
![Alt text](<Screenshot from 2023-10-12 23-48-14.png>)
 
##Provisioning

 To provision resources on the EC2 instance, use provisioners. 
 first you need to generate your key:
 screeenshooooooooooot
 
 Update your Terraform file with provisioner configurations That you will find in the directory provision, and apply changes.
