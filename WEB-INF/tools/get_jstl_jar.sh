#!/bin/sh -x
cd $(dirname $0)/../lib
curl -O https://repo1.maven.org/maven2/javax/servlet/jsp/jstl/jstl-api/1.2/jstl-api-1.2.jar
curl -O https://repo1.maven.org/maven2/org/glassfish/web/jstl-impl/1.2/jstl-impl-1.2.jar
