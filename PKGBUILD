# Maintainer: Jeicob <jeicob_root>
pkgname=spackit-workspace-git
pkgver=0.10.4
pkgrel=3
pkgdesc="A complete repo of spackit"
arch=('any')
url="https://github.com/Jeicobroot-jrt/spackit-workspace"
license=('MIT')
depends=('php-apache' 'apache' 'git')
makedepends=("libx11" "bash" "netcat")
install=spackit-workspace.install
source=("setup_aliases.sh")
sha256sums=('b8ec77e2dfb1986ed405386db79a0ae90e0da8bda381d7d10b9f2213a0a9739a')

package() {

    install -Dm755 "${srcdir}/setup_aliases.sh" "${pkgdir}/etc/profile.d/setup_aliases.sh"
    
    install -dm777 "${pkgdir}/var/spackit/messages"

} 

#D
