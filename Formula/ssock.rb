require "formula"

class Ssock < Formula
  homepage "https://github.com/tekknolagi/ssock"
  url "https://github.com/tekknolagi/ssock/archive/v0.1.tar.gz"
  sha1 "6b3e425111e98e637aefc66b66e737012baa54d8"

  def install
    system "make"
    system "make install"
  end
end
