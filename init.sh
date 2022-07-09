#!/bin/bash


KEY='ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDBVmPhcYLoFmQsMUKrtKrOXOjb5rGtdEiwzwi91qTM62Ygu7l1TfaCH1x2CPHr4XpJ3gobCpWgdb5SGV14TSQRgpCpGB5LuEjizkfpSJCBIFy2d4pB54scQQFrmzJUzosQjFAcuSCgfpvxUHtdz6mJC3rnsyRtcG9bYVd20bwn4pTNRV+CdehYqzUVlo4hZcettXCrXFWifiCpZhWkcD7QW4xQP13LRw5kiXB5JGe80A6T1VBP6iBLIHW/j/fVapCu5eb6vfwzT9FfGdIVOgvzRZfYNPfsRdEu2iuz5Sl8D5Y4V9EYENC+v02wYO09u0ERUnhV8FlDLLiSTgO2OiNT4vdKdjII/eRJ0YTgzZjIRWX2i/LFLp9cY+PsXn/MzA3T902ReQ6qL4QpQaezw+acqSwxKf0hA7VE2QuqSpLBGmTfIpIvEiLgVUz3/JcY+qEEgAdjxX7hnpYDfWaB/DL9CN8meV6FjStycAC4T8rZEs4isKYvBwuyBlDPsFBisZE= tibme_a40j@LAPTOP-64JHNQV9'
sudo useradd ubuntu -m -s /bin/bash  2>/dev/null
mkdir -p /home/ubuntu/.ssh
echo "${KEY}" >> /home/ubuntu/.ssh/authorized_keys
sudo sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config
sudo systemctl restart sshd
sudo cp /home/ubuntu/.ssh/authorized_keys /root/.ssh/authorized_keys
