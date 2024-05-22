
#systemctl enable nginx &>>/tmp/expense.log
#systemctl start nginx

#cd /usr/share/nginx/html
#unzip /tmp/frontend.zip &>>/tmp/expense.log
#
#systemctl restart nginx &>>/tmp/expense.log
#

- name: Plyabook of frontend
  hosts: all
  become: yes
  tasks:
    - name: install nginx
      ansible.builtin.dnf:
        name: nginx
        state: installed

    - name: Remove directory
      ansible.builtin.file:
        path: /usr/share/nginx/html/*
        state: absent

    - name: Copy config file
      ansible.builtin.copy:
        src: expense.conf
        dest: /etc/nginx/default.d/expense.conf

    - name: Download and Extract Apps contents
      ansible.builtin.unarchive:
        src: https://expense-artifacts.s3.amazonaws.com/expense-frontend-v2.zip
        dest:  /usr/share/nginx/html
        remote_src: yes


    - name: Start nginx
      ansible.builtin.systemd_service:
        state: started
        name: nginx
        enabled: true






