{ pkgs }: {
  deps = [
    pkgs.BashInteractive
    pkgs.dlx
    pkgs.firefox-esr-91-unwrapped
    pkgs.nasm
    pkgs.busybox
    pkgs.python38Packages.gdown
  ];
}
