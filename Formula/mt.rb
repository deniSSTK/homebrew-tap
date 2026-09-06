class Mt < Formula
    desc "CLI utility for fast directory navigation"
    homepage "https://github.com/deniSSTK/mt-cli"
    url "https://github.com/deniSSTK/mt-cli/archive/refs/tags/v1.0.0.tar.gz"
    sha256 "3ad315aa70b7724fd58e24959fb42273ac99d8e2aee503798e08794f39b1c8e4"
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
