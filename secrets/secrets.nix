let
    melyodas = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAID4A6SsC/UcU6Rp40GBKh+AzHzXGKeEJSnUHMDo0UgXe";
    users = [ melyodas ];

    claptrap = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPMQI2RVA8BU7/fae4xwL8uNT2q8tuMgu9xSoqS+KvN3";
    xana = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJBpzla6AAYWBBOS+CfJqToF2RFYpZTwQ+hjdSTLyyTJ";
    systems = [ claptrap ];
in
{
    "pihole.age".publicKeys = users ++ systems;
}
