{ fonts, pkgs, ... }:

{
  fonts.fonts = with pkgs; [
    # 3270font # causes "undefiend variable 'font' for some reason"
    agave
    aileron
    alegreya
    alegreya-sans
    amiri
    andagii
    andika
    ankacoder
    #anonymous-pro # undefined variable
    #arkpandora # undefined variable
    #arphic # undefined variable
    atkinson-hyperlegible
    aurulent-sans
    b612
    babelstone-han
    baekmuk-ttf
    #bakoma-ttf # undefined variable
    barlow
    behdad-fonts
    #bront # undefined variable
    cabin
    caladea
    #camingo-code # unfree license (cc-by-nd-30)
    cantarell-fonts
    carlito
    cascadia-code
    charis-sil
    cherry
    #chonburi # undefined variable
    clearlyU
    #cm-unicode # undefined variable
    cnstrokeorder
    comfortaa
    comic-neue
    comic-relief
    cooper-hewitt
    #corefonts # unfree license (unfreeRedistributable)
    courier-prime
    cozette
    creep
    crimson
    culmus
    curie
    d2coding
    #dejavu-fonts
    dejavu_fonts
    #dina
    dina-font
    #dosemu-fonts
    dosemu_fonts
    dosis
    doulos-sil
    eb-garamond
    #edukai # unfree license (cc-by-nd-30)
    #eduli # unfree license (cc-by-nd-30)
    #edusong # unfree license (cc-by-nd-30)
    # note: if you use cc-nd you are a pussy ass motherfucker
    edwin
    efont-unicode
    emacs-all-the-icons-fonts
    emojione
    encode-sans
    envypn-font
    #et-book
    etBook # what the actual fuck are these naming inconsistencies in nixpkgs??
    eunomia
    f5_6
    fantasque-sans-mono
    ferrum
    fira
    fira-code
    fira-mono
    fixedsys-excelsior
    #font-awesome-5
    font-awesome
    fraunces
    #freefont-ttf
    freefont_ttf
    gandom-fonts
    #gdouros # undefined variable
    gelasio
    gentium
    gentium-book-basic
    go-font
    gohufont
    google-fonts
    #gubbi # undefined variable
    #gyre
    gyre-fonts
    #hack
    hack-font # bruh
    hanazono
    hasklig
    #helvetica-neue-lt-std # unfree license (unfree)
    # it's literally called unfree wtf
    hermit
    #hyperscrypt
    hyperscrypt-font
    ia-writer-duospace
    ibm-plex
    i-dot-ming
    #inconsolata
    #input-fonts # unfree license (unfree)
    #inriafonts
    #inter # something definition of option fonts.fonts.[] no longer of type path or smth
    #iosevka
    #ipaexfont
    #ipafont
    #ir-standard-fonts # unfree license (unfree)
    iwona
    jetbrains-mono
    jost
    #joypixels # unfree license (unknown)
    # lol?
    julia-mono
    junicode
    #kanit
    kanit-font
    kanji-stroke-order-font
    #kawkab-mono
    kawkab-mono-font
    kochi-substitute
    #kochi-substitute-naga10 # unfree license (unfreeRedistributable)
    kreative-square-fonts
    lalezar-fonts
    last-resort
    lato
    league-of-moveable-type
    liberastika
    #liberation-fonts
    liberation_ttf # why
    liberation-sans-narrow
    libertine
    libertinus
    libre-baskerville
    libre-bodoni
    libre-caslon
    libre-franklin
    line-awesome
    lmmath
    lmodern
    lohit-fonts
    luculent
    manrope
    marathi-cursive
    material-design-icons
    material-icons
    medio
    merriweather
    merriweather-sans
    meslo-lg
    meslo-lgs-nf
    migmix
    migu
    mno16
    monoid
    mononoki
    montserrat
    #mph-2b-damase # this literally isn't even a font wtf
    mplus-outline-fonts
    mro-unicode
    myrica
    nafees
    nahid-fonts
    nanum-gothic-coding
    #national-park
    national-park-typeface
    #navilu
    navilu-font
    nerdfonts
    nika-fonts
    #norwester
    norwester-font
    noto-fonts
    ocr-a
    office-code-pro
    oldsindhi
    oldstandard
    open-dyslexic
    open-fonts
    #openmoji
    openmoji-color
    openmoji-black
    open-sans
    orbitron
    overpass
    oxygenfonts
    parastoo-fonts
    #paratype-pt
    paratype-pt-sans
    paratype-pt-mono
    paratype-pt-serif
    pecita
    penna
    poly
    powerline-fonts
    powerline-symbols
    profont
    proggyfonts
    public-sans
    quattrocento
    quattrocento-sans
    raleway
    recursive
    #redhat-official
    redhat-official-fonts
    rhodium-libre
    ricty
    rictydiminished-with-firacode
    roboto
    roboto-mono
    roboto-slab
    rounded-mgenplus
    route159
    rubik
    sahel-fonts
    samim-fonts
    sampradaya
    sarasa-gothic
    scheherazade
    scientifica
    seshat
    shabnam-fonts
    shrikhand
    signwriting
    siji
    source-code-pro
    #source-han
    source-han-sans
    source-han-mono
    source-han-serif
    source-han-code-jp
    source-sans
    source-serif
    spleen
    stix-otf
    stix-two
    sudo
    #tai-languages # undefined variable
    tamsyn
    tamzen
    #tempora-lgc
    tempora_lgc # nixpkgs consistent naming challenge
    tenderness
    #terminus-font
    terminus_font
    #terminus-font-ttf
    terminus_font_ttf
    termsyn
    #tewi
    tewi-font
    tex-gyre
    tex-gyre-math
    theano
    times-newer-roman
    tipa
    tlwg
    tt2020
    #ttf-bitstream-vera
    ttf_bitstream_vera
    ttf-envy-code-r
    ttf-tw-moe
    twemoji-color-font
    twitter-color-emoji
    #ubuntu-font-family
    ubuntu_font_family
    ucs-fonts
    ultimate-oldschool-pc-font-pack
    undefined-medium
    unifont
    unifont_upper
    uni-vga
    unscii
    uw-ttyp0
    vazir-code-font
    vazir-fonts
    vdrsymbols
    vegur
    victor-mono
    #vista-fonts
    vistafonts
    #vista-fonts-chs
    vistafonts-chs
    #vista-fonts-cht
    vistafonts-cht
    vollkorn
    weather-icons
    work-sans
    #wqy-microhei
    wqy_microhei
    #wqy-zenhei
    wqy_zenhei
    xits-math
    xkcd-font
    yanone-kaffeesatz
    zilla-slab
  ];
}
# life is suffering
