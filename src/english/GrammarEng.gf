--# -path=.:../abstract:../common:prelude

concrete GrammarEng of Grammar =
  NounEng,
  VerbEng,
  AdjectiveEng,
  AdverbEng,
  NumeralEng,
  SentenceEng,
  QuestionEng,
  RelativeEng,
  ConjunctionEng,
  PhraseEng,
  TextX - [Pol,PPos,PNeg,SC,CAdv,Temp,Ant,AAnter],
  StructuralEng,
  IdiomEng,
  TenseX - [Pol,PPos,PNeg,SC,CAdv,Temp,Ant,ASimul,AAnter,TTAnt],
  NamesEng
  ** open ResEng, Prelude in {

flags startcat = Phr ; unlexer = text ; lexer = text ;

lin
  PPos = {s = [] ; p = CPos} ;
  PNeg = {s = [] ; p = CNeg True} ; -- contracted: don't
  ASimul = {s = []} ** {a = Simul; have = ""} ;
  AAnter = {s = []} ** {a = Anter; have = "have"} ;
  TTAnt t a = {s = t.s ++ a.s ; t = t.t ; a = a.a; have = a.have} ;


} ;
