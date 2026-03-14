# Maintainer: Jeicob <jeicob_root>
pkgname=spackit-workspace
pkgver=1.1.1
pkgrel=1
pkgdesc="A complete repo of spackit"
arch=('any')
url="https://github.com/Jeicobroot-jrt/spackit-workspace"
license=('MIT')
depends=('bash' 'netcat' 'php-apache' 'apache')
install=spackit-workspace.install
source=("spackit_aliases.sh")
sha256sums=('e33bffcf9b8678f01b0a6f5490a4dee530668bc2f3f21d4c451137ae16ad3421')

package() {

    install -Dm755 "${srcdir}/spackit_aliases.sh" "${pkgdir}/etc/profile.d/spackit-aliases.sh"
    
    install -dm777 "${pkgdir}/var/spackit/messages"
}
#
