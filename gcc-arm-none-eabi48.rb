
class GccArmNoneEabi48 < Formula
  homepage "https://launchpad.net/gcc-arm-embedded"
  url "https://launchpad.net/gcc-arm-embedded/4.8/4.8-2014-q3-update/+download/gcc-arm-none-eabi-4_8-2014q3-20140805-mac.tar.bz2"
  version "4_8-2014q3"
  sha1 "d7e8b178fa744b78f6d75a2adfb9b7f554c1a158"

  def install
    bin.install Dir['bin/*']
    lib.install Dir['lib/*']
    prefix.install 'arm-none-eabi'

    man.install Dir['share/doc/gcc-arm-none-eabi/man/*']
    info.install Dir['share/doc/gcc-arm-none-eabi/info/*']
    (share/'doc').install 'share/doc/gcc-arm-none-eabi'
    share.install 'share/gcc-arm-none-eabi'
  end

  test do
    system bin/"arm-none-eabi-gcc", "-v"
  end
end
