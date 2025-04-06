{
    keymaps = [
        # {W} -> [É]
        # ——————————
        # On remappe W sur É :
        {
            key = "é";
            action = "w";
        }
        {
            key = "É";
            action = "W";
        }
        # Corollaire: on remplace les text objects aw, aW, iw et iW
        # pour effacer/remplacer un mot quand on n’est pas au début (daé / laé).
        {
            "mode" = "o";
            key = "aé";
            action = "aw";
        }
        {
            "mode" = "o";
            key = "aÉ";
            action = "aW";
        }
        {
            "mode" = "o";
            key = "ié";
            action = "iw";
        }
        {
            "mode" = "o";
            key = "iÉ";
            action = "iW";
        }
        # Pour faciliter les manipulations de fenêtres, on utilise {W} comme un Ctrl+W :
        {
            key = "w";
            action = "<C-w>";
        }
        {
            key = "W";
            action = "<C-w><C-w>";
        }

        # [HJKL] -> {CTSR}
        # ————————————————
        # {cr} = « gauche / droite »
        {
            key = "c";
            action = "h";
        }
        {
            key = "r";
            action = "l";
        }
        # {ts} = « haut / bas »
        {
            key = "t";
            action = "j";
        }
        {
            key = "s";
            action = "k";
        }
        # {CR} = « haut / bas de l'écran »
        {
            key = "C";
            action = "H";
        }
        {
            key = "R";
            action = "L";
        }
        # {TS} = « joindre / aide »
        {
            key = "T";
            action = "J";
        }
        {
            key = "S";
            action = "K";
        }
        # Corollaire : repli suivant / précédent
        {
            key = "zs";
            action = "zj";
        }
        {
            key = "zt";
            action = "zk";
        }

        # {HJKL} <- [CTSR]
        # ————————————————
        # {J} = « Jusqu'à »            (j = suivant, J = précédant)
        {
            key = "j";
            action = "t";
        }
        {
            key = "J";
            action = "T";
        }
        # {L} = « Change »             (l = attend un mvt, L = jusqu'à la fin de ligne)
        {
            key = "l";
            action = "c";
        }
        {
            key = "L";
            action = "C";
        }
        # {H} = « Remplace »           (h = un caractère slt, H = reste en « Remplace »)
        {
            key = "h";
            action = "r";
        }
        {
            key = "H";
            action = "R";
        }
        # {K} = « Substitue »          (k = caractère, K = ligne)
        {
            key = "k";
            action = "s";
        }
        {
            key = "K";
            action = "S";
        }
        # Corollaire : correction orthographique
        {
            key = "]k";
            action = "]s";
        }
        {
            key = "[k";
            action = "[s";
        }

        # Désambiguation de {g}
        # —————————————————————
        # ligne écran précédente / suivante (à l'intérieur d'une phrase)
        {
            key = "gs";
            action = "gk";
        }
        {
            key = "gt";
            action = "gj";
        }
        # onglet précédant / suivant
        {
            key = "gb";
            action = "gT";
        }
        {
            key = "gé";
            action = "gt";
        }
        # optionnel : {gB} / {gÉ} pour aller au premier / dernier onglet
        {
            key = "gB";
            action = "<cmd>tabfirst<CR>";
            options.silent = true;
        }
        {
            key = "gÉ";
            action = "<cmd>tablast<CR>";
            options.silent = true;
        }
        # optionnel : {g"} pour aller au début de la ligne écran
        {
            key = "g\"";
            action = "g0";
        }

        # <> en direct
        # ————————————
        {
            key = "«";
            action = "<";
        }
        {
            key = "»";
            action = ">";
        }

        # Remaper la gestion des fenêtres
        # ———————————————————————————————
        {
            key = "wt";
            action = "<C-w>j";
        }
        {
            key = "ws";
            action = "<C-w>k";
        }
        {
            key = "wc";
            action = "<C-w>h";
        }
        {
            key = "wr";
            action = "<C-w>l";
        }
        {
            key = "wd";
            action = "<C-w>c";
        }
        {
            key = "wo";
            action = "<C-w>s";
        }
        {
            key = "wp";
            action = "<C-w>o";
        }
        {
            key = "w<SPACE>";
            action = ":split<CR>";
        }
        {
            key = "w<CR>";
            action = ":vsplit<CR>";
        }

        # Chiffres en accès direct
        # ————————————————————————
        {
            key = "\"";
            action = "1";
        }
        {
            key = "1";
            action = "\"";
        }
        {
            key = "«";
            action = "2";
        }
        {
            key = "2";
            action = "<";
        }
        {
            key = "»";
            action = "3";
        }
        {
            key = "3";
            action = ">";
        }
        {
            key = "(";
            action = "4";
        }
        {
            key = "4";
            action = "(";
        }
        {
            key = ")";
            action = "5";
        }
        {
            key = "5";
            action = ")";
        }
        {
            key = "@";
            action = "6";
        }
        {
            key = "6";
            action = "@";
        }
        {
            key = "+";
            action = "7";
        }
        {
            key = "7";
            action = "+";
        }
        {
            key = "-";
            action = "8";
        }
        {
            key = "8";
            action = "-";
        }
        # / more usefull than 9
        # noremap / 9
        # noremap 9 /
        {
            key = "*";
            action = "0";
        }
        {
            key = "0";
            action = "*";
        }

        # tags
        {
            key = "<C-s>";
            action = "<C-]>";
        }

        {
            key = ";";
            action = ":";
        }
    ];
}
