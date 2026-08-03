class Mrld < Formula
  version "0.1.15"
  on_macos do
    on_arm do
      url "https://github.com/phoggy/mrld/releases/download/v0.1.15/mrld-aarch64-apple-darwin.tar.xz"
      sha256 "066a19deee1cb6e459abd566a3245856655f59bd29cb5d62dae489ec333d087e"
    end
    on_intel do
      url "https://github.com/phoggy/mrld/releases/download/v0.1.15/mrld-x86_64-apple-darwin.tar.xz"
      sha256 "4e2d4d033d9cb56f314fd4d0f3547672cf66399c948eff0691b32cb0c327e0d4"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/phoggy/mrld/releases/download/v0.1.15/mrld-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "9c68621ba8a49185f4af942684733aeedda9266cccfe50e4b7b60ecdd8d80bd7"
    end
  end

  def install
    on_macos do
      on_arm do
        bin.install "mrld"
      end
    end
    on_macos do
      on_intel do
        bin.install "mrld"
      end
    end
    on_linux do
      on_intel do
        bin.install "mrld"
      end
    end

    # Homebrew will automatically install these, so we don't need to do that
    doc_files = Dir["README.*", "readme.*", "LICENSE", "LICENSE.*", "CHANGELOG.*"]
    leftover_contents = Dir["*"] - doc_files

    # Install any leftover files in pkgshare; these are probably config or
    # sample files.
    pkgshare.install *leftover_contents unless leftover_contents.empty?
  end
end
