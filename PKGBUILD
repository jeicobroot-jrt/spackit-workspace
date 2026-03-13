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
sha256sums=('04820540eb4de282ac06d286e754acda68997327045287cff2b4fc08264e09b5')

package() {

    install -Dm755 "${srcdir}/setup_aliases.sh" "${pkgdir}/etc/profile.d/spackit-aliases.sh"
    
    install -dm777 "${pkgdir}/var/spackit/messages"
}
