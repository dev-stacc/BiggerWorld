{ username, ... } : {
    programs.git = {
        enable = true;
        settings = {
            user = {
                name = "${username}";
                email = "s.valitiana@gmail.com";
            };
            credential.helper = "store --file /home/${username}/.git-credentials";
        };
    };
}
