
class GccArmNoneEabi49 < Formula
  homepage "https://launchpad.net/gcc-arm-embedded"
  url "https://launchpad.net/gcc-arm-embedded/4.9/4.9-2014-q4-major/+download/gcc-arm-none-eabi-4_9-2014q4-20141203-mac.tar.bz2"
  version "4_9-2014q4"
  sha1 "46767b358cc42ffe126aec68afb9d22bd0ef5beb"

  def install
    bin.install Dir['bin/*']
    lib.install Dir['lib/*']
    prefix.install 'arm-none-eabi'

    man.install Dir['share/doc/gcc-arm-none-eabi/man/*']
    info.install Dir['share/doc/gcc-arm-none-eabi/info/*']
    (share/'doc').install 'share/doc/gcc-arm-none-eabi'
    (share/'gcc-arm-none-eabi').install 'share/gcc-arm-none-eabi' => '4_9-2014q4'
  end

  test do
    system bin/"arm-none-eabi-gcc", "-v"
  end
end
