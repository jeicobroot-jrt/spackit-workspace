# Maintainer: Jeicob <jeicob_root>
pkgname=spackit-workspace
pkgver=1.6.0
pkgrel=1
pkgdesc="A complete repo of spackit"
arch=('any')
url="https://github.com/Jeicobroot-jrt/spackit-message"
license=('MIT')
depends=('bash' 'netcat')
install=spackit-message.install
source=("setup_aliases.sh")
sha256sums=('3bd3f0e50468a80f9418cc5eeef231b5500e3c06e47f9d758fc645c50bab0d74')

package() {

    install -Dm755 "${srcdir}/setup_aliases.sh" "${pkgdir}/etc/profile.d/spackit-aliases.sh"
    
    install -dm777 "${pkgdir}/var/spackit/messages"
}
