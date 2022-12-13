# Nodejs-With-Code-Deploy

## Step 1 - Create two roles - one for EC2 and Second is for CodeDeploy.

II- EC2 Role 
![image](https://user-images.githubusercontent.com/67600604/207275826-c5f3a196-07e1-477d-a552-f44697e9bbc7.png)

II- Code DeployRole
![image](https://user-images.githubusercontent.com/67600604/207276000-1b9628d8-8db9-476f-addb-debd5fb97d5a.png)

Now, we are done with the IAM roles Creation

## Step 2 - Launch EC2 Instance 

Attach the role to the EC2 instance that we created for the EC2
Install CodeDeploy agent in your EC2 instance 

```
sudo yum install ruby -y 
wget https://aws-codedeploy-ap-south-1.s3.ap-south-1.amazonaws.com/latest/install
sudo chmod +x ./install
sudo ./install auto
sudo systemctl status codedeploy-agent
```

```Note - Make sure to reboot your system after attaching the role and codedeploy-agent```

Step 3 - Create Application in code deploy

![image](https://user-images.githubusercontent.com/67600604/207278975-a38a7e35-3406-49dd-a7b8-3309b4312c51.png)

after creating application in codedeploy -> create deployment group -> add the instance that we have launched 

Step 4 - Create the pipeline and add the configuration

![image](https://user-images.githubusercontent.com/67600604/207279132-b6ead277-25f7-44c9-9ba7-c74f2ddefb07.png)

![image](https://user-images.githubusercontent.com/67600604/207279179-b75daeb9-cb80-441a-b3c4-3f4a46877a69.png)

![image](https://user-images.githubusercontent.com/67600604/207279238-f29efd37-64d3-456e-911e-dc1aca64a6b0.png)

![image](https://user-images.githubusercontent.com/67600604/207279435-8c56afad-b172-40b5-a810-43ed6c8b825b.png)

In my case , I have my code in the github , configure the github repository and you can skip the build stage.
and attach the role that we have created for the code deploy and add the deployment group too.

![image](https://user-images.githubusercontent.com/67600604/207279502-9ce3c13c-660a-4510-a957-9c46ad660fe0.png)

Step 5 - Running the pipeline.

In my repo - https://github.com/shrutiVij1502/nodejs-with-code-deploy/new/master

you can see the appspec.yml file, in which we have given the stages and acordingly , created the scripts in the scripts folder

![image](https://user-images.githubusercontent.com/67600604/207278836-bf442dd8-96db-4b38-a344-5b687cecc6f4.png)

Reference - https://blog.devgenius.io/deploy-a-reactjs-application-to-aws-ec2-instance-using-aws-codepipeline-3df5e4157028
