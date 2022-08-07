#!/bin/bash -ex
sudo systemctl stop greengrass
sudo systemctl disable greengrass
sleep 5s
sudo rm -rf /greengrass/v2/*
sudo mkdir /greengrass/v2/claim-certs/
sudo echo CLAIM_CERT="-----BEGIN CERTIFICATE-----
MIIDWTCCAkGgAwIBAgIUJJoeSFQ7OML6U/HnDniQPKXod10wDQYJKoZIhvcNAQEL
BQAwTTFLMEkGA1UECwxCQW1hem9uIFdlYiBTZXJ2aWNlcyBPPUFtYXpvbi5jb20g
SW5jLiBMPVNlYXR0bGUgU1Q9V2FzaGluZ3RvbiBDPVVTMB4XDTIyMDcyNDIyMDQw
MVoXDTQ5MTIzMTIzNTk1OVowHjEcMBoGA1UEAwwTQVdTIElvVCBDZXJ0aWZpY2F0
ZTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAN5BBCH8micOZqSegK+Y
FshoTlOw6PNybKvqTJD3gQCetDj/Esc/GCDCvi3GByONuxvM8UQ7GX5sKzLUyRDa
31GP+WdOkTLAh0iYaWvaV3m33ers9dm80efA/F4GngFVYOveHm4DJYENkJiS5Y0Q
49HsW8Fi2Kbm4DHd6MPijBu4D2bighsjrmcGVX92m7PDPsghU1zh8vjuE8kR5WNk
uyXTe9CX1bghUzT6xzH+pdX1QMLPg5a88Y/MtCfpgBy1fxT21hFrfrHjtd8rAB+s
02lPt3YcwfesQ5/rlyfxGBDVQ/03nPINp41hpyy6u8OommgjkJIlTaE7mC5Ac5HZ
Op8CAwEAAaNgMF4wHwYDVR0jBBgwFoAUxdG5/4iyZbGuEIWqp6ClRyr6G9owHQYD
VR0OBBYEFGMIRSOlJ/S5wB2kZww1SiK7wvUuMAwGA1UdEwEB/wQCMAAwDgYDVR0P
AQH/BAQDAgeAMA0GCSqGSIb3DQEBCwUAA4IBAQAn8g24dmiOIh2c3TIjyCee6GtH
j7gjC6xttJ3mENEEQfkvcH/vOoaW10Ew0OOc+JapQJF9EmFdavJRiE/re/01NFQx
RO70nD4p11lO0u8r2wMaH5/PcTdQkMyF3lEE4kgEEujRQ49ymI18wN8apJ/+23oP
0ZRLhYfEEWvrpqyY291I7AzzFH+zfW5fjUJeeGQaLYUp8AtWfxG5/2b85WfkSV8t
jNDCJlm7qxKrkLSoDKWPHmGYSOKVIr5ptMUPjSkPtE7ae7aeOG2kgU9BpU7Nad44
PK/dPy/P/v56ypiydbqwncXQNxDEBGkUYp4oXRTxMbAF62B3zWMtY2NiPdgC
-----END CERTIFICATE-----" > /greengrass/v2/claim-certs/certificate.pem.crt

sudo echo CLAIM_PRIVATE_KEY="-----BEGIN RSA PRIVATE KEY-----
MIIEpAIBAAKCAQEA3kEEIfyaJw5mpJ6Ar5gWyGhOU7Do83Jsq+pMkPeBAJ60OP8S
xz8YIMK+LcYHI427G8zxRDsZfmwrMtTJENrfUY/5Z06RMsCHSJhpa9pXebfd6uz1
2bzR58D8XgaeAVVg694ebgMlgQ2QmJLljRDj0exbwWLYpubgMd3ow+KMG7gPZuKC
GyOuZwZVf3abs8M+yCFTXOHy+O4TyRHlY2S7JdN70JfVuCFTNPrHMf6l1fVAws+D
lrzxj8y0J+mAHLV/FPbWEWt+seO13ysAH6zTaU+3dhzB96xDn+uXJ/EYENVD/Tec
8g2njWGnLLq7w6iaaCOQkiVNoTuYLkBzkdk6nwIDAQABAoIBAQCNncHjYhBbeIqg
tDptKKzDr+rQ2vXkQXHLLTTyXjK90WImuykc+jAGl/AUPI1J80JZGYJWJo49BvGT
pxAjBEOttd6GHALa4uCQukTaKzr33NeznJ+eyPi7AjYMN40wblWelV6wXKLmE12i
Sl+oPi3cEg35MGG6H3yVab+qKU17TuEw/mFJyt/R/kCvVY2so1DAjoqVw/q4bp2m
LFoCCQa9GiyTSl9oGu61SVwyUiRdHCu0eoMw67Qv9+ung8dNFP/leVjVXCYRgl8k
yZQrEQJ3ZH4WJm3UqTG3qh3Ed/7AW4DyLgehXl9TgUi+n6vzuPlOEfwMYvQQvbWc
ultWUydJAoGBAP40YKX6LVCQm3egyOPpT3jWg/0OXFJyyJzOdJ2/P8WanMWTGAQD
46TdZ31RNd3G/dp3Ii/g6v/WrRDhLhqs6yCRPEHRaJR20PjZqWvg3+2sTyr5Mxyg
BAIrkTJbHjx0d8Uc/WvJaRaPoZ6PLtVfMXg84xG3sXd/zBRgi9fv579NAoGBAN/S
3omq4Jf8QQEJU5BiIxzqspvauiyKSEXTm0Yq4nIO0Nz2lT2dZZ2d8iqCvEu2ta0y
LeiJIUiM2u4v8uCrz8IJ+J30z0gwBgOFMsK3TgspeVVaaeaAhb7JG2ti/upxugOT
qJiIk+MrkKslQlG3F3ABrgh14g1qo+jLFodWNIObAoGACWf0v49/R8DiD84iQNSs
PSNq5N04K1DV/X9iL0gZWv16mZD0zYk7TilnH+r2XEt1rzTDThQ7fdX6t2oto40M
cjsNiL3v6bZvyxV6wGQkxQ2gLE3mR0PgghgMmllmyAPjPqbw9aERQ2VzLIPNztVj
5jgSiuBKL8rJyWM9KXNWFu0CgYBtCbZ+DK/jevFUBu4dvaFree7PPIxMHIW+9qqD
UWsFs7AOpVXpMV+KnKKYER6YKAdzu6lfykZbqLsTJGrHBwxsdB0ZHmVIvpR/bIlh
EJnFmEvSx/wlXeFKI4DnHNAg+IxtJ6cPwCGDnvqYVctsMa0KVNcqqfsZHCWDyERO
ZDGrFwKBgQCGrr4wBLNVmfs0buXREn6GTmlRwAZiImAcSppZ003L/63I0/g+ex9W
W++1jiMUpuC8GKj2ou/GDIF+vFST2pWL5DFZb8Y8TkjCkMx4rEuBu01tTF0ghRJd
vqp5PVdh3Y8F9enoPCg1STVM7dc+D0Z6/aVo4HA+HUEX1wPh2sexxg==
-----END RSA PRIVATE KEY-----" > /greengrass/v2/claim-certs/private.pem.key

sudo echo "-----BEGIN CERTIFICATE-----
      MIIDQTCCAimgAwIBAgITBmyfz5m/jAo54vB4ikPmljZbyjANBgkqhkiG9w0BAQsF
      ADA5MQswCQYDVQQGEwJVUzEPMA0GA1UEChMGQW1hem9uMRkwFwYDVQQDExBBbWF6
      b24gUm9vdCBDQSAxMB4XDTE1MDUyNjAwMDAwMFoXDTM4MDExNzAwMDAwMFowOTEL
      MAkGA1UEBhMCVVMxDzANBgNVBAoTBkFtYXpvbjEZMBcGA1UEAxMQQW1hem9uIFJv
      b3QgQ0EgMTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALJ4gHHKeNXj
      ca9HgFB0fW7Y14h29Jlo91ghYPl0hAEvrAIthtOgQ3pOsqTQNroBvo3bSMgHFzZM
      9O6II8c+6zf1tRn4SWiw3te5djgdYZ6k/oI2peVKVuRF4fn9tBb6dNqcmzU5L/qw
      IFAGbHrQgLKm+a/sRxmPUDgH3KKHOVj4utWp+UhnMJbulHheb4mjUcAwhmahRWa6
      VOujw5H5SNz/0egwLX0tdHA114gk957EWW67c4cX8jJGKLhD+rcdqsq08p8kDi1L
      93FcXmn/6pUCyziKrlA4b9v7LWIbxcceVOF34GfID5yHI9Y/QCB/IIDEgEw+OyQm
      jgSubJrIqg0CAwEAAaNCMEAwDwYDVR0TAQH/BAUwAwEB/zAOBgNVHQ8BAf8EBAMC
      AYYwHQYDVR0OBBYEFIQYzIU07LwMlJQuCFmcx7IQTgoIMA0GCSqGSIb3DQEBCwUA
      A4IBAQCY8jdaQZChGsV2USggNiMOruYou6r4lK5IpDB/G/wkjUu0yKGX9rbxenDI
      U5PMCCjjmCXPI6T53iHTfIUJrU6adTrCC2qJeHZERxhlbI1Bjjt/msv0tadQ1wUs
      N+gDS63pYaACbvXy8MWy7Vu33PqUXHeeE6V/Uq2V8viTO96LXFvKWlJbYK8U90vv
      o/ufQJVtMVT8QtPHRh8jrdkPSHCa2XV4cdFyQzR1bldZwgJcJmApzyMZFo6IQ6XU
      5MsI+yMRQ+hDKXJioaldXgjUkK642M4UwtBV8ob2xJNDd2ZhwLnoQdeXeGADbkpy
      rqXRfboQnoZsG4q5WTP468SQvvG5
      -----END CERTIFICATE-----" > /greengrass/v2/AmazonRootCA1.pem

export GREENGRASS_ROOT_PATH=/greengrass/v2
export GREENGRASS_REGION=us-west-2
export IOT_DATA_ENDPOINT=a2hj92fe5tc07a-ats.iot.us-west-2.amazonaws.com
export IOT_CREDENTIAL_ENDPOINT=csbtrvwvucek9.credentials.iot.us-west-2.amazonaws.com
export IOT_ROLE_ALIAS=evg-prod-greengrass-GreengrassV2TokenExchangeRoleAlias
export PROVISIONING_TEMPLATE=evg-prod-greengrass
export THING_GROUP=evg-prod-greengrass-unclaimed
export UUID=`cat /uuids/device.uuid`

sudo echo "
---
services:
  aws.greengrass.Nucleus:
    version: \"2.5.6\"
  aws.greengrass.FleetProvisioningByClaim:
    configuration:
      rootPath: \"${GREENGRASS_ROOT_PATH}\"
      awsRegion: \"${GREENGRASS_REGION}\"
      iotDataEndpoint: \"${IOT_DATA_ENDPOINT}\"
      iotCredentialEndpoint: \"${IOT_CREDENTIAL_ENDPOINT}\"
      iotRoleAlias: \"${IOT_ROLE_ALIAS}\"
      provisioningTemplate: \"${PROVISIONING_TEMPLATE}\"
      claimCertificatePath: \"/greengrass/v2/claim-certs/certificate.pem.crt\"
      claimCertificatePrivateKeyPath: \"/greengrass/v2/claim-certs/private.pem.key\"
      rootCaPath: \"/greengrass/v2/AmazonRootCA1.pem\"
      templateParameters:
        ThingName: \"${UUID}\"
        ThingGroupName: \"${THING_GROUP}\"
" > /home/evg/GreengrassInstaller/config.yaml

sudo -E java -Droot="/greengrass/v2" -Dlog.store=FILE -jar /home/evg/GreengrassInstaller/lib/Greengrass.jar --trusted-plugin /home/evg/GreengrassInstaller/aws.greengrass.FleetProvisioningByClaim.jar --init-config /home/evg/GreengrassInstaller/config.yaml --component-default-user ggc_user:ggc_group --setup-system-service true