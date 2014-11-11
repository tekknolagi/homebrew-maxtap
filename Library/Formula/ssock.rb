require "formula"

class Ssock < Formula
  homepage "https://github.com/tekknolagi/ssock"
  url "https://github.com/tekknolagi/ssock/archive/v0.1.tar.gz"
  sha1 "6b3e425111e98e637aefc66b66e737012baa54d8"

  def install
    system "make"
    system "make install"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test ssock`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "#{ENV['CC']} examples/af_unix/cat.c libssock.a -o examples/af_unix/cat"
  end
end
