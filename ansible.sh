component=$1
ansible-playbook get-secrets.yml -e vault_token=$vault_token -e ansible_user=ec2-user -e ansible_password=DevOps321
ansible-playbook -i $component-$env.shujathdevops.online, -e role_name=$component  -e env=$env expense-play.yml -e ansible_user=ec2-user -e ansible_password=DevOps321
#rm -f ~/secrets.json ~/app.json