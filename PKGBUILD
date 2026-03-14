# Maintainer: Jeicob <jeicob_root>
pkgname=spackit-workspace
pkgver=1.8.0
pkgrel=1
pkgdesc="A complete repo of spackit"
arch=('any')
url="https://github.com/Jeicobroot-jrt/spackit-workspace"
license=('MIT')
depends=('bash' 'netcat' 'micro' 'vim' 'php' 'php-apache' 'apache' 'python' 'python-gobject')
install=spackit-workspace.install
source=("spackit_aliases.sh")
sha256sums=('1d58ddd1b0017a0ecbcbcf9f164776118916c7b605afdd1fbe6186c6dfff0bcc')

package() {

    install -Dm755 "${srcdir}/spackit_aliases.sh" "${pkgdir}/etc/profile.d/spackit-aliases.sh"
    
    install -dm777 "${pkgdir}/var/spackit/messages"
}
#
