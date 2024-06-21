component=$1
ansible-playbook get-secrets.yml -e vault_token=$vault_token
#ansible-playbook -i $component-$env.shujathdevops.online, -e role_name=$component  -e env=$env expense-play.yml -e '@~/secrets.json' -e '@~/app.json'
#rm -f ~/secrets.json ~/app.json