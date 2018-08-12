FROM debian:stretch

ARG LOGIN_DA

## Upload File to Artifactory
RUN version=$(cat VERSION_tmp) && version=${version//$'\n'/} && \
    curl -uadmin:${LOGIN_DA} -T bin/changelog.exe "http://art.l0nax.org/artifactory/open-source_prjs/REDEVCHA/${version}/windows/changelog.exe" && \
    curl -uadmin:${LOGIN_DA} -T LICENSE "http://art.l0nax.org/artifactory/open-source_prjs/REDEVCHA/${version}/windows/LICENSE"
