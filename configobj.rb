require "formula"

# Documentation: https://github.com/Homebrew/homebrew/wiki/Formula-Cookbook
#                /usr/local/Library/Contributions/example-formula.rb
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Configobj < Formula
  homepage ""
  url "https://pypi.python.org/packages/source/c/configobj/configobj-5.0.5.tar.gz"
  sha1 "a3a1dbe1444932b7c87e4c35fe6f64cf029d9559"

  # depends_on "cmake" => :build
#  depends_on :x11 # if your formula requires any X11/XQuartz components
  depends_on :python
  depends_on 'markupsafe'

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    # Remove unrecognized options if warned by configure
#    system "./configure", "--disable-debug",
#                          "--disable-dependency-tracking",
#                          "--disable-silent-rules",
#                          "--prefix=#{prefix}"
    system "python", "setup.py", "install", "--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
#    system "make", "install" # if this fails, try separate make/make install steps
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test configobj`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
