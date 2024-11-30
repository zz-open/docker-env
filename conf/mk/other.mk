# cfssl ############################################################
CFSSL=cfssl
CFSSL_GENCERT=${CFSSL} gencert
CFSSL_GENCERT_INITCA=${CFSSL_GENCERT} -initca

CFSSL_JSON=cfssljson
CFSSL_JSON_BARE=${CFSSL_JSON} -bare

# Harbor ############################################################
HARBOR_HOST=zz.harbor.com
PRIVATE_HARBOR_PROJECT=zz
