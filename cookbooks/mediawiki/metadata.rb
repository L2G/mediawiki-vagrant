# cookbooks/mediawiki/metadata.rb
name "mediawiki"
version "0.0.0"
description "A MediaWiki cookbook originally designed with Vagrant in mind"
maintainer "Larry Gilbert"
maintainer_email "larry@L2G.to"
license "Public domain"
supports "ubuntu", ">= 10.04"

depends "apt"
depends "git"
depends "openssl"
depends "postgresql"
depends "application"
depends "application_php"

