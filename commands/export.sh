php -d memory_limit=512M "$(which wp)" package install 10up/mu-migration;

# Install the mu-migration plugin for the WP CLI (while allocating enough memory)

wp mu-migration export all single-site.zip --themes --plugins --uploads;

# Use the newly installed plugin to export the site and its associated files as a zip archive