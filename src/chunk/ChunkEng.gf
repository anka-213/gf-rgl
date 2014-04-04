concrete ChunkEng of Chunk = CatEng, ExtensionsEng [VPS,VPI] ** 
  ChunkFunctor with (Syntax = SyntaxEng), (Extensions = ExtensionsEng) **
  open 
    SyntaxEng, (E = ExtensionsEng), Prelude, 
    (R = ResEng), (P = ParadigmsEng) in {

lin
  NP_Acc_Chunk np = ss (np.s ! R.NPAcc) ;
  NP_Gen_Chunk np = ss (np.s ! R.NCase R.Gen) | ss (np.s ! R.NPNomPoss) ;

oper
  emptyNP = mkNP (P.mkPN []) ;

lin
  copula_inf_Chunk = ss "to be" | ss "be" ;
  refl_SgP1_Chunk = ss "myself" ;
  refl_SgP2_Chunk = ss "yourself" ;
  refl_SgP3_Chunk = ss "himself" | ss "herself" | ss "itself" ;
  refl_PlP1_Chunk = ss "ourselves" ;
  refl_PlP2_Chunk = ss "yourselves" ;
  refl_PlP3_Chunk = ss "themselves" ;
  neg_Chunk = ss "not" | ss "doesn't" | ss "don't" ;
  copula_Chunk = ss "is" | ss "are" | ss "am" ;
  copula_neg_Chunk = ss "isn't" | ss "aren't" ;
  past_copula_Chunk = ss "was" | ss "were" ;
  past_copula_neg_Chunk = ss "wasn't" | ss "weren't" ;
  future_Chunk = ss "will" ;
  future_neg_Chunk = ss "won't" ;
  cond_Chunk = ss "would" ;
  cond_neg_Chunk = ss "wouldn't" ;
  perfect_Chunk = ss "has" | ss "have" ;
  perfect_neg_Chunk = ss "hasn't" | ss "haven't" ;
  past_perfect_Chunk = ss "had" ;
  past_perfect_neg_Chunk = ss "hadn't" ;
  

}