#!/bin/bash

# Copyright (C) 2026 NEC Corporation.
#
# Licensed under the Apache License, Version 2.0 (the "License"); you may
# not use this file except in compliance with the License. You may obtain
# a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
# WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
# License for the specific language governing permissions and limitations
# under the License.

set -e

THEME_NAME="CDIMTheme"
JAR_NAME="${THEME_NAME}.jar"

docker run --rm -u "$(id -u)":"$(id -g)" -v "$(pwd)":/work -w /work eclipse-temurin:24-jdk jar cf ${JAR_NAME} META-INF theme

echo "Created ${JAR_NAME}"
