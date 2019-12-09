name 'flask_app'
maintainer 'The Authors'
maintainer_email 'rondineli.gomes.araujo@gmail.com'
license 'All Rights Reserved'
description 'Installs/Configures flask_app'
long_description 'Installs/Configures flask_app'
version '0.1.0'
chef_version '>= 12.1' if respond_to?(:chef_version)

depends 'apt'
depends 'poise-python'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/flask_app/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/flask_app'
