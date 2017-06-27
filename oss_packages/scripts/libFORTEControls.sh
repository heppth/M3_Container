#! /bin/sh

# download link for the sources to be stored in dl directory
PKG_DOWNLOAD="https://m3-container.net/M3_Container/closed_sources/libForteControls-1.0.tar.gz"

# md5 checksum of archive in dl directory
PKG_CHECKSUM="d8c03974e0b3778d9ffcf97a358859c6"

# name of directory after extracting the archive in working directory
PKG_DIR="libForteControls-1.0"

# name of the archive in dl directory
PKG_ARCHIVE_FILE="${PKG_DIR}.tar.gz"

SCRIPTSDIR="$(dirname $0)"
HELPERSDIR="${SCRIPTSDIR}/helpers"
TOPDIR="$(realpath ${SCRIPTSDIR}/../..)"

. ${TOPDIR}/scripts/common_settings.sh
. ${HELPERSDIR}/functions.sh

PKG_ARCHIVE="${DOWNLOADS_DIR}/${PKG_ARCHIVE_FILE}"
PKG_SRC_DIR="${SOURCES_DIR}/${PKG_DIR}"
PKG_BUILD_DIR="${BUILD_DIR}/${PKG_DIR}"
PKG_INSTALL_DIR="${PKG_BUILD_DIR}/install"

configure()
{
    export CFLAGS="${M3_CFLAGS}"
    export LDFLAGS="${M3_LDFLAGS}"
}

compile()
{
	:
}

install_staging()
{
    cd "${PKG_BUILD_DIR}"
    cp lib/libFORTEControls.a "${STAGING_DIR}/lib"
    cp include/* "${STAGING_DIR}/include"
}

. ${HELPERSDIR}/call_functions.sh
