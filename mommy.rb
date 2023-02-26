class Mommy < Formula
  desc "mommy's here to support you, in any shell, on any unix system~ ❤️"
  homepage "https://github.com/FWDekker/mommy"
  url "https://github.com/FWDekker/mommy/archive/v1.2.0.tar.gz"
  sha256 "237d29da6d658c0f5d0079c2e500b8604615296def0e21acb2f3fff1dc483b3b"
  license "Unlicense"

  def install
    system "./build.sh", "brew_install", "PREFIX=#{prefix}"
  end

  test do
    ("#{testpath}/config.sh").write("MOMMY_COMPLIMENTS='horizon'")

    assert_equal "horizon", shell_output("#{bin}/mommy -c #{testpath}/config.sh -s 0").strip
  end
end
