class Mt < Formula
    desc "CLI utility for fast directory navigation"
    homepage "https://github.com/deniSSTK/mt-cli"
    url "https://github.com/deniSSTK/mt-cli/archive/refs/tags/v1.0.0.tar.gz"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    license "MIT"

    def install
        bin.install "mt"
    end

    def caveats; <<~EOS
        To finish installing: eval "$(mt init)"
    EOS
    end

    test do
        system "#{bin}/mt", "list"
    end
end
