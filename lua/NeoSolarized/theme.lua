local colors = require("NeoSolarized.colors")

local M = {}
function M.setup()
  local config = require("NeoSolarized.config")
  local options = config.options
  local theme = {
    config = options,
    colors = colors.setup(),
  }

  local c = theme.colors

  theme.highlights = {

    ColorColumn  = { bg = c.blue }, -- used for the columns set with 'colorcolumn'
    Comment      = { fg = c.fg2, style = options.styles.comments }, -- any comment
    Conceal      = { fg = c.bg1 }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    CurSearch    = { link = "IncSearch" },
    CurrentWord  = { fg = c.bg0, bg = c.bg_green },
    Cursor       = { fg = c.bg1, bg = c.fg0 }, -- character under the cursor
    CursorColumn = { bg = c.none }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorIM     = { fg = c.bg0, bg = c.fg0 }, -- like Cursor, but used when in IME mode |CursorIM|
    CursorLine   = { bg = options.transparent and c.bg0 or c.bg1 }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    CursorLineNr = { fg = c.base2 }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    DiffAdd      = { bg = c.green }, -- diff mode: Added line |diff.txt|
    DiffChange   = { bg = c.voilet }, -- diff mode: Changed line |diff.txt|
    DiffDelete   = { bg = c.red }, -- diff mode: Deleted line |diff.txt|
    DiffText     = { bg = c.bg1 }, -- diff mode: Changed text within a changed line |diff.txt|
    Directory    = { fg = c.blue }, -- directory names (and other special names in listings)
    EndOfBuffer  = { fg = c.bg1 }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    ErrorMsg     = { fg = c.red }, -- error messages on the command line
    ErrorText    = { sp = c.red, undercurl = options.styles.undercurl },
    FloatBorder  = { fg = c.base1, bg = options.transparent and c.none or c.bg1 },
    FoldColumn   = { bg = options.transparent and c.none or c.bg0, fg = c.bg1 }, -- 'foldcolumn'
    Folded       = { fg = c.blue, bg = c.bg1 }, -- line used for closed folds
    Foo          = { bg = c.purple, fg = c.purple },
    HintText     = { sp = c.green, undercurl = false }, -- FIXME : Showing weird undercurl
    IncSearch    = { bg = c.orange, fg = c.bg0 }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c" InfoText     = { sp = c.blue, undercurl = options.styles.undercurl },
    LineNr       = { bg = options.transparent and c.none or c.bg1, fg = c.fg1 }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    MatchParen   = { fg = c.orange, bold = true }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg      = { fg = c.fg2, bold = true }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MoreMsg      = { fg = c.blue }, -- |more-prompt|
    MsgArea      = { fg = c.base2 }, -- Area for messages and cmdline
    NonText      = { fg = c.fg2 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal       = { fg = c.fg0, bg = options.transparent and c.none or c.bg0 }, -- normal text
    NormalFloat  = { fg = c.fg0, bg = options.transparent and c.none or c.bg1 }, -- Normal text in floating windows.
    NormalNC     = { fg = c.fg0, bg = options.transparent and c.none or c.bg0 }, -- normal text in non-current windows
    NormalSB     = { fg = c.fg0, bg = c.bg0 }, -- normal text in sidebar
    Pmenu        = { bg = options.transparent and c.none or c.bg1, fg = c.fg0 }, -- Popup menu: normal item.
    PmenuSbar    = { bg = options.transparent and c.none or c.bg1 }, -- Popup menu: scrollbar.
    PmenuSel     = { bg = c.fg2, fg = c.base3 }, -- Popup menu: selected item.
    PmenuThumb   = { bg = c.base1 }, -- Popup menu: Thumb of the scrollbar.
    Question     = { fg = c.blue }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine = { bg = c.aqua, bold = true, undercurl = options.styles.undercurl }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search       = { bg = c.bg_green, fg = c.bg0 }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    SignColumn   = { bg = options.transparent and c.none or c.bg0 }, -- column where |signs| are displayed
    SignColumnSB = { bg = c.bg0, fg = c.bg1 }, -- column where |signs| are displayed
    SpecialKey   = { fg = c.fg2 }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad     = { sp = c.red, undercurl = options.styles.undercurl }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap     = { sp = c.blue, undercurl = options.styles.undercurl }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal   = { sp = c.purple, undercurl = options.styles.undercurl }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare    = { sp = c.green, undercurl = options.styles.undercurl }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine   = { fg = c.fg0, bg = options.transparent and c.none or c.bg0 }, -- status line of current window
    StatusLineNC = { fg = c.fg2, bg = c.bg_statusline }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    Substitute   = { bg = c.red, fg = c.bg0 }, -- |:substitute| replacement text highlighting
    TabLine      = { bg = c.bg_statusline1, fg = c.fg2 }, -- tab pages line, not active tab page label
    TabLineFill  = { bg = c.bg0 }, -- tab pages line, where there are no labels
    TabLineSel   = { fg = c.bg0, bg = c.blue }, -- tab pages line, active tab page label
    Title        = { fg = c.blue, bold = true }, -- titles for output from ":set all", ":autocmd" etc.
    VertSplit    = { fg = options.transparent and c.bg0 or c.base1 }, -- the column separating vertically split windows
    Visual       = { bg = config.is_day() and c.base1 or c.bg1, fg = config.is_day() and c.fg0 or c.none }, -- Visual mode selection
    VisualNOS    = { bg = c.bg1 }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg   = { fg = c.red }, -- warning messages
    WarningText  = { sp = c.yellow, undercurl = options.styles.undercurl },
    Whitespace   = { fg = c.fg2 }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu     = { bg = c.bg1 }, -- current match in 'wildmenu' completion
    WinSeparator = { fg = options.transparent and c.bg0 or c.bg1, bold = true }, -- the column separating vertically split windows
    lCursor      = { fg = c.bg0, bg = c.fg0 }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')

    -- These groups are not listed as default vim groups,
    -- but they are defacto standard group names for syntax highlighting.
    -- commented out groups should chain up to their "preferred" group by
    -- default,
    -- Uncomment and edit if you want more specific syntax highlighting.

    Constant       = { fg = c.aqua }, -- (preferred) any constant
    String         = { fg = c.green, style = options.styles.string }, --   a string constant: "this is a string"
    Character      = { fg = c.green }, --  a character constant: 'c', '\n'
    Number         = { fg = c.purple }, --   a number constant: 234, 0xff
    Boolean        = { fg = c.purple }, --  a boolean constant: TRUE, false
    Float          = { fg = c.purple }, --    a floating point constant: 2.3e10
    Identifier     = { fg = c.blue, style = options.styles.variables }, -- (preferred) any variable name
    Function       = { fg = c.green, style = options.styles.functions }, -- function name (also: methods for classes)
    Statement      = { fg = c.red, italic = options.enable_italics }, -- (preferred) any statement
    Conditional    = { fg = c.red, italic = options.enable_italics }, --  if, then, else, endif, switch, etc.
    Repeat         = { fg = c.red, italic = options.enable_italics }, --   for, do, while, etc.
    Label          = { fg = c.orange }, --    case, default, etc.
    Operator       = { fg = c.orange }, -- "sizeof", "+", "*", etc.
    Keyword        = { fg = c.red, style = options.styles.keywords }, --  any other keyword
    Exception      = { fg = c.red, italic = options.enable_italics }, --  try, catch, throw
    PreProc        = { fg = c.purple, italic = options.enable_italics }, -- (preferred) generic Preprocessor
    PreCondit      = { fg = c.purple, italic = options.enable_italics },
    Include        = { fg = c.purple, italic = options.enable_italics }, --  preprocessor #include
    Define         = { fg = c.purple, italic = options.enable_italics }, --   preprocessor #define
    Macro          = { fg = c.aqua }, --    same as Define
    Type           = { fg = c.yellow }, -- (preferred) int, long, char, etc.
    StorageClass   = { fg = c.orange }, -- static, register, volatile, etc.
    Structure      = { fg = c.orange }, --  struct, union, enum, etc.
    Typedef        = { fg = c.red, italic = options.enable_italics }, --  A typedef
    Special        = { fg = c.yellow }, -- (preferred) any special symbol
    SpecialChar    = { fg = c.yellow }, --  special character in a constant
    Tag            = { fg = c.orange }, --    you can use CTRL-] on this
    Delimiter      = { fg = c.fg0 }, --  character that needs attention
    SpecialComment = { fg = c.base1 }, -- special things inside a comment
    Debug          = { fg = c.orange }, --    debugging statements
    Underlined     = { underline = true }, -- (preferred) text that stands out, HTML links
    Bold           = { bold = true },
    Italic         = { italic = true },

    -- ("Ignore", below, may be invisible...)
    Ignore     = { fg = c.base1 }, -- (preferred) left blank, hidden  |hl-Ignore|
    Error      = { fg = c.red }, -- (preferred) any erroneous construct
    Todo       = { bg = c.bg_yellow, fg = c.bg0 }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    qfLineNr   = { fg = c.base1 },
    qfFileName = { fg = c.blue },

    -- HTML
    htmlH1                  = { fg = c.red, bold = true },
    htmlH2                  = { fg = c.orange, bold = true },
    htmlH3                  = { fg = c.yellow, bold = true },
    htmlH4                  = { fg = c.green, bold = true },
    htmlH5                  = { fg = c.blue, bold = true },
    htmlH6                  = { fg = c.purple, bold = true },
    htmlLink                = { underline = true },
    htmlBold                = { bold = true },
    htmlBoldUnderline       = { underline = true, bold = true },
    htmlBoldItalics         = { italic = true, bold = true },
    htmlBoldUnderlineItalic = { underline = true, italic = true, bold = true },
    htmlUnderline           = { underline = true },
    htmlUnderlineItalic     = { italic = true, underline = true },
    htmlItalic              = { italic = true },
    mkdCodeDelimiter        = { bg = c.bg0, fg = c.fg0 },

    -- MarkDown
    markdownH1                = { fg = c.red, bold = true },
    markdownH2                = { fg = c.orange, bold = true },
    markdownH3                = { fg = c.yellow, bold = true },
    markdownH4                = { fg = c.green, bold = true },
    markdownH5                = { fg = c.blue, bold = true },
    markdownH6                = { fg = c.purple, bold = true },
    markdownUrl               = { fg = c.blue, underline = true },
    markdownItalic            = { italic = true },
    markdownBold              = { bold = true },
    markdownItalicDelimiter   = { fg = c.base1, italic = true },
    markdownCode              = { fg = c.green },
    markdownCodeBlock         = { fg = c.aqua },
    markdownCodeDelimiter     = { fg = c.aqua },
    markdownBlockquote        = { fg = c.fg2 },
    markdownListMarker        = { fg = c.red },
    markdownOrderedListMarker = { fg = c.red },
    markdownRule              = { fg = c.purple },
    markdownHeadingRule       = { fg = c.base1 },
    markdownUrlDelimiter      = { fg = c.base1 },
    markdownLinkDelimiter     = { fg = c.base1 },
    markdownLinkTextDelimiter = { fg = c.base1 },
    markdownHeadingDelimiter  = { fg = c.base1 },
    markdownLinkText          = { fg = c.purple },
    markdownUrlTitleDelimiter = { fg = c.base1 },
    markdownIdDeclaration     = { link = "markdownLinkText" },
    markdownBoldDelimiter     = { fg = c.base1 },
    markdownId                = { fg = c.yellow },

    ["@punctuation.special.markdown"] = { fg = c.orange, bold = true },
    ["@text.literal.markdown_inline"] = { bg = c.bg0, fg = c.blue },

    -- Diagnostic
    RedSign                    = { fg = c.red },
    YellowSign                 = { fg = c.yellow },
    GreenSign                  = { fg = c.green },
    BlueSign                   = { fg = c.blue },
    VirtualTextWarning         = { fg = c.yellow },
    VirtualTextError           = { fg = c.red },
    VirtualTextInfo            = { fg = c.blue },
    VirtualTextHint            = { fg = c.green },
    ErrorFloat                 = { fg = c.red, bg = options.transparent and c.none or c.bg1 },
    WarningFloat               = { fg = c.yellow, bg = options.transparent and c.none or c.bg1 },
    InfoFloat                  = { fg = c.blue, bg = options.transparent and c.none or c.bg1 },
    HintFloat                  = { fg = c.green, bg = options.transparent and c.none or c.bg1 },
    --[[ WinBarNC                   = { fg = c.base1 }, ]]
    DiagnosticFloatingError    = { link = "ErrorFloat" },
    DiagnosticFloatingWarn     = { link = "WarningFloat" },
    DiagnosticFloatingInfo     = { link = "InfoFloat" },
    DiagnosticFloatingHint     = { link = "HintFloat" },
    DiagnosticError            = { link = "ErrorText" },
    DiagnosticWarn             = { link = "WarningText" },
    DiagnosticInfo             = { link = "InfoText" },
    DiagnosticHint             = { link = "HintText" },
    DiagnosticVirtualTextError = { link = "VirtualTextError" },
    DiagnosticVirtualTextWarn  = { link = "VirtualTextWarning" },
    DiagnosticVirtualTextInfo  = { link = "VirtualTextInfo" },
    DiagnosticVirtualTextHint  = { link = "VirtualTextHint" },
    DiagnosticUnderlineError   = { link = "ErrorText" },
    DiagnosticUnderlineWarn    = { link = "WarningText" },
    DiagnosticUnderlineInfo    = { link = "InfoText" },
    DiagnosticUnderlineHint    = { link = "HintText" },
    DiagnosticSignError        = { link = "RedSign" },
    DiagnosticSignWarn         = { link = "YellowSign" },
    DiagnosticSignInfo         = { link = "BlueSign" },
    DiagnosticSignHiblue       = { link = "GreenSign" },

    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.
    LspDiagnosticsFloatingError          = { link = "DiagnosticFloatingError" },
    LspDiagnosticsFloatingWarning        = { link = "DiagnosticFloatingWarn" },
    LspDiagnosticsFloatingInformation    = { link = "DiagnosticFloatingInfo" },
    LspDiagnosticsFloatingHint           = { link = "DiagnosticFloatingHint" },
    LspDiagnosticsDefaultError           = { link = "DiagnosticError" },
    LspDiagnosticsDefaultWarning         = { link = "DiagnosticWarn" },
    LspDiagnosticsDefaultInformation     = { link = "DiagnosticInfo" },
    LspDiagnosticsDefaultHint            = { link = "DiagnosticHint" },
    LspDiagnosticsVirtualTextError       = { link = "DiagnosticVirtualTextError" },
    LspDiagnosticsVirtualTextWarning     = { link = "DiagnosticVirtualTextWarn" },
    LspDiagnosticsVirtualTextInformation = { link = "DiagnosticVirtualTextInfo" },
    LspDiagnosticsVirtualTextHint        = { link = "DiagnosticVirtualTextHint" },
    LspDiagnosticsUnderlineError         = { link = "DiagnosticUnderlineError" },
    LspDiagnosticsUnderlineWarning       = { link = "DiagnosticUnderlineWarn" },
    LspDiagnosticsUnderlineInformation   = { link = "DiagnosticUnderlineInfo" },
    LspDiagnosticsUnderlineHint          = { link = "DiagnosticUnderlineHint" },
    LspDiagnosticsSignError              = { link = "DiagnosticSignError" },
    LspDiagnosticsSignWarning            = { link = "DiagnosticSignWarn" },
    LspDiagnosticsSignInformation        = { link = "DiagnosticSignInfo" },
    LspDiagnosticsSignHint               = { link = "DiagnosticSignHint" },
    LspReferenceText                     = { link = "CurrentWord" },
    LspReferenceRead                     = { link = "CurrentWord" },
    LspReferenceWrite                    = { link = "CurrentWord" },
    LspCodeLens                          = { link = "VirtualTextInfo" },
    LspCodeLensSeparator                 = { link = "VirtualTextHint" },
    LspSignatureActiveParameter          = { link = "Search" },
    TermCursor                           = { link = "Cursor" },
    healthError                          = { fg = c.red },
    healthSuccess                        = { fg = c.green },
    healthWarning                        = { fg = c.yellow },
    ALEErrorSign                         = { link = "ErrorMsg" },
    ALEWarningSign                       = { link = "WarningMsg" },

    -- These highlight Groups are for Tree-sitter
    TSAnnotation         = { fg = c.purple },
    TSAttribute          = { fg = c.purple },
    TSBoolean            = { fg = c.purple },
    TSCharacter          = { fg = c.aqua },
    TSComment            = { link = "Comment" },
    TSConditional        = { fg = c.red },
    TSConstBuiltin       = { fg = c.blue, italic = true },
    TSConstMacro         = { fg = c.blue, italic = true },
    TSConstant           = { fg = c.fg0 },
    TSConstructor        = { fg = c.green, bold = true },
    TSException          = { fg = c.red },
    TSField              = { fg = c.green },
    TSFloat              = { fg = c.purple },
    TSFuncBuiltin        = { fg = c.green, bold = true },
    TSFuncMacro          = { fg = c.green, bold = true },
    TSFunction           = { fg = c.green, bold = true },
    TSInclude            = { fg = c.red },
    TSKeyword            = { fg = c.red },
    TSKeywordFunction    = { fg = c.red },
    TSKeywordOperator    = { fg = c.orange },
    TSLabel              = { fg = c.orange },
    TSMethod             = { fg = c.green, bold = true },
    TSNamespace          = { fg = c.yellow, italic = true },
    TSNone               = { fg = c.fg0 },
    TSNumber             = { fg = c.purple },
    TSOperator           = { fg = c.orange },
    TSParameter          = { fg = c.fg0 },
    TSParameterReference = { fg = c.fg0 },
    TSProperty           = { fg = c.fg0 },
    TSPunctBracket       = { fg = c.fg0 },
    TSPunctDelimiter     = { fg = c.base1 },
    TSPunctSpecial       = { fg = c.blue },
    TSRepeat             = { fg = c.red },
    TSStorageClass       = { fg = c.orange },
    TSString             = { fg = c.aqua },
    TSStringEscape       = { fg = c.green },
    TSStringRegex        = { fg = c.green },
    TSSymbol             = { fg = c.fg0 },
    TSTag                = { fg = c.orange },
    TSTagDelimiter       = { fg = c.green },
    TSText               = { fg = c.green },
    TSStrike             = { fg = c.base1 },
    TSMath               = { fg = c.blue },
    TSType               = { fg = c.yellow },
    TSTypeBuiltin        = { fg = c.yellow, italic = true },
    TSURI                = { link = "markdownUrl" },
    TSVariable           = { fg = c.fg0 },
    TSVariableBuiltin    = { fg = c.blue, italic = true },

    -- ts-rainbow
    rainbowcol1 = { fg = c.red },
    rainbowcol2 = { fg = c.orange },
    rainbowcol3 = { fg = c.yellow },
    rainbowcol4 = { fg = c.green },
    rainbowcol5 = { fg = c.aqua },
    rainbowcol6 = { fg = c.blue },
    rainbowcol7 = { fg = c.purple },

    -- LspTrouble
    TroubleText   = { fg = c.fg0 },
    TroubleCount  = { fg = c.base1 },
    TroubleNormal = { fg = c.base1 },

    -- Illuminate
    illuminatedWord      = { link = "CurrentWord" },
    illuminatedCurWord   = { link = "CurrentWord" },
    IlluminatedWordText  = { link = "CurrentWord" },
    IlluminatedWordRead  = { link = "CurrentWord" },
    IlluminatedWordWrite = { link = "CurrentWord" },

    -- diff
    diffAdded     = { fg = c.green },
    diffRemoved   = { fg = c.red },
    diffChanged   = { fg = c.blue },
    diffOldFile   = { fg = c.yellow },
    diffNewFile   = { fg = c.orange },
    diffFile      = { fg = c.aqua },
    diffLine      = { fg = c.base1 },
    diffIndexLine = { fg = c.purple },

    -- Neogit
    NeogitBranch               = { fg = c.purple },
    NeogitRemote               = { fg = c.voilet },
    NeogitHunkHeader           = { fg = c.fg0 },
    NeogitHunkHeaderHighlight  = { fg = c.blue },
    NeogitDiffContextHighlight = { fg = c.fg2 },
    NeogitDiffDeleteHighlight  = { fg = c.red },
    NeogitDiffAddHighlight     = { fg = c.green },

    -- Neotest
    NeotestPassed       = { fg = c.green },
    NeotestRunning      = { fg = c.yellow },
    NeotestFailed       = { fg = c.red },
    NeotestSkipped      = { fg = c.blue },
    NeotestTest         = { fg = c.base1 },
    NeotestNamespace    = { fg = c.bg_green },
    NeotestFocused      = { fg = c.yellow },
    NeotestFile         = { fg = c.aqua },
    NeotestDir          = { fg = c.blue },
    NeotestBorder       = { fg = c.blue },
    NeotestIndent       = { fg = c.base2 },
    NeotestExpandMarker = { fg = c.base2 },
    NeotestAdapterName  = { fg = c.purple, bold = true },
    NeotestWinSelect    = { fg = c.blue },
    NeotestMarked       = { fg = c.blue },
    NeotestTarget       = { fg = c.blue },

    -- GitGutter
    GitGutterAdd                = { link = "GreenSign" },
    GitGutterChange             = { link = "BlueSign" },
    GitGutterDelete             = { link = "RedSign" },
    GitGutterChangeDelete       = { fg = c.purple },
    GitGutterAddLine            = { link = "diffAdded" },
    GitGutterChangeLine         = { link = "diffChanged" },
    GitGutterDeleteLine         = { link = "diffRemoved" },
    GitGutterChangeDeleteLine   = { fg = c.purple },
    GitGutterAddLineNr          = { fg = c.green },
    GitGutterChangeLineNr       = { fg = c.blue },
    GitGutterDeleteLineNr       = { fg = c.red },
    GitGutterChangeDeleteLineNr = { fg = c.purple },

    -- GitSigns
    GitSignsAdd              = { link = "GreenSign" }, -- diff mode: Added line |diff.txt|
    GitSignsChange           = { link = "BlueSign" }, -- diff mode: Changed line |diff.txt|
    GitSignsDelete           = { link = "RedSign" }, -- diff mode: Deleted line |diff.txt|
    GitSignsAddNr            = { fg = c.green },
    GitSignsChangeNr         = { fg = c.blue },
    GitSignsDeleteNr         = { fg = c.red },
    GitSignsAddLn            = { link = "diffAdded" },
    GitSignsDeleteLn         = { link = "diffRemoved" },
    GitSignsCurrentLineBlame = { fg = c.base1 },

    -- Telescope
    TelescopeMatching     = { fg = c.green, bold = true },
    TelescopeBorder       = { fg = c.base1, bg = options.transparent and c.none or c.bg0 },
    TelescopeNormal       = { fg = c.fg0, bg = options.transparent and c.none or c.bg1 },
    TelescopePromptPrefix = { fg = c.orange },
    TelescopeSelection    = { link = "diffAdded" },

    -- NvimTree
    NvimTreeSymlink                   = { fg = c.fg0 },
    NvimTreeFolderName                = { fg = c.green },
    NvimTreeRootFolder                = { fg = c.base1 },
    NvimTreeFolderIcon                = { fg = c.orange },
    NvimTreeEmptyFolderName           = { fg = c.green },
    NvimTreeOpenedFolderName          = { fg = c.green },
    NvimTreeExecFile                  = { fg = c.fg0 },
    NvimTreeOpenedFile                = { fg = c.fg0 },
    NvimTreeSpecialFile               = { fg = c.fg0 },
    NvimTreeImageFile                 = { fg = c.fg0 },
    NvimTreeMarkdownFile              = { fg = c.fg0 },
    NvimTreeIndentMarker              = { fg = c.base1 },
    NvimTreeGitDirty                  = { fg = c.yellow },
    NvimTreeGitStaged                 = { fg = c.blue },
    NvimTreeGitMerge                  = { fg = c.orange },
    NvimTreeGitRenamed                = { fg = c.purple },
    NvimTreeGitNew                    = { fg = c.aqua },
    NvimTreeGitDeleted                = { fg = c.red },
    NvimTreeLspDiagnosticsError       = { link = "RedSign" },
    NvimTreeLspDiagnosticsWarning     = { link = "YellowSign" },
    NvimTreeLspDiagnosticsInformation = { link = "BlueSign" },
    NvimTreeLspDiagnosticsHint        = { link = "GreenSign" },


    -- Fern
    FernBranchText = { fg = c.blue },

    -- glyph palette
    GlyphPalette1 = { fg = c.red },
    GlyphPalette2 = { fg = c.green },
    GlyphPalette3 = { fg = c.yellow },
    GlyphPalette4 = { fg = c.blue },
    GlyphPalette6 = { fg = c.green },
    GlyphPalette7 = { fg = c.fg0 },
    GlyphPalette9 = { fg = c.red },

    -- Dashboard
    DashboardShortCut = { fg = c.cyan },
    DashboardHeader   = { fg = c.blue },
    DashboardCenter   = { fg = c.purple },
    DashboardFooter   = { fg = c.red, italic = true },

    -- Alpha
    AlphaShortcut    = { fg = c.orange },
    AlphaHeader      = { fg = c.red },
    AlphaHeaderLabel = { fg = c.base2 },
    AlphaFooter      = { fg = c.red, italic = true },
    AlphaButtons     = { fg = c.purple },

    -- WhichKey
    WhichKey          = { fg = c.red },
    WhichKeyGroup     = { fg = c.blue },
    WhichKeyDesc      = { fg = c.purple },
    WhichKeySeparator = { fg = c.green },
    WhichKeyFloat     = { bg = options.transparent and c.none or c.bg1 },
    WhichKeyValue     = { fg = c.fg2 },

    -- LspSaga
    DiagnosticWarning             = { link = "DiagnosticWarn" },
    DiagnosticInformation         = { link = "DiagnosticInfo" },
    LspFloatWinNormal             = { bg = options.transparent and c.none or c.bg1 },
    LspFloatWinBorder             = { fg = c.bg0, bg = c.bg0 },
    LspSagaBorderTitle            = { fg = c.cyan },
    LspSagaCodeActionTitle        = { fg = c.purple, bold = true },
    LspSagaDiagnosticError        = { fg = c.red },
    LspSagaDiagnosticWarn         = { fg = c.yellow },
    LspSagaDiagnosticInfo         = { fg = c.blue },
    LspSagaDiagnosticHint         = { fg = c.green },
    LspSagaErrorTrunCateLine      = { link = "LspSagaDiagnosticError" },
    LspSagaWarnTrunCateLine       = { link = "LspSagaDiagnosticWarn" },
    LspSagaInfoTrunCateLine       = { link = "LspSagaDiagnosticInfo" },
    LspSagaHintTrunCateLine       = { link = "LspSagaDiagnosticHint" },
    LspSagaDiagnosticSource       = { fg = c.orange },
    LspSagaDiagnosticBorder       = { fg = c.orange },
    LspSagaRenameBorder           = { fg = c.purple },
    LspSagaRenamePromptPrefix     = { fg = c.blue },
    LspSagaCodeActionBorder       = { fg = c.purple },
    LspSagaCodeActionTruncateLine = { fg = c.purple },
    LspSagaCodeActionContent      = { fg = c.green },
    LspSagaHoverBorder            = { fg = c.green },
    LspSagaDocTruncateLine        = { fg = c.green },
    LspSagaSignatureHelpBorder    = { fg = c.green },
    LspSagaShTruncateLine         = { fg = c.green },
    LspSagaDefPreviewBorder       = { fg = c.blue },
    DefinitionIcon                = { fg = c.blue },
    LspLinesDiagBorder            = { fg = c.yellow },
    LineDiagTuncateLine           = { fg = c.yellow },
    LspSagaAutoPreview            = { fg = c.green },
    LspSagaFinderSelection        = { fg = c.fg0 },
    ReferencesCount               = { fg = c.base1 },
    DefinitionCount               = { fg = c.base1 },
    TargetFileName                = { fg = c.base1 },
    DefinitionPreviewTitle        = { fg = c.blue, bold = true },
    TargetWord                    = { fg = c.cyan },


    -- BufferLine
    BufferLineIndicatorSelected = { link = "GreenSign" },

    -- Barbar
    BufferCurrent        = { bg = c.fg2, fg = c.fg0 },
    BufferCurrentIndex   = { bg = c.fg2, fg = c.base2 },
    BufferCurrentMod     = { bg = c.fg2, fg = c.yellow },
    BufferCurrentSign    = { bg = c.fg2, fg = c.yellow },
    BufferCurrentTarget  = { bg = c.fg2, fg = c.red },
    BufferVisible        = { bg = c.bg1, fg = c.fg0 },
    BufferVisibleIndex   = { bg = c.bg1, fg = c.yellow },
    BufferVisibleMod     = { bg = c.bg1, fg = c.red },
    BufferVisibleSign    = { bg = c.bg1, fg = c.green },
    BufferVisibleTarget  = { bg = c.bg1, fg = c.red },
    BufferInactive       = { bg = c.bg1, fg = c.base2 },
    BufferInactiveIndex  = { bg = c.bg1, fg = c.base2 },
    BufferInactiveMod    = { bg = c.bg1, fg = c.red },
    BufferInactiveSign   = { bg = c.bg1, fg = c.blue },
    BufferInactiveTarget = { bg = c.bg1, fg = c.red },
    BufferTabpages       = { bg = c.bg1, fg = c.none },
    BufferTabpage        = { bg = c.bg1, fg = c.blue },

    -- Sneak
    Sneak      = { link = "Search" },
    SneakScope = { link = "DiffText" },

    -- Hop
    HopNextKey   = { fg = c.purple, bold = true },
    HopNextKey1  = { fg = c.blue, bold = true },
    HopNextKey2  = { fg = c.aqua },
    HopUnmatched = { fg = c.base3 },

    LeapMatch          = { bg = c.purple, fg = c.fg0, bold = true },
    LeapLabelPrimary   = { fg = c.purple, bold = true },
    LeapLabelSecondary = { fg = c.green, bold = true },
    LeapBackdrop       = { fg = c.base2 },

    LightspeedGreyWash               = { fg = c.base2 },
    LightspeedCursor                 = { link = "Cursor" },
    LightspeedLabel                  = { fg = c.voilet, bold = true, underline = true },
    LightspeedLabelDistant           = { fg = c.green, bold = true, underline = true },
    LightspeedLabelDistantOverlapped = { fg = c.bg_green, underline = true },
    LightspeedLabelOverlapped        = { fg = c.voilet, underline = true },
    LightspeedMaskedChar             = { fg = c.orange },
    LightspeedOneCharMatch           = { bg = c.purple, fg = c.fg0, bold = true },
    LightspeedPendingOpArea          = { bg = c.purple, fg = c.fg0 },
    LightspeedShortcut               = { bg = c.voilet, fg = c.fg0, bold = true, underline = true },
    LightspeedUnlabeledMatch         = { fg = c.aqua, bold = true },

    -- Cmp
    CmpDocumentation         = { fg = c.fg0, bg = options.transparent and c.none or c.bg1 },
    CmpDocumentationBorder   = { fg = c.bg1, bg = options.transparent and c.none or c.bg0 },
    CmpItemKindDefault       = { fg = c.fg_dark, bg = c.none },
    CmpItemAbbrMatch         = { fg = c.green, bold = true },
    CmpItemAbbrMatchFuzzy    = { fg = c.green, bold = true },
    CmpItemAbbr              = { fg = c.fg0 },
    CmpItemAbbrDeprecated    = { fg = c.base1 },
    CmpItemMenu              = { fg = c.fg0 },
    CmpItemKind              = { fg = c.yellow },
    CmpItemKindText          = { fg = c.fg0 },
    CmpItemKindMethod        = { fg = c.green },
    CmpItemKindFunction      = { fg = c.green },
    CmpItemKindConstructor   = { fg = c.green },
    CmpItemKindField         = { fg = c.green },
    CmpItemKindVariable      = { fg = c.blue },
    CmpItemKindClass         = { fg = c.yellow },
    CmpItemKindInterface     = { fg = c.yellow },
    CmpItemKindModule        = { fg = c.yellow },
    CmpItemKindProperty      = { fg = c.blue },
    CmpItemKindUnit          = { fg = c.purple },
    CmpItemKindValue         = { fg = c.purple },
    CmpItemKindEnum          = { fg = c.yellow },
    CmpItemKindKeyword       = { fg = c.red },
    CmpItemKindSnippet       = { fg = c.aqua },
    CmpItemKindColor         = { fg = c.aqua },
    CmpItemKindFile          = { fg = c.aqua },
    CmpItemKindReference     = { fg = c.aqua },
    CmpItemKindFolder        = { fg = c.aqua },
    CmpItemKindEnumMember    = { fg = c.purple },
    CmpItemKindConstant      = { fg = c.blue },
    CmpItemKindStruct        = { fg = c.yellow },
    CmpItemKindEvent         = { fg = c.orange },
    CmpItemKindOperator      = { fg = c.orange },
    CmpItemKindTypeParameter = { fg = c.yellow },

    NavicIconsFile          = { fg = c.fg0 },
    NavicIconsModule        = { fg = c.yellow },
    NavicIconsNamespace     = { fg = c.fg },
    NavicIconsPackage       = { fg = c.fg },
    NavicIconsClass         = { fg = c.orange },
    NavicIconsMethod        = { fg = c.blue },
    NavicIconsProperty      = { fg = c.green },
    NavicIconsField         = { fg = c.green },
    NavicIconsConstructor   = { fg = c.orange },
    NavicIconsEnum          = { fg = c.orange },
    NavicIconsInterface     = { fg = c.orange },
    NavicIconsFunction      = { fg = c.blue },
    NavicIconsVariable      = { fg = c.purple },
    NavicIconsConstant      = { fg = c.purple },
    NavicIconsString        = { fg = c.green },
    NavicIconsNumber        = { fg = c.orange },
    NavicIconsBoolean       = { fg = c.orange },
    NavicIconsArray         = { fg = c.orange },
    NavicIconsObject        = { fg = c.orange },
    NavicIconsKey           = { fg = c.purple },
    NavicIconsKeyword       = { fg = c.purple },
    NavicIconsNull          = { fg = c.orange },
    NavicIconsEnumMember    = { fg = c.green },
    NavicIconsStruct        = { fg = c.orange },
    NavicIconsEvent         = { fg = c.orange },
    NavicIconsOperator      = { fg = c.fg0 },
    NavicIconsTypeParameter = { fg = c.green },
    NavicText               = { fg = c.fg0 },
    NavicSeparator          = { fg = c.fg0 },

    -- navic
    IndentBlanklineContextChar = { fg = c.base1 },
    --[[ IndentBlanklineChar               = { link = "LineNr" }, ]]
    --[[ IndentBlanklineSpaceChar          = { link = "LineNr" }, ]]
    --[[ IndentBlanklineSpaceCharBlankline = { link = "LineNr" }, ]]

    -- Scrollbar
    ScrollbarHandle       = { fg = c.none, bg = c.bg1 },
    ScrollbarSearchHandle = { fg = c.orange, bg = c.bg1 },
    ScrollbarSearch       = { fg = c.orange, bg = c.none },
    ScrollbarErrorHandle  = { fg = c.red, bg = c.bg1 },
    ScrollbarError        = { fg = c.red, bg = c.none },
    ScrollbarWarnHandle   = { fg = c.yellow, bg = c.bg1 },
    ScrollbarWarn         = { fg = c.yellow, bg = c.none },
    ScrollbarInfoHandle   = { fg = c.green, bg = c.bg1 },
    ScrollbarInfo         = { fg = c.green, bg = c.none },
    ScrollbarHintHandle   = { fg = c.blue, bg = c.bg1 },
    ScrollbarHint         = { fg = c.blue, bg = c.none },
    ScrollbarMiscHandle   = { fg = c.purple, bg = c.bg1 },
    ScrollbarMisc         = { fg = c.purple, bg = c.none },

    -- Yanky
    YankyPut    = { link = "IncSearch" },
    YankyYanked = { link = "IncSearch" },

    -- Notify
    NotifyERRORBorder = { fg = c.red },
    NotifyWARNBorder  = { fg = c.yellow },
    NotifyINFOBorder  = { fg = c.green },
    NotifyDEBUGBorder = { fg = c.base1 },
    NotifyTRACEBorder = { fg = c.purple },
    NotifyERRORIcon   = { fg = c.red },
    NotifyWARNIcon    = { fg = c.yellow },
    NotifyINFOIcon    = { fg = c.green },
    NotifyDEBUGIcon   = { fg = c.base1 },
    NotifyTRACEIcon   = { fg = c.purple },
    NotifyERRORTitle  = { fg = c.red },
    NotifyWARNTitle   = { fg = c.yellow },
    NotifyINFOTitle   = { fg = c.green },
    NotifyDEBUGTitle  = { fg = c.base1 },
    NotifyTRACETitle  = { fg = c.purple },

    -- Mini
    MiniCompletionActiveParameter = { underline = true },
    MiniCursorword                = { bg = c.fg2 },
    MiniCursorwordCurrent         = { bg = c.fg2 },
    MiniIndentscopeSymbol         = { fg = c.blue },
    MiniIndentscopePrefix         = { nocombine = true }, -- Make it invisible
    MiniJump                      = { bg = c.purple, fg = "#ffffff" },
    MiniJump2dSpot                = { fg = c.purple, bold = true, nocombine = true },
    MiniStarterCurrent            = { nocombine = true },
    MiniStarterFooter             = { fg = c.yellow, italic = true },
    MiniStarterHeader             = { fg = c.blue },
    MiniStarterInactive           = { fg = c.base1, style = options.styles.comments },
    MiniStarterItem               = { fg = c.fg0, bg = options.transparent and c.none or c.bg },
    MiniStarterItemBullet         = { fg = c.base2 },
    MiniStarterItemPrefix         = { fg = c.red },
    MiniStarterSection            = { fg = c.blue },
    MiniStarterQuery              = { fg = c.green },
    MiniStatuslineDevinfo         = { fg = c.fg1, bg = c.bg1 },
    MiniStatuslineFileinfo        = { fg = c.fg1, bg = c.bg1 },
    MiniStatuslineFilename        = { fg = c.fg1, bg = c.fg2 },
    MiniStatuslineInactive        = { fg = c.blue, bg = c.bg1 },
    MiniStatuslineModeCommand     = { fg = "BLACK", bg = c.yellow, bold = true },
    MiniStatuslineModeInsert      = { fg = "BLACK", bg = c.green, bold = true },
    MiniStatuslineModeNormal      = { fg = "BLACK", bg = c.blue, bold = true },
    MiniStatuslineModeOther       = { fg = "BLACK", bg = c.aqua, bold = true },
    MiniStatuslineModeReplace     = { fg = "BLACK", bg = c.red, bold = true },
    MiniStatuslineModeVisual      = { fg = "BLACK", bg = c.magenta, bold = true },
    MiniSurround                  = { bg = c.orange, fg = "BLACK" },
    MiniTablineCurrent            = { fg = c.fg1, bg = c.fg2 },
    MiniTablineFill               = { bg = "BLACK" },
    MiniTablineHidden             = { fg = "BLACK", bg = c.bg1 },
    MiniTablineModifiedCurrent    = { fg = c.red, bg = c.fg2 },
    MiniTablineModifiedHidden     = { bg = c.bg1, fg = c.bg_red },
    MiniTablineModifiedVisible    = { fg = c.yellow, bg = c.bg1 },
    MiniTablineTabpagesection     = { bg = c.bg1, fg = c.none },
    MiniTablineVisible            = { fg = c.fg, bg = c.bg1 },
    MiniTestEmphasis              = { bold = true },
    MiniTestFail                  = { fg = c.red, bold = true },
    MiniTestPass                  = { fg = c.green, bold = true },
    MiniTrailspace                = { bg = c.red },

    -- Noice

    NoiceCompletionItemKindDefault       = { fg = c.fg2, bg = c.none },
    NoiceCompletionItemKindKeyword       = { fg = c.cyan, bg = c.none },
    NoiceCompletionItemKindVariable      = { fg = c.magenta, bg = c.none },
    NoiceCompletionItemKindConstant      = { fg = c.magenta, bg = c.none },
    NoiceCompletionItemKindReference     = { fg = c.magenta, bg = c.none },
    NoiceCompletionItemKindValue         = { fg = c.magenta, bg = c.none },
    NoiceCompletionItemKindFunction      = { fg = c.blue, bg = c.none },
    NoiceCompletionItemKindMethod        = { fg = c.blue, bg = c.none },
    NoiceCompletionItemKindConstructor   = { fg = c.blue, bg = c.none },
    NoiceCompletionItemKindClass         = { fg = c.orange, bg = c.none },
    NoiceCompletionItemKindInterface     = { fg = c.orange, bg = c.none },
    NoiceCompletionItemKindStruct        = { fg = c.orange, bg = c.none },
    NoiceCompletionItemKindEvent         = { fg = c.orange, bg = c.none },
    NoiceCompletionItemKindEnum          = { fg = c.orange, bg = c.none },
    NoiceCompletionItemKindUnit          = { fg = c.orange, bg = c.none },
    NoiceCompletionItemKindModule        = { fg = c.yellow, bg = c.none },
    NoiceCompletionItemKindProperty      = { fg = c.green1, bg = c.none },
    NoiceCompletionItemKindField         = { fg = c.green1, bg = c.none },
    NoiceCompletionItemKindTypeParameter = { fg = c.green1, bg = c.none },
    NoiceCompletionItemKindEnumMember    = { fg = c.green1, bg = c.none },
    NoiceCompletionItemKindOperator      = { fg = c.green1, bg = c.none },
    NoiceCompletionItemKindSnippet       = { fg = "BLACK", bg = c.none },
  }

  theme.defer = {}

  if options.hide_inactive_statusline then
    local inactive = { underline = true, bg = c.none, fg = c.bg, sp = c.border }

    -- StatusLineNC
    theme.highlights.StatusLineNC = inactive

    -- LuaLine
    for _, section in ipairs({ "a", "b", "c" }) do
      theme.defer["lualine_" .. section .. "_inactive"] = inactive
    end

    -- mini.statusline
    theme.highlights.MiniStatuslineInactive = inactive
  end

  --[[ options.on_highlights(theme.highlights, theme.colors) ]]

  return theme
end

return M
