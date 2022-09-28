filebot -rename -r "%1" --format "{plex}" -non-strict -get-subtitles --apply artwork --lang English
move %1 D:\Downloads\_complete\_clean
pause

# https://www.filebot.net/forums/viewtopic.php?t=215
# filebot -script fn:amc --output "X:/Media" --action duplicate --conflict skip -non-strict --log-file amc.log --def unsorted=y music=y artwork=y "ut_label=%L" "ut_state=%S" "ut_title=%N" "ut_kind=%K" "ut_file=%F" "ut_dir=%D"
