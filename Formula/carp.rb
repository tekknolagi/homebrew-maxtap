require "formula"

class Carp < Formula
  homepage "https://github.com/tekknolagi/carp"
  url "https://github.com/tekknolagi/carp/archive/v0.1.tar.gz"
  sha1 "b3218aa50bbf8a608a6047df0b312a8dea280429"

  def install
    system "make"
    system "make install"
  end
end
