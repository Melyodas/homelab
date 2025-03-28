{ config, pkgs, lib, ... }:

let
    my = import ./.;
in {
    users.groups.grocy = {};

    users.users = {
      melyodas = {
          extraGroups = [ "grocy" ];
      };

      grocy = {
        isNormalUser = false;
        isSystemUser = true;
        createHome = false;
        description = "Grocy user";
        group = "grocy";
      };
    };

    services.localtimed.enable = true;

    networking.firewall.allowedTCPPorts = [ 18153 ]; # ROC

    virtualisation.oci-containers = {
        backend = "docker";
        containers.grocy = {
            autoStart = true;
            image = "lscr.io/linuxserver/grocy:latest";
            volumes = [
              "/opt/grocy/config:/config"
            ];
            ports = [ "18153:80" ];

            extraOptions = [
              "-d"
            ];
            environment = {
                USER_ID = toString config.users.users.grocy.uid;
                GROUP_ID = toString config.users.groups.grocy.gid;
                TZ = "Europe/Oslo";
            };
        };
    };
}
