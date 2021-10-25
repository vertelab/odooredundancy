# TODO: Rewrite to cope with multiple deb-files or take other action to avoid
# having obj-deb expand into multiple items
obj-deb += ot_redundancy

all:
	dpkg-deb --build --root-owner-group $(obj-deb) deb

clean:
	rm deb/*.deb
