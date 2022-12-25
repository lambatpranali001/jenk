cd /var/lib/jenkins/workspace/lab1
sudo docker save mypage:1.0 > mypage.tar
scp mypage.tar ec2-user@****:/home/ec2-user
ssh ec2-user@**** "sudo docker load < mypage.tar"
ssh ec2-user@**** "sudo docker rm -f web1"
ssh ec2-user@**** "sudo docker run --name web1 -p 9001:80 -d mypage:1.0"

