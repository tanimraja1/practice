#cloud-config
package_upgrade: true
runcmd:
 - echo "Created by Azure terraform-vmss-cloudinit module." | sudo cat <<EOF > /etc/yum.repos.d/nginx.repo \
[nginx] \
name=nginx repo \
baseurl=http://nginx.org/packages/mainline/centos/7/$basearch/ \
gpgcheck=0 \
enabled=1 \
EOF \
&& sudo yum install nginx \