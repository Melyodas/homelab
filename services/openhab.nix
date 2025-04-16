{
  config,
  pkgs,
  lib,
  ...
}:

let
  cfg = config.my.services.openhab;
in
{
  options.my.services.openhab = {
    enable = lib.mkEnableOption "Openhab server";
  };

  config = lib.mkIf cfg.enable {
    users.groups.openhab = {
      gid = 123;
    };

    users.users = {
      melyodas = {
        extraGroups = [
          "openhab"
          "dialout"
        ];
      };

      openhab = {
        isNormalUser = false;
        isSystemUser = true;
        createHome = false;
        uid = 123;
        description = "OpenHab user";
        group = "openhab";
      };
    };

    services.geoclue2.enable = true;
    services.localtimed.enable = true;

    networking.firewall.allowedTCPPorts = [
      8000
      8080
      26213
      1883
    ];

    virtualisation.oci-containers = {
      backend = "docker";

      containers.mqtt = {
        autoStart = true;
        image = "eclipse-mosquitto:2.0";
        volumes = [
          "/opt/mosquitto/:/mosquitto"
        ];
        extraOptions = [
          "--net=host"
        ];
      };

      containers.zigbee2mqtt = {
        autoStart = true;
        image = "koenkk/zigbee2mqtt:1.33.0";
        dependsOn = [ "mqtt" ];

        volumes = [
          "/opt/zigbee2mqtt/data:/app/data"
          "/run/udev:/run/udev:ro"
        ];
        environment = {
          TZ = "Europe/Oslo";
        };
        extraOptions = [
          "--net=host"
          "--device=/dev/ttyACM0"
        ];
      };

      containers.openhab = {
        autoStart = false;
        image = "openhab/openhab:4.0.3";
        dependsOn = [ "zigbee2mqtt" ];

        volumes = [
          # "/etc/localtime:/etc/localtime:ro"
          "/etc/timezone:/etc/timezone:ro"
          "/opt/openhab/conf:/openhab/conf"
          "/opt/openhab/userdata:/openhab/userdata"
          "/opt/openhab/addons:/openhab/addons"
        ];

        extraOptions = [
          "--net=host"
          "-d"
        ];
        environment = {
          USER_ID = toString config.users.users.openhab.uid;
          GROUP_ID = toString config.users.groups.openhab.gid;
          CRYPTO_POLICY = "unlimited";
        };
      };
    };
  };
}
