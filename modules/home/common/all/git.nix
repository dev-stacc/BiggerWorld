{ config, lib, pkgs, username, ... } : {
    programs.git = {
        enable = true;
        settings = {
            user = {
                name = "Anastasia";
                email = "s.valitiana@gmail.com";
            };
            credential.helper = "store --file /home/${username}/.git-credentials";
        };
    };
}
