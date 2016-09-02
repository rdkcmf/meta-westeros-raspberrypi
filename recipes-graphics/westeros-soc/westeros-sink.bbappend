CFLAGS_append_rpi = " -I ${S}/../../protocol/"

do_compile_prepend() {
    rm -f ${S}/protocol/vpc-client-protocol.h
    export SCANNER_TOOL=${STAGING_BINDIR_NATIVE}/wayland-scanner
    oe_runmake -C ${S}/../../protocol
}
