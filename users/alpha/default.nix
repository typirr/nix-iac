{ config, lib, pkgs, ... }:{

  users.users.alpha = {
    isNormalUser = true;

    description = "The first user which will be used";

    hashedPassword = "$y$j9T$lv15OKvptRZflvv99hGTn.$sOinFbXrsEGnlo6VqbuHZFok7GceqUh96LW6/P8MiO8";
    shell = pkgs.bash;

    extraGroups = [
      "wheel"
      "networkmanager"
      "audio"
      "video"
      "input"
    ];
  };

}
