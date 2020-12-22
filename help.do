{smcl}
{* *! version 1.0.0 December 12, 2020}
{title:Title}

{p 4 4 2}
{cmdab:recocl} {hline 1} Recodes municipality code for Chile (CL)

{marker syntax}{...}
{title:Syntax}

{p 4 4 2}
{cmdab:recocl}
codevar{cmd:,}
{it:year(year)}
[{it:option}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:Main}
{synopt:{cmdab:y:ear(}year{cmd:)}} Specifies the year of municipal code change (2007 or 2017). This is required.
{p_end}
{synopt:{cmdab:gen:erate(}name{cmd:)}} Specifies the name of the new variable. Default is overwrite the code-variable.
{p_end}

{pstd}
{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}

{marker description}{...}
{title:Description}
{pstd}

{pstd}
 {cmd:recocl}  
 
{pstd} 
Since xxx, Chile has changed its municipal code a couple of times. Currently, not all databases have the most current 
municipality code, therefore it is necessary to carry out a recoding of the municipality code of some municipality in 
region 1 and 8. This is exactly what {cmdab:recocl} does, recode the 21 municipalities that become region 16 in 2017 
and recode the 4 municipalities that become region 15 in 2008. The list of municipalities are:

     {txt}
             {c TLC}{hline 21}{c TRC}
             {c |}{res}     Ñuble  2017     {txt}{c |}
             {c |}{res} Old Code   New Code{txt} {c |}
             {c LT}{hline 21}{c RT}
             {c |}   8401  ->  16101   {c |}
             {c |}   8402  ->  16102   {c |}
             {c |}   8406  ->  16103   {c |}
             {c |}   8407  ->  16104   {c |}	
             {c |}   8410  ->  16105   {c |}	
             {c |}   8411  ->  16106   {c |}	
             {c |}   8413  ->  16107   {c |}	
             {c |}   8418  ->  16108   {c |}	
             {c |}   8421  ->  16109   {c |}	
             {c |}   8414  ->  16201   {c |}	
             {c |}   8403  ->  16202   {c |}	
             {c |}   8404  ->  16203   {c |}
             {c |}   8408  ->  16204   {c |}	
             {c |}   8412  ->  16205   {c |}	
             {c |}   8415  ->  16206   {c |}
             {c |}   8420  ->  16207   {c |}	
             {c |}   8416  ->  16301   {c |}	
             {c |}   8405  ->  16302   {c |}
             {c |}   8409  ->  16303   {c |}	
             {c |}   8417  ->  16304   {c |}	
             {c |}   8419  ->  16305   {c |}
             {c BLC}{hline 21}{c BRC}
			 
    {txt}
             {c TLC}{hline 21}{c TRC}
             {c |}{res}Arica Parinacota 2007{txt}{c |}
             {c |}{res} Old Code   New Code{txt} {c |}
             {c LT}{hline 21}{c RT}
             {c |}   1201  ->  15101   {c |}
             {c |}   1202  ->  15102   {c |}
             {c |}   1301  ->  15201   {c |}
             {c |}   1302  ->  15202   {c |}	
             {c BLC}{hline 21}{c BRC}

    {txt}
             {c TLC}{hline 21}{c TRC}
             {c |}{res}   Los  Ríos  2007   {txt}{c |}
             {c |}{res} Old Code   New Code{txt} {c |}
             {c LT}{hline 21}{c RT}
             {c |}  10501  ->  14104   {c |}
             {c |}  10502  ->  14102   {c |}
             {c |}  10506  ->  14103   {c |}
             {c |}  10507  ->  14104   {c |}
             {c |}  10508  ->  14105   {c |}	
             {c |}  10509  ->  14106   {c |}	
             {c |}  10510  ->  14107   {c |}	
             {c |}  10511  ->  14108   {c |}	
             {c |}  10504  ->  14201   {c |}
             {c |}  10503  ->  14202   {c |}	
             {c |}  10505  ->  14203   {c |}	
             {c |}  10512  ->  14204   {c |}	
             {c BLC}{hline 21}{c BRC}
			 
{marker examples}{...}
{title:Examples}
{pstd}

{pstd}
If we have a municipal database from 2015 and we want to do some merge with a database from 2018 
we need recode the municipal variable. We must to know the year of change that we need to apply, in this case {cmdab:2017}:

{pstd}
.recocl comuna, y(2017) gen(newcode)

{pstd}
Actually is not necessary create a new variable, we can overwrite.

{pstd}
.recocl comuna, y(2017)

{title:Author}
{p}

Daniel Pailañir
Email {browse "mailto:daniel.pailanir@gmail.com":daniel.pailanir@gmail.com}
