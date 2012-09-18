# This Chef recipe for MediaWiki is dedicated to the public domain by
# Lawrence Leonard Gilbert

node.set['apache']['default_modules'] = %w(ssl rewrite php5)

include_recipe "apt" if platform?("ubuntu", "debian")
include_recipe "git"
include_recipe "openssl"
include_recipe "postgresql::server"

application "mediawiki" do
    path       "/var/www/mediawiki"
    repository "/vagrant/.git/modules/mediawiki/core"
    revision   node["mediawiki"]["version"]
end
