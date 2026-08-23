{ config, pkgs, ... }:

{
  # 1. Unfree-Software für die Broadcom-Treiber erlauben
  nixpkgs.config.allowUnfree = true;

  # 2. Das Broadcom-Paket trotz Sicherheitsrisiken erlauben
  nixpkgs.config.permittedInsecurePackages = [
    "broadcom-sta-6.30.223.271-63-6.18.44"
  ];

  # 3. Broadcom WLAN-Treiber aktivieren
  boot.kernelModules = [ "wl" ];
  boot.extraModulePackages = [ config.boot.kernelPackages.broadcom_sta ];

  # 4. Apple-Lüftersteuerung aktivieren
  services.mbpfan = {
    enable = true;
    aggressive = false;
  };
}

