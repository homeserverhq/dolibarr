# Dolibarr 23.0.4 with the local API fixes applied.
#
# The base is the official 23.0.4 image, so PHP, its extensions, the entrypoint
# and /var/www/scripts are the upstream ones; only the application code in
# /var/www/html is replaced with this fork's htdocs tree.
#
# Build:
#   docker build -t <registry>/<repo>:23.0.4-php8.2 .
FROM mirror.gcr.io/dolibarr/dolibarr:23.0.4-php8.2@sha256:e8bc9a0838f4c3ff66c71d087420e549d15ef1749308d684320ae4492cfe73da

COPY htdocs/ /var/www/html/
