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
  url "https://dl.bintray.com/habitat/stable/darwin/x86_64/hab-0.29.1-20170810235219-x86_64-darwin.zip"
  version "0.29.1-20170810235219"
  sha256 "18735944b6ff1ed6907bc3cd4265778399628a5bc893445791895e9df18a4b0a"

  def install
    bin.install "hab"
  end

  test do
    assert_match version.to_s.gsub('-', '/'), shell_output("#{bin}/hab --version 2>&1")
  end
end
