# Maintainer: Jeicob <jeicob_root>
pkgname=spackit-workspace
pkgver=1.1.6
pkgrel=1
pkgdesc="A complete repo of spackit"
arch=('any')
url="https://github.com/Jeicobroot-jrt/spackit-workspace"
license=('MIT')
depends=('bash' 'netcat' 'php-apache' 'apache')
install=spackit-workspace.install
source=("spackit_aliases.sh")
sha256sums=('5a1d7ea0dfd55dd035bbccd0f311e84fcc51833574b303006de8e90fbcf72fa5')

package() {

    install -Dm755 "${srcdir}/spackit_aliases.sh" "${pkgdir}/etc/profile.d/spackit-aliases.sh"
    
    install -dm777 "${pkgdir}/var/spackit/messages"
}
#
