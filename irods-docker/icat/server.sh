#!/bin/bash
cd /var/lib/irods/iRODS/server/bin
#env PATH="$PATH:/var/lib/irods/iRODS/server/bin" ./irodsServer -u
env PATH="$PATH:/var/lib/irods/iRODS/server/bin" \
 irodsSSLCertificateChainFile=/var/lib/irods/iRODS/server/config/chain.pem \
 irodsSSLCertificateKeyFile=/var/lib/irods/iRODS/server/config/server.key \
 irodsSSLDHParamsFile=/var/lib/irods/iRODS/server/config/dhparams.pem \
 irodsSSLCACertificateFile=/var/lib/irods/iRODS/server/config/chain.pem \
 irodsSSLVerifyServer=cert \
 irodsAuthScheme=PAM  ./irodsServer -u

