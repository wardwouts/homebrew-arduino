require "formula"

class Ino < Formula
  homepage "http://inotool.org"
  url "https://pypi.python.org/packages/source/i/ino/ino-0.3.6.tar.gz"
  sha1 "73fc512ce005d85d6aec5d910d68d6bf8c0f3b26"

  depends_on :python
  depends_on 'jinja2'
  depends_on 'configobj'
  depends_on 'pyserial'
  depends_on 'ordereddict'
  depends_on 'argparse'

  def install
    system "python",
           "setup.py",
           "build"
    system "python",
           "setup.py",
           "install",
           "--prefix=#{prefix}",
           "--single-version-externally-managed",
           "--record=installed.txt"
  end

  test do
    system "#{bin}/ino"
  end
end
