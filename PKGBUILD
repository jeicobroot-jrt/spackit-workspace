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
sha256sums=('eb4d3c81784108c2f4ccbd557505b48dec9d7b38f049f123f96812dc9602c0f0')

package() {

    install -Dm755 "${srcdir}/spackit_aliases.sh" "${pkgdir}/etc/profile.d/spackit-aliases.sh"
    
    install -dm777 "${pkgdir}/var/spackit/messages"
}
#
