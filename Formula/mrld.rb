class Mrld < Formula
  version "0.1.4"
  on_macos do
    on_arm do
      url "https://github.com/phoggy/mrld/releases/download/v0.1.4/mrld-aarch64-apple-darwin.tar.xz"
      sha256 "65574d660c650d85354cf9b659e898f8303d2bd8fe771894c56759ee57834988"
    end
    on_intel do
      url "https://github.com/phoggy/mrld/releases/download/v0.1.4/mrld-x86_64-apple-darwin.tar.xz"
      sha256 "d8793a15b923f6aa16fae2bb921ab39ee7edea9116e812efd4e69d8d2f8a81c9"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/phoggy/mrld/releases/download/v0.1.4/mrld-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "4f93c37565b8cd959f68944a3e2c45b63adb53d8be8731aa58e256f34449df7e"
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
