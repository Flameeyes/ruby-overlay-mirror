# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-ruby/will_paginate/will_paginate-2.3.11-r1.ebuild,v 1.2 2009/12/15 19:59:15 flameeyes Exp $

EAPI=2
USE_RUBY="ruby18 ruby19 jruby"

RUBY_FAKEGEM_TASK_DOC="doc:rdoc"
RUBY_FAKEGEM_TASK_TEST="test:spec"

RAKE_FAKEGEM_DOCDIR="doc"
RUBY_FAKEGEM_EXTRADOC="README HISTORY"

inherit ruby-fakegem

DESCRIPTION="Helper class for launching cross-platform applications."
HOMEPAGE="http://copiousfreetime.rubyforge.org/launchy/"

LICENSE="ISC"

SLOT="0"
KEYWORDS="~amd64"
IUSE=""

ruby_add_rdepend dev-ruby/configuration
ruby_add_bdepend test dev-ruby/rcov

# Tests fail, reported upstream
RESTRIC=test
