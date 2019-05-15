php -d memory_limit=512M "$(which wp)" package install 10up/mu-migration;

# Install the mu-migration plugin for the WP CLI (while allocating enough memory)

wp mu-migration import all ./single-site.zip --new_url=localhost/x;

# Import site from zip file and give it a dummy subdirectory. This will need to be adjusted later in the multisite's database.