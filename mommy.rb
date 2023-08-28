class Mommy < Formula
  desc "mommy's here to support you, in any shell, on any system~ ❤️"
  homepage "https://github.com/FWDekker/mommy"
  url "https://github.com/FWDekker/mommy/archive/v1.2.4.tar.gz"
  sha256 "dc37a30cfb305005443361f74b76522da6a3b1d453140c8791c3330416e0afee"
  head "https://github.com/FWDekker/mommy.git", branch: "dev"
  license "Unlicense"

  def install
    system("make", "prefix=#{prefix}/", "install")
  end

  test do
    ("#{testpath}/config.sh").write("MOMMY_COMPLIMENTS='horizon'")
    assert_equal("horizon", shell_output("#{bin}/mommy -c #{testpath}/config.sh -s 0").strip)
  end
end
