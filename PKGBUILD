# Maintainer: Jeicob <jeicob_root>
pkgname=spackit-workspace
pkgver=1.1.1
pkgrel=1
pkgdesc="A complete repo of spackit"
arch=('any')
url="https://github.com/Jeicobroot-jrt/spackit-workspace"
license=('MIT')
depends=('bash' 'netcat' 'micro' 'php' 'php-apache' 'apache' 'python' 'python-gobject')
install=spackit-workspace.install
source=("spackit_aliases.sh")
sha256sums=('7b50948424f3b88eb2f6788bd0decf3b07456e48b34997e476afc994e9b1261b')

package() {

    install -Dm755 "${srcdir}/spackit_aliases.sh" "${pkgdir}/etc/profile.d/spackit-aliases.sh"
    
    install -dm777 "${pkgdir}/var/spackit/messages"
}
#
