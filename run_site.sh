output_file="run_site.script.out"

script $output_file -c "ansible-playbook main_playbook_site.yml -i inventory"

sleep 10
script -a $output_file -c "echo ------------------------------------------------------------------"
script -a $output_file -c "ansible -m shell -a 'service mongodb status' -i inventory all -u ubuntu"

sleep 10
script -a $output_file -c "echo ------------------------------------------------------------------"
script -a $output_file -c "ansible -m shell -a 'service nginx status' -i inventory all -u ubuntu"
