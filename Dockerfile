FROM debian:stretch

ARG LOGIN_DA

## -- Setup CMake --
RUN wget https://cmake.org/files/v3.12/cmake-3.12.0-Linux-x86_64.tar.gz && tar xf cmake-3.12.0-Linux-x86_64.tar.gz
ENV PATH "$PATH:/cmake-3.12.0-Linux-x86_64/bin"

## -- Compile Project --
## conan install . --build=missing --profile=linux_to_armv7hf
## CMake Cross Compiling: https://art.l0nax.org/artifactory/webapp/#/artifacts/browse/tree/General/open-source_prjs

## -- Upload File to Artifactory --
RUN version=$(cat VERSION_tmp) && version=${version//$'\n'/} && \
    curl -uadmin:${LOGIN_DA} -T bin/changelog.exe "http://art.l0nax.org/artifactory/open-source_prjs/REDEVCHA/${version}/windows/changelog.exe" && \
    curl -uadmin:${LOGIN_DA} -T LICENSE "http://art.l0nax.org/artifactory/open-source_prjs/REDEVCHA/${version}/windows/LICENSE"
