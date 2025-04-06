{
    # QOL
    plugins.which-key = {
      enable = true;
      settings = {
        delay = 200;
        expand = 1;
        notify = false;
        preset = false;
        replace = {
          desc = [
            [
              "<space>"
              "SPACE"
            ]
            [
              "<leader>"
              "SPACE"
            ]
            [
              "<[cC][rR]>"
              "RETURN"
            ]
            [
              "<[tT][aA][bB]>"
              "TAB"
            ]
            [
              "<[bB][sS]>"
              "BACKSPACE"
            ]
          ];
        };
        spec = [
          {
            __unkeyed-1 = "<leader>p";
            group = "Project";
            icon = "󰓩 ";
          }
          {
            __unkeyed-1 = "<leader>pf";
            __unkeyed-2.__raw = ''
              function()
                require('fzf-lua').files()
              end
            '';
            mode = "n";
            desc = "Open file";
            silent = true;
          }
          {
            __unkeyed-1 = "<leader>pt";
            __unkeyed-2 = "<cmd>CHADopen<CR>";
            mode = "n";
            desc = "Open Tree";
            silent = true;
          }
        ];
        win = {
          border = "single";
        };
      };
    };
}
