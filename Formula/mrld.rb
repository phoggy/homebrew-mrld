class Mrld < Formula
  version "0.1.7"
  on_macos do
    on_arm do
      url "https://github.com/phoggy/mrld/releases/download/v0.1.7/mrld-aarch64-apple-darwin.tar.xz"
      sha256 "95dc709aa55b4339877c320881a33f5791e6afdf5318bb19a4981b21c460d59d"
    end
    on_intel do
      url "https://github.com/phoggy/mrld/releases/download/v0.1.7/mrld-x86_64-apple-darwin.tar.xz"
      sha256 "33c1b2e3fe16671e0af599cbfa304dcb028279576e6e95e700ec530e6aca3e9e"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/phoggy/mrld/releases/download/v0.1.7/mrld-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "3ca8bc9c791a290484e1383275211e549fc0956266fd381187a18d97538b2ef8"
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
