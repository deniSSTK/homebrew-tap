class Mt < Formula
    desc "CLI utility for fast directory navigation"
    homepage "https://github.com/deniSSTK/mt-cli"
    url "https://github.com/deniSSTK/mt-cli/archive/refs/tags/v1.0.1.tar.gz"
    sha256 "38f96fb3baeccc4bce539c2d7184ed0154f6f3e22f79340121d2de74905f8582"
    license "MIT"

    def install
        bin.install "mt-cli" => "mt"
    end

    def caveats; <<~EOS
        To finish installing: eval "$(mt init)" >> ~/.zshrc (or your terminal)
    EOS
    end

    test do
        system "#{bin}/mt", "list"
    end
end
