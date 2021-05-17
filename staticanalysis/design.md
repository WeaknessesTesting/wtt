# Desgin Experiment

## Step 1
	
	We execute static analysis throughout the selected projects
	We select the main files reported on static analysis
	For largest projects, we select one product inside of the project

## Step 2
	
	We perform the static analysis by the following command: 
	
	flawfinder -m 3 -F --followdotdir SA/ > staticanalysis.txt

	In this sense, we set the minimum level of the hits and select the kinds of warnings.

	Moreover, we select the warnings of the largest files.

 -m X | --minlevel=X
              Set minimum risk level to X for inclusion in hitlist.  This
              can be from 0 (``no risk'')  to  5  (``maximum  risk'');  the
              default is 1.

 --falsepositive | -F
              Do not include hits that are likely to be false  positives.
              Currently,  this  means  that function names are ignored if
              they're not followed by "(", and that declarations of char-
              acter  arrays  aren't noted.  Thus, if you have use a vari-
              able named "access" everywhere, this will eliminate  refer-
              ences  to  this ordinary variable.  This isn't the default,
              because this  also  increases  the  likelihood  of  missing
              important  hits;  in  particular, function names in #define
              clauses and calls through function pointers will be missed.
 --followdotdir
              Follow directories whose names begin with ".".
              Normally they are ignored.