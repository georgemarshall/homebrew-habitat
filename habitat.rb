#
# Copyright:: Copyright (c) 2016-2017 Chef Software Inc.
# License:: Apache License, Version 2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

class Habitat < Formula
  desc "Automation That Travels with the App"
  homepage "https://www.habitat.sh/"
  url "https://dl.bintray.com/habitat/stable/darwin/x86_64/hab-0.36.0-20171009050124-x86_64-darwin.zip"
  version "0.36.0-20171009050124"
  sha256 "3c4ca43b1206c56cd61e4bb22d7659913528378b7b5a1d192105318887a77e86"

  def install
    bin.install "hab"
  end

  test do
    assert_match version.to_s.gsub('-', '/'), shell_output("#{bin}/hab --version 2>&1")
  end
end
