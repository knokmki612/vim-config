if did_filetype()
	finish
endif
if getline(1) =~ '^#!.*\<dash\>'
	set filetype=sh
endif
