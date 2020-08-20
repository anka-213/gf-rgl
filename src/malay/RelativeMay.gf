concrete RelativeMay of Relative = CatMay ** open
  ResMay, Prelude in {


lin
  --  : Cl -> RCl ;            -- such that John loves her
  -- RelCl cl = ;

  -- : RP -> VP -> RCl ;
  RelVP rp vp = {
    subj = rp.s ;
    pred = \\per => vp.s ! Root ;
    } ;

  -- : RP -> ClSlash -> RCl ; -- who I went with
  RelSlash rp cls = {
    subj = rp.s            -- yang
        ++ cls.subj ;      -- saya
    pred = \\per,pol =>
           cls.pred ! Root ! pol   -- ikut sama
      ++ case cls.c2.isPoss of {
        True => [] ;
        False => cls.c2.obj ! per} -- dengan+nya (depends on the head, not known yet)
    } ;

  -- : RP ;
  IdRP = {s = "yang"} ;

  -- Mintz page 49: Saya jumpa orang /yang kaki+nya/ patah.
  --               'I met a man /whose foot/ was broken.'
  -- : Prep -> NP -> RP -> RP ;  -- the mother of whom
  -- FunRP prep np rp = {} ;

}