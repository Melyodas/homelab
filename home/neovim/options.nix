{
    opts = {
      # allow CTRL-_ in Insert mode
      allowrevins = true;

      # what to do with Unicode chars of ambiguous width
      # "single": Use the same width as characters in US-ASCII.  This is
      #           expected by most users.
      # "double": Use twice the width of ASCII characters.
      ambiwidth = "single";
      # change directory to the file in the current window
      autochdir = false;
      # take indent for new line from previous line
      autoindent = true;
      # autom. read file when changed outside of Vim
      autoread = true;
      # automatically write file if changed
      autowrite = false;
      # as 'autowrite', but works with more commands
      autowriteall = false;
      # "dark" or "light", used for highlight colors
      background = "dark";
      # how backspace works at start of line
      # backspace = ;
      # keep backup file after overwriting a file
      # backup = ;
      # make backup as a copy, don't rename the file
      # backupcopy = ;
      # list of directories for the backup file
      # backupdir = ;
      # extension used for the backup file
      # backupext = ;
      # no backup for files that match these patterns
      # backupskip = ;
      # do not ring the bell for these reasons
      belloff = "all";
      # read/write/edit file in binary mode
      binary = false;
      # prepend a Byte Order Mark to the file
      # bomb = ;
      # characters that may cause a line break
      # breakat = ;
      # wrapped line repeats indent
      breakindent = true;
      # settings for 'breakindent'
      # breakindentopt = ;
      # which directory to start browsing in
      # browsedir = "last";
      # what to do when buffer is no longer in window
      # bufhidden = ;
      # whether the buffer shows up in the buffer list
      # buflisted = ;
      # special type of buffer
      # buftype = ;
      # specifies how case of letters is changed
      # casemap = ;
      # change directory to the home directory by ":cd"
      # cdhome = ;
      # list of directories searched with ":cd"
      # cdpath = ;
      # key used to open the command-line window
      # cedit = ;
      # expression for character encoding conversion
      # charconvert = ;
      # do C program indenting
      cindent = true;
      # keys that trigger indent when 'cindent' is set
      # cinkeys = ;
      # how to do indenting when 'cindent' is set
      # cinoptions = ;
      # words that are recognized by 'cino-g'
      # cinscopedecls = ;
      # words where 'si' and 'cin' add an indent
      # cinwords = ;
      # use the clipboard as the unnamed register
      # clipboard = ;
      # number of lines to use for the command-line
      # cmdheight = ;
      # height of the command-line window
      # cmdwinheight = ;
      # columns to highlight
      colorcolumn = "80";
      # number of columns in the display
      # columns = ;
      # patterns that can start a comment line
      # comments = ;
      # template for comments; used for fold marker
      # commentstring = ;
      # specify how Insert mode completion works
      # complete = ;
      # function to be used for Insert mode completion
      # completefunc = ;
      # options for Insert mode completion
      # completeopt = ;
      # like 'shellslash' for completion
      # completeslash = ;
      # whether concealable text is hidden in cursor line
      # concealcursor = ;
      # whether concealable text is shown or hidden
      # conceallevel = ;
      # ask what to do about unsaved/read-only files
      # confirm = ;
      # make 'autoindent' use existing indent structure
      # copyindent = ;
      # flags for Vi-compatible behavior
      # cpoptions = ;
      # move cursor in window as it moves in other windows
      # cursorbind = ;
      # highlight the screen column of the cursor
      # cursorcolumn = ;
      # highlight the screen line of the cursor
      # cursorline = ;
      # settings for 'cursorline'
      # cursorlineopt = ;
      # set to "msg" to see all error messages
      # debug = ;
      # pattern to be used to find a macro definition
      # define = ;
      # delete combining characters on their own
      # delcombine = ;
      # list of file names used for keyword completion
      # dictionary = ;
      # use diff mode for the current window
      # diff = ;
      # expression used to obtain a diff file
      # diffexpr = ;
      # options for using diff mode
      # diffopt = ;
      # enable the entering of digraphs in Insert mode
      # digraph = ;
      # list of directory names for the swap file
      # directory = ;
      # list of flags for how to display text
      # display = ;
      # in which direction 'equalalways' works
      # eadirection = ;
      # encoding used internally
      encoding = "utf-8";
      # write CTRL-Z at end of the file
      # endoffile = ;
      # write <EOL> for last line in file
      # endofline = ;
      # windows are automatically made the same size
      # equalalways = ;
      # external program to use for "=" command
      # equalprg = ;
      # ring the bell for error messages
      # errorbells = ;
      # name of the errorfile for the QuickFix mode
      # errorfile = ;
      # description of the lines in the error file
      # errorformat = ;
      # autocommand events that are ignored
      # eventignore = ;
      # use spaces when <Tab> is inserted
      expandtab = false;
      # read init files in the current directory
      # exrc = ;
      # file encoding for multibyte text
      # fileencoding = ;
      # automatically detected character encodings
      # fileencodings = ;
      # file format used for file I/O
      # fileformat = ;
      # automatically detected values for 'fileformat'
      # fileformats = ;
      # ignore case when using file names
      fileignorecase = true;
      # type of file, used for autocommands
      filetype = "on";
      # characters to use for displaying special items
      # fillchars = ;
      # make sure last line in file has <EOL>
      # fixendofline = ;
      # close a fold when the cursor leaves it
      # foldclose = ;
      # width of the column used to indicate folds
      # foldcolumn = ;
      # set to display all folds open
      # foldenable = ;
      # expression used when 'foldmethod' is "expr"
      # foldexpr = ;
      # ignore lines when 'foldmethod' is "indent"
      # foldignore = ;
      # close folds with a level higher than this
      # foldlevel = ;
      # 'foldlevel' when starting to edit a file
      # foldlevelstart = ;
      # markers used when 'foldmethod' is "marker"
      # foldmarker = ;
      # folding type
      # foldmethod = ;
      # minimum number of lines for a fold to be closed
      # foldminlines = ;
      # maximum fold depth
      # foldnestmax = ;
      # for which commands a fold will be opened
      # foldopen = ;
      # expression used to display for a closed fold
      # foldtext = ;
      # expression used with "gq" command
      # formatexpr = ;
      # pattern used to recognize a list header
      # formatlistpat = ;
      # how automatic formatting is to be done
      # formatoptions = ;
      # name of external program used with "gq" command
      # formatprg = ;
      # whether to invoke fsync() after file write
      # fsync = ;
      # the ":substitute" flag 'g' is default on
      # gdefault = ;
      # format of 'grepprg' output
      # grepformat = ;
      # program to use for ":grep"
      # grepprg = ;
      # GUI: settings for cursor shape and blinking
      # guicursor = ;
      # GUI: Name(s) of font(s) to be used
      # guifont = ;
      # list of font names for double-wide characters
      # guifontwide = ;
      # GUI: Which components and options are used
      # guioptions = ;
      # GUI: custom label for a tab page
      # guitablabel = ;
      # GUI: custom tooltip for a tab page
      # guitabtooltip = ;
      # full path name of the main help file
      # helpfile = ;
      # minimum height of a new help window
      # helpheight = ;
      # preferred help languages
      # helplang = ;
      # don't unload buffer when it is |abandon|ed
      # hidden = ;
      # number of command-lines that are remembered
      # history = ;
      # highlight matches with last search pattern
      # hlsearch = ;
      # let Vim set the text of the window icon
      # icon = ;
      # string to use for the Vim icon text
      # iconstring = ;
      # ignore case in search patterns
      ignorecase = true;
      # use IM when starting to edit a command line
      # imcmdline = ;
      # do not use the IM in any mode
      # imdisable = ;
      # use :lmap or IM in Insert mode
      # iminsert = ;
      # use :lmap or IM when typing a search pattern
      # imsearch = ;
      # pattern to be used to find an include file
      # include = ;
      # expression used to process an include line
      # includeexpr = ;
      # highlight match while typing search pattern
      incsearch = true;
      # expression used to obtain the indent of a line
      # indentexpr = ;
      # keys that trigger indenting with 'indentexpr'
      # indentkeys = ;
      # adjust case of match for keyword completion
      # infercase = ;
      # characters included in file names and pathnames
      # isfname = ;
      # characters included in identifiers
      # isident = ;
      # characters included in keywords
      # iskeyword = ;
      # printable characters
      # isprint = ;
      # two spaces after a period with a join command
      # joinspaces = ;
      # specifies how jumping is done
      # jumpoptions = ;
      # name of a keyboard mapping
      # keymap = ;
      # enable starting/stopping selection with keys
      # keymodel = ;
      # program to use for the "K" command
      # keywordprg = ;
      # alphabetic characters for other language mode
      # langmap = ;
      # language to be used for the menus
      # langmenu = ;
      # do apply 'langmap' to mapped characters
      # langremap = ;
      # tells when last window has status lines
      # laststatus = ;
      # don't redraw while executing macros
      # lazyredraw = ;
      # wrap long lines at a blank
      # linebreak = ;
      # number of lines in the display
      # lines = ;
      # number of pixel lines to use between characters
      # linespace = ;
      # automatic indenting for Lisp
      # lisp = ;
      # changes how Lisp indenting is done
      # lispoptions = ;
      # words that change how lisp indenting works
      # lispwords = ;
      # show <Tab> and <EOL>
      list = true;
      # characters for displaying in list mode
      listchars = "trail:†,tab:»·,nbsp:·";
      # load plugin scripts when starting up
      # loadplugins = ;
      # changes special characters in search patterns
      # magic = ;
      # name of the errorfile for ":make"
      # makeef = ;
      # encoding of external make/grep commands
      # makeencoding = ;
      # program to use for the ":make" command
      # makeprg = ;
      # pairs of characters that "%" can match
      # matchpairs = ;
      # tenths of a second to show matching paren
      # matchtime = ;
      # maximum nr of combining characters displayed
      # maxcombine = ;
      # maximum recursive depth for user functions
      # maxfuncdepth = ;
      # maximum recursive depth for mapping
      # maxmapdepth = ;
      # maximum memory (in Kbyte) used for pattern search
      # maxmempattern = ;
      # maximum number of items in a menu
      # menuitems = ;
      # memory used before |:mkspell| compresses the tree
      # mkspellmem = ;
      # recognize modelines at start or end of file
      # modeline = ;
      # allow setting expression options from a modeline
      # modelineexpr = ;
      # number of lines checked for modelines
      # modelines = ;
      # changes to the text are not possible
      # modifiable = ;
      # buffer has been modified
      # modified = ;
      # pause listings when the whole screen is filled
      # more = ;
      # enable the use of mouse clicks
      mouse = "a";
      # keyboard focus follows the mouse
      # mousefocus = ;
      # hide mouse pointer while typing
      # mousehide = ;
      # changes meaning of mouse buttons
      # mousemodel = ;
      # report mouse moves with <MouseMove>
      # mousemoveevent = ;
      # amount to scroll by when scrolling with a mouse
      # mousescroll = ;
      # shape of the mouse pointer in different modes
      # mouseshape = ;
      # max time between mouse double-click
      # mousetime = ;
      # number formats recognized for CTRL-A command
      # nrformats = ;
      # print the line number in front of each line
      number = true;
      # number of columns used for the line number
      # numberwidth = ;
      # function for filetype-specific completion
      # omnifunc = ;
      # allow reading/writing devices on MS-Windows
      # opendevice = ;
      # function to be called for |g@| operator
      # operatorfunc = ;
      # list of directories used for packages
      # packpath = ;
      # nroff macros that separate paragraphs
      # paragraphs = ;
      # expression used to patch a file
      # patchexpr = ;
      # keep the oldest version of a file
      # patchmode = ;
      # list of directories searched with "gf" et.al.
      # path = ;
      # preserve the indent structure when reindenting
      # preserveindent = ;
      # height of the preview window
      # previewheight = ;
      # identifies the preview window
      # previewwindow = ;
      # maximum number of items to show in the popup menu
      # pumheight = ;
      # minimum width of the popup menu
      # pumwidth = ;
      # Python version used for pyx* commands
      # pyxversion = ;
      # escape characters used in a string
      # quoteescape = ;
      # disallow writing the buffer
      # readonly = ;
      # timeout for 'hlsearch' and |:match| highlighting
      # redrawtime = ;
      # default regexp engine to use
      # regexpengine = ;
      # show relative line number in front of each line
      # relativenumber = ;
      # threshold for reporting nr. of lines changed
      # report = ;
      # inserting characters will work backwards
      # revins = ;
      # window is right-to-left oriented
      # rightleft = ;
      # commands for which editing works right-to-left
      # rightleftcmd = ;
      # show cursor line and column in the status line
      # ruler = ;
      # custom format for the ruler
      # rulerformat = ;
      # list of directories used for runtime files
      # runtimepath = ;
      # lines to scroll with CTRL-U and CTRL-D
      # scroll = ;
      # scroll in window as other windows scroll
      # scrollbind = ;
      # minimum number of lines to scroll
      # scrolljump = ;
      # minimum nr. of lines above and below cursor
      scrolloff = 5;
      # how 'scrollbind' should behave
      # scrollopt = ;
      # nroff macros that separate sections
      # sections = ;
      # secure mode for reading .vimrc in current dir
      # secure = ;
      # what type of selection to use
      # selection = ;
      # when to use Select mode instead of Visual mode
      # selectmode = ;
      # options for |:mksession|
      # sessionoptions = ;
      # use .shada file upon startup and exiting
      # shada = ;
      # name of shell to use for external commands
      # shell = ;
      # flag to shell to execute one command
      # shellcmdflag = ;
      # string to put output of ":make" in error file
      # shellpipe = ;
      # quote character(s) for around shell command
      # shellquote = ;
      # string to put output of filter in a temp file
      # shellredir = ;
      # use forward slash for shell file names
      # shellslash = ;
      # whether to use a temp file for shell commands
      # shelltemp = ;
      # characters to escape when 'shellxquote' is (
      # shellxescape = ;
      # like 'shellquote', but include redirection
      # shellxquote = ;
      # round indent to multiple of shiftwidth
      # shiftround = ;
      # number of spaces to use for (auto)indent step
      shiftwidth = 4;
      # list of flags, reduce length of messages
      # shortmess = ;
      # string to use at the start of wrapped lines
      # showbreak = ;
      # show (partial) command somewhere
      showcmd = true;
      # where to show (partial) command
      # showcmdloc = ;
      # show full tag pattern when completing tag
      # showfulltag = ;
      # briefly jump to matching bracket if insert one
      # showmatch = ;
      # message on status line to show current mode
      showmode = true;
      # tells when the tab pages line is displayed
      # showtabline = ;
      # minimum number of columns to scroll horizontal
      # sidescroll = ;
      # min. nr. of columns to left and right of cursor
      # sidescrolloff = ;
      # when and how to display the sign column
      # signcolumn = ;
      # no ignore case when pattern has uppercase
      smartcase = true;
      # smart autoindenting for C programs
      # smartindent = ;
      # use 'shiftwidth' when inserting <Tab>
      # smarttab = ;
      # scroll by screen lines when 'wrap' is set
      # smoothscroll = ;
      # number of spaces that <Tab> uses while editing
      softtabstop = 4;
      # enable spell checking
      # spell = ;
      # pattern to locate end of a sentence
      # spellcapcheck = ;
      # files where |zg| and |zw| store words
      # spellfile = ;
      # language(s) to do spell checking for
      # spelllang = ;
      # options for spell checking
      # spelloptions = ;
      # method(s) used to suggest spelling corrections
      # spellsuggest = ;
      # new window from split is below the current one
      # splitbelow = ;
      # determines scroll behavior for split windows
      # splitkeep = ;
      # new window is put right of the current one
      splitright = true;
      # commands move cursor to first non-blank in line
      # startofline = ;
      # custom format for the status column
      # statuscolumn = ;
      # custom format for the status line
      # statusline = ;
      # suffixes that are ignored with multiple match
      # suffixes = ;
      # suffixes added when searching for a file
      # suffixesadd = ;
      # whether to use a swapfile for a buffer
      # swapfile = ;
      # sets behavior when switching to another buffer
      # switchbuf = ;
      # maximum column to find syntax items
      # synmaxcol = ;
      # syntax to be loaded for current buffer
      syntax = "on";
      # custom format for the console tab pages line
      # tabline = ;
      # maximum number of tab pages for |-p| and "tab all"
      # tabpagemax = ;
      # number of spaces that <Tab> in file uses
      # tabstop = ;
      # use binary searching in tags files
      # tagbsearch = ;
      # how to handle case when searching in tags files
      # tagcase = ;
      # function to get list of tag matches
      # tagfunc = ;
      # number of significant characters for a tag
      # taglength = ;
      # file names in tag file are relative
      # tagrelative = ;
      # list of file names used by the tag command
      # tags = ;
      # push tags onto the tag stack
      # tagstack = ;
      # name of the terminal
      # term = ;
      # terminal takes care of bi-directionality
      # termbidi = ;
      # maximum width of text that is being inserted
      # textwidth = ;
      # list of thesaurus files for keyword completion
      # thesaurus = ;
      # function to be used for thesaurus completion
      # thesaurusfunc = ;
      # tilde command "~" behaves like an operator
      # tildeop = ;
      # time out on mappings and key codes
      # timeout = ;
      # time out time in milliseconds
      # timeoutlen = ;
      # let Vim set the title of the window
      # title = ;
      # percentage of used for window title
      # titlelen = ;
      # old title, restored when exiting
      # titleold = ;
      # string to use for the Vim window title
      # titlestring = ;
      # time out on mappings
      # ttimeout = ;
      # time out time for key codes in milliseconds
      # ttimeoutlen = ;
      # alias for 'term'
      # ttytype = ;
      # where to store undo files
      # undodir = ;
      # save undo information in a file
      # undofile = ;
      # maximum number of changes that can be undone
      # undolevels = ;
      # max nr of lines to save for undo on a buffer reload
      # undoreload = ;
      # after this many characters flush swap file
      # updatecount = ;
      # after this many milliseconds flush swap file
      # updatetime = ;
      # a list of number of spaces when typing <Tab>
      # varsofttabstop = ;
      # a list of number of spaces for <Tab>s
      # vartabstop = ;
      # give informative messages
      # verbose = ;
      # file to write messages in
      # verbosefile = ;
      # directory where to store files with :mkview
      # viewdir = ;
      # specifies what to save for :mkview
      # viewoptions = ;
      # when to use virtual editing
      # virtualedit = ;
      # use visual bell instead of beeping
      # visualbell = ;
      # warn for shell command when buffer was changed
      # warn = ;
      # allow specified keys to cross line boundaries
      # whichwrap = ;
      # command-line character for wildcard expansion
      # wildchar = ;
      # like 'wildchar' but also works when mapped
      # wildcharm = ;
      # files matching these patterns are not completed
      # wildignore = ;
      # ignore case when completing file names
      wildignorecase = true;
      # use menu for command line completion
      # wildmenu = ;
      # mode for 'wildchar' command-line expansion
      # wildmode = ;
      # specifies how command line completion is done
      # wildoptions = ;
      # when the windows system handles ALT keys
      # winaltkeys = ;
      # nr of lines to scroll for CTRL-F and CTRL-B
      # window = ;
      # keep window focused on a single buffer
      # winfixbuf = ;
      # keep window height when opening/closing windows
      # winfixheight = ;
      # keep window width when opening/closing windows
      # winfixwidth = ;
      # minimum number of lines for the current window
      # winheight = ;
      # window-local highlighting
      # winhighlight = ;
      # minimum number of lines for any window
      # winminheight = ;
      # minimal number of columns for any window
      # winminwidth = ;
      # minimal number of columns for current window
      # winwidth = ;
      # long lines wrap and continue on the next line
      # wrap = ;
      # chars from the right where wrapping starts
      # wrapmargin = ;
      # searches wrap around the end of the file
      # wrapscan = ;
      # writing to a file is allowed
      # write = ;
      # write to file with no need for "!" override
      # writeany = ;
      # make a backup before overwriting a file
      # writebackup = ;
      # delay this many msec for each char (for debug)
      # writedelay = ;
    };

}
