component=$1
rm -f ~/*.json
ansible-playbook get-secrets.yml -e vault_token=$vault_token -e role_name=$component  -e env=$env
ansible-playbook -i $component-$env.shujathdevops.online, -e role_name=$component  -e env=$env expense-play.yml -e '@~/secrets.json'
rm -f ~/*.json