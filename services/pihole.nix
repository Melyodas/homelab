{
  config,
  lib,
  ...
}:

let
  cfg = config.my.services.pihole;
in
{
  options.my.services.pihole = {
    enable = lib.mkEnableOption "Pi-hole server";
  };

  config = lib.mkIf cfg.enable {

    age.secrets.pihole.file = ../secrets/pihole.age;

    virtualisation.oci-containers = {
      backend = "docker";
      containers.pihole = {
        autoStart = true;
        image = "pihole/pihole:latest";
        volumes = [
          # For persisting Pi-hole's databases and common configuration file
          "/opt/pihole:/etc/pihole"
          "${config.age.secrets.pihole.path}:/etc/password:ro"
        ];
        ports = [
          # DNS Ports
          "53:53/tcp"
          "53:53/udp"
          # Default HTTP Port
          "80:80/tcp"
          # Default HTTPs Port. FTL will generate a self-signed certificate
          "443:443/tcp"
          # Uncomment the below if using Pi-hole as your DHCP Server
          # "67:67/udp"
          # Uncomment the line below if you are using Pi-hole as your NTP server
          # "123:123/udp"
        ];

        environment = {
          # Set a password to access the web interface. Not setting one
          # will result in a random password being assigned
          WEBPASSWORD_FILE = "/etc/password";

          # If using Docker's default `bridge` network setting the dns
          # listening mode should be set to 'all'
          FTLCONF_dns_listeningMode = "all";

          TZ = "Europe/Oslo";
        };
      };
    };
  };
}
