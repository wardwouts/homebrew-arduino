require "formula"

# Documentation: https://github.com/Homebrew/homebrew/wiki/Formula-Cookbook
#                /usr/local/Library/Contributions/example-formula.rb
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Jinja2 < Formula
  homepage ""
  url "https://pypi.python.org/packages/source/J/Jinja2/Jinja2-2.7.2.tar.gz"
  sha1 "1ce4c8bc722444ec3e77ef9db76faebbd17a40d8"

  depends_on :python

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    system "python", "setup.py", "install", "--prefix=#{prefix}", "--single-version-externally-managed", "--record=installed.txt"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test Jinja2`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
