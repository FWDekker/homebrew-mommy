class Mommy < Formula
  desc "mommy's here to support you, in any shell, on any system~ ❤️"
  homepage "https://github.com/FWDekker/mommy"
  url "https://github.com/FWDekker/mommy/archive/v1.6.0.tar.gz"
  sha256 "8e655171924161662aa359bc413f348cae92eb7a759e9639b64a644d77f207a1"
  # The 'head' defines the development branch of the recipe
  head "https://github.com/FWDekker/mommy.git", branch: "main"
  license "Unlicense"

  def install
    system("make", "prefix=#{prefix}/", "install")
  end

  test do
    ("#{testpath}/config.sh").write("MOMMY_COMPLIMENTS='horizon'")
    assert_equal("horizon", shell_output("#{bin}/mommy -c #{testpath}/config.sh -s 0").strip)
  end
end
