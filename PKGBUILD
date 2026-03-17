# Maintainer: Jeicob <jeicob_root>
pkgname=spackit-workspace
pkgver=0.10.0
pkgrel=1
pkgdesc="A complete repo of spackit"
arch=('any')
url="https://github.com/Jeicobroot-jrt/spackit-workspace"
license=('MIT')
depends=('bash' 'netcat' 'php-apache' 'apache' 'git')
install=spackit-workspace.install
source=("spackit_aliases.sh")
sha256sums=('138568a3c9e0a0c6a4884c9b68d52fc64ec95435ea3966492d26c9fa61047aff')

package() {

    install -Dm755 "${srcdir}/spackit_aliases.sh" "${pkgdir}/etc/profile.d/spackit_aliases.sh"
    
    install -dm777 "${pkgdir}/var/spackit/messages"

} 

#Don`t broke anythink
#
#
