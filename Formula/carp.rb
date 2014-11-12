require "formula"

class Carp < Formula
  homepage "https://github.com/tekknolagi/carp"
  head "https://github.com/tekknolagi/carp.git"
  url "https://github.com/tekknolagi/carp.git"
  version 'v0.1.1'

  def install
    ENV.deparallelize
    system "make"
    system "make install"
  end
end
