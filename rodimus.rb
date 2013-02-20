require 'formula'

class Rodimus < Formula
  homepage 'https://github.com/meltmedia/rodimus'
  version '0.1.0-SNAPSHOT'
  head 'git://github.com/meltmedia/rodimus.git', :branch => 'master', :using => :git

  def install
    system "mvn clean install -Dmaven.test.skip=true"
    bin.install Dir["target/rodimus"]
  end

end
