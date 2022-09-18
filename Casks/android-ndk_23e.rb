cask "android-ndk_23e" do
    version "21e"
    sha256 "437278103a3db12632c05b1be5c41bbb8522791a67e415cc54411a65366f499d"
  
    url "https://dl.google.com/android/repository/android-ndk-r#{version}-darwin-x86_64.zip",
        verified: "dl.google.com/android/repository/"
    name "Android NDK"
    homepage "https://developer.android.com/ndk/index.html"
  
    conflicts_with cask: "crystax-ndk"
  
    # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
    shimscript = "#{staged_path}/ndk_exec.sh"
    preflight do
      FileUtils.ln_sf("#{staged_path}/android-ndk-r#{version}", "#{HOMEBREW_PREFIX}/share/android-ndk")
  
      IO.write shimscript, <<~EOS
        #!/bin/bash
        readonly executable="#{staged_path}/android-ndk-r#{version}/$(basename ${0})"
        test -f "${executable}" && exec "${executable}" "${@}"
      EOS
    end
  
    %w[
      ndk-build
      ndk-depends
      ndk-gdb
      ndk-stack
      ndk-which
    ].each { |link_name| binary shimscript, target: link_name }
  
    uninstall_postflight do
      FileUtils.rm_f("#{HOMEBREW_PREFIX}/share/android-ndk")
    end
  
    caveats <<~EOS
      You may want to add to your profile:
         'export ANDROID_NDK_HOME="#{HOMEBREW_PREFIX}/share/android-ndk"'
    EOS
  end