component=$1
ansible-playbook get-secrets.yml -e vault_token=$vault_token
#ansible-playbook -i $component-$env.shujathdevops.online, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e role_name=$component  -e env=$env expense-play.yml