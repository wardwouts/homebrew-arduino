require "formula"

# Documentation: https://github.com/Homebrew/homebrew/wiki/Formula-Cookbook
#                /usr/local/Library/Contributions/example-formula.rb
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Ordereddict < Formula
  homepage "https://pypi.python.org/pypi/ordereddict/1.1"
  url "https://pypi.python.org/packages/source/o/ordereddict/ordereddict-1.1.tar.gz"
  sha1 "ab90b67dceab55a11b609d253846fa486eb980c4"

  depends_on :python

  def install
    system "python",
           "setup.py",
           "install",
           "--prefix=#{prefix}"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test ordereddict`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
