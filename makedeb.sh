VER=cherrypop_0.2beta-1
compileok() {
	DEST=$VER
	for BIN in discoveryd cherrypop-replicated vmrunnerd runner.sh deletedom; do
	cp $BIN $DEST/usr/sbin/
	done
	cp init.d/cherrypop $DEST/etc/init.d/
	dpkg-deb --build $DEST
	
}
./compile.sh && compileok
