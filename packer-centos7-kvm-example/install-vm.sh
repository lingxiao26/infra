virt-install -n test \
	--ram=8192 \
	--vcpus=4 \
  --import \
	--disk path=./centos7-base-img/centos7-base.img,bus=virtio \
	--network bridge:br0 \
	--console pty,target_type=serial
	# --graphics vnc,listen=0.0.0.0 
	#--location /home/lxli/packer-centos7-kvm-example/centos7-base-img/centos7-base.img \
	#--extra-args "console=tty0 console=ttyS0,115200n8"
	#--initrd-inject /data/kvm/ks-centos7.cfg \
	#--extra-args "inst.ks=file:/ks-centos7.cfg console=tty0 console=ttyS0,115200n8"
