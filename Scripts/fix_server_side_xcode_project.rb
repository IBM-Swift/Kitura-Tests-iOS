# Copyright IBM Corporation 2017
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

gem 'xcodeproj'
require 'xcodeproj'

require_relative '../Builder/Scripts/settings_helper'
require_relative '../Builder/Scripts/target_helper'
require_relative '../Builder/Scripts/libraries'

server_project_file = ARGV[0];
number_of_bits = ARGV[1];

server_project = Xcodeproj::Project.open(server_project_file);
kitura_tests_target = get_first_target_by_name(server_project, "KituraTests")
libraries = Libraries.new(number_of_bits)

fix_build_settings_of_target(kitura_tests_target,libraries.headers_path, libraries.library_path,
                             libraries.linked_libraries)

server_project.save;
