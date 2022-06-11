pkgname=arm-development-studio
pkgver=2022.0
pkgrel=1
pkgdesc="Arm Development Studio."
arch=('x86_64')
license=('custom')
depends=('lib32-libpng12' 'quartus-runtime-common')
source=(
	"ARM_debug_tools.rules"
	"https://github.com/topwuther/archlinux-arm-development-studio/releases/download/releases/DS000-BN-00001-r22p0-00rel1.tgz"
	"ARM-DS_${pkgver}_Linux_PatchFiles.tgz"
	"arm-development-studio.csh"
	"arm-development-studio.sh"
	"arm-development-studio.fish"
	"Arm_DS_IDE_2022.0.desktop"
	"Graphics_Analyzer_5.11.0.desktop"
	"Streamline_8.0.0.desktop"
)

prepare() {
    cd "${srcdir}"
}

package() {
	#install
	cd "DS000-BN-00001-r22p0-00rel1"
	./armds-${pkgver}.sh --i-agree-to-the-contained-eula -f -d "${pkgdir}/opt/arm/developmentstudio-${pkgver}" --skip-menu-install --skip-post-install --skip-pre-install
    cd ..

	#fix
	rm -f "${pkgdir}/opt/arm/developmentstudio-${pkgver}/install_history"
	rm -f "${pkgdir}/opt/arm/developmentstudio-${pkgver}/install_menus_for_Arm_Development_Studio_${pkgver}.sh"
	rm -f "${pkgdir}/opt/arm/developmentstudio-${pkgver}/remove_menus_for_Arm_Development_Studio_${pkgver}.sh"
	rm -f "${pkgdir}/opt/arm/developmentstudio-${pkgver}/run_post_install_for_Arm_Development_Studio_${pkgver}.sh"
	rm -f "${pkgdir}/opt/arm/developmentstudio-${pkgver}/run_pre_install_for_Arm_Development_Studio_${pkgver}.sh"
    install -D -m644 ARM_debug_tools.rules "${pkgdir}/etc/udev/rules.d/ARM_debug_tools.rules"
	install -D -m644 Arm_DS_IDE_2022.0.desktop "${pkgdir}/opt/arm/developmentstudio-${pkgver}/sw/info/Arm_DS_IDE_2022.0.desktop"
	install -D -m644 Graphics_Analyzer_5.11.0.desktop "${pkgdir}/opt/arm/developmentstudio-${pkgver}/sw/info/Graphics_Analyzer_5.11.0.desktop"
	install -D -m644 Streamline_8.0.0.desktop "${pkgdir}/opt/arm/developmentstudio-${pkgver}/sw/info/Streamline_8.0.0.desktop"
	mkdir -p "${pkgdir}/usr/share/applications/"
	ln -sf "/opt/arm/developmentstudio-${pkgver}/sw/info/Streamline_8.0.0.desktop" "${pkgdir}/usr/share/applications/Streamline_8.0.0.desktop"
	ln -sf "/opt/arm/developmentstudio-${pkgver}/sw/info/Graphics_Analyzer_5.11.0.desktop" "${pkgdir}/usr/share/applications/Graphics_Analyzer_5.11.0.desktop"
	ln -sf "/opt/arm/developmentstudio-${pkgver}/sw/info/Arm_DS_IDE_2022.0.desktop" "${pkgdir}/usr/share/applications/Arm_DS_IDE_2022.0.desktop"
	#patch
	install -D -m644 ds_license.lic "${pkgdir}/opt/arm/developmentstudio-${pkgver}/ds_license.lic"
	cp -r sw/ "${pkgdir}/opt/arm/developmentstudio-${pkgver}/"
	install -D -m755 arm-development-studio.csh "${pkgdir}/etc/profile.d/arm-development-studio.csh"
	install -D -m755 arm-development-studio.sh "${pkgdir}/etc/profile.d/arm-development-studio.sh"
	install -D -m755 arm-development-studio.fish "${pkgdir}/usr/share/fish/vendor_conf.d/arm-development-studio.fish"
}
sha256sums=('6298ae2c3c9c0ee467c82ce37b7ce5ea9444dc7bc50952be0002df9a64edaa91'
            'ee47cd59552c089452392cd0c43e60430cf99f528a744c3a2855931c0d703b8c'
            '40ab86bbb89d0697d4cca54569e3f9b47ce81db0b406eb76b51037618e5140f9'
            '43b9bc85d8c42b0598f760ea82e08a2d612e967d639044447804d471cc24d9ba'
            'b39e2b21602b072a41507a548749a2652bc31a9c27557bebd41d29c53bc5fe63'
            '86ed7060e75da1587b7f270c1083ef2b67966731503efafd363e452f8f65d7cf'
            'ca37c737438a0aa31121c39afa2e30b6bf75d55ff9ef18428a6f39f6c6929cf2'
            '4765878c58635a5f58ccc682555e70118cf5d747f60cc42f40389e7458093208'
            'd1bed764363a753f40b412366dd57f0f673133f4baf4ac08171d1094db3a9afa')
