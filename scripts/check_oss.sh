#/bin/sh

# use wget to check for an updated packet
wget_check() {
    wget "$2" "$4" -q -O - | grep -qzoP "$3"
    [ "$?" != 0 ] && echo -en "Von $1 es gibt eine neue Version\n"
}

# wget_check <URL to check> <text to parse in the retrieved HTML>  <additional wget parameter>
wget_check "lz4"        "https://github.com/lz4/lz4" 					        ">LZ4 v1.9.3</span>" ""
wget_check "openssl"    "https://www.openssl.org/source"                        "openssl-1.1.1n.tar.gz" ""
wget_check "pcre2"      "https://github.com/PhilipHazel/pcre2"			        ">pcre2-10.39</span>" ""
wget_check "timezone"   "https://www.iana.org/time-zones"                       '\(Released 2022-03-15\)' ""
wget_check "zlib"       "https://www.zlib.net"							        "zlib 1.2.12" ""
wget_check "busybox"    "https://github.com/meefik/busybox" 			        "BusyBox 1.34.1" ""
wget_check "Linux-PAM"  "https://github.com/linux-pam/linux-pam"                "Linux-PAM 1.5.2" ""
wget_check "metalog"    "https://github.com/hvisage/metalog" 			        ">metalog-20220214</span>" ""
wget_check "dropbear"   "https://matt.ucc.asn.au/dropbear/dropbear.html"        "Latest is 2022.82" ""
wget_check "dnsmasq"    "https://www.thekelleys.org.uk/dnsmasq"                 "LATEST_IS_2.86" ""
wget_check "bzip2"      "https://www.sourceware.org/bzip2"			            "is bzip2 1.0.8" ""
wget_check "sqlite-src" "https://www.sqlite.org/download.html"                  "sqlite-src-3380200.zip" ""
wget_check "cacert"     "https://curl.se/docs/caextract.html" 			        "Tue Mar 29 03:12:05 2022 GMT" ""
wget_check "libuuid"    "http://sourceforge.net/projects/libuuid/files"	        "libuuid-1.0.3.tar.gz \(318.3 kB\)" ""
wget_check "expat"      "https://github.com/libexpat/libexpat"                  '2.4.8</span>\n        <span title="Label: Latest"' ""
wget_check "c-ares"     "https://github.com/c-ares/c-ares"			            "1.18.1</span>" ""
wget_check "libffi"     "https://github.com/libffi/libffi"                      "v3.4.2" ""
wget_check "xz"         "https://tukaani.org/xz"  						        "5.2.5 was released on 2020-03-17" ""
wget_check "ncurses"    "https://invisible-island.net/ncurses/announce-6.2.html#h2-release-notes" '<p>These notes are for <span class="main-name">ncurses</span> 6.2, released <strong>February 12, 2020</strong>.</p>'
wget_check "python"     "https://www.python.org/downloads" 				        ">Download Python 3.10.4</a>" ""
wget_check "get-pip"    "https://pip.pypa.io/en/stable/news"                    "pip documentation v22.0.4" ""
wget_check "nghttp2"    "https://github.com/nghttp2/nghttp2"                    "nghttp2 v1.47.0" ""
wget_check "libssh2"    "https://github.com/libssh2/libssh2"				    "libssh2-1.10.0" ""
wget_check "curl"       "https://curl.haxx.se/download.html"                    "<b>curl 7.82.0</b>, Released on" ""
wget_check "nano"       "https://www.nano-editor.org/download.php"              "nano-6.2.tar.xz" ""
wget_check "node"       "https://nodejs.org/en/download"                        "Latest LTS Version: 16.14.2" ""
