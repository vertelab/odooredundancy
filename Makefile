# TODO: Rewrite to cope with multiple deb-files or take other action to avoid
# having obj-deb expand into multiple items
obj-deb += ma_redundancy

all:
	dpkg-deb --build --root-owner-group $(obj-deb) deb

clean:
	rm -R *.deb
