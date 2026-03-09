# Maintainer: Jeicob <jeicob_root>
pkgname=spackit-message
pkgver=1.4.0
pkgrel=1
pkgdesc="Sistema de mensajería basado en IP y archivos .SM para el ecosistema Spackit"
arch=('any')
url="https://github.com/Jeicobroot-jrt/spackit-message"
license=('MIT')
depends=('bash' 'netcat' 'spackit')
install=spackit-message.install
source=("setup_aliases.sh")
sha256sums=('c1d1e665180fa74d159ee33b01fa640766cb0111d8bb1b8c0e41e16dd058569d')

package() {

    install -Dm755 "${srcdir}/setup_aliases.sh" "${pkgdir}/etc/profile.d/spackit-aliases.sh"
    
    install -dm777 "${pkgdir}/var/spackit/messages"
}
