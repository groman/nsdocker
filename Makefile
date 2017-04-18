install:
	install -d /lib/systemd/system/ 
	install -m 644 nsdocker.service /lib/systemd/system/nsdocker.service
	install -m 644 nsdocker.socket /lib/systemd/system/nsdocker.socket
	systemctl daemon-reload
	systemctl disable docker.service || true
	systemctl enable nsdocker.service

uninstall:
	systemctl disable nsdocker.service || true
	systemctl enable docker.service || true
	rm -f /lib/systemd/system/nsdocker.service
	systemctl daemon-reload
