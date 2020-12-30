#!/usr/bin/env ruby
# code by fre3vil

# Describes ranges of symbols
# You can enumerate symbols explicitly
# /[abc]/ # 'a' or 'b' or 'c'

# Or use ranges
# /[a-z]/ # from 'a' to 'z'

# It is possible to combine ranges and single symbols
# /[a-cz]/ # 'a' or 'b' or 'c' or 'z'

# Leading dash (-) is treated as character
# /[-a-c]/ # '-' or 'a' or 'b' or 'c'

# Classes can be negative when preceding symbols with ^
# /[^a-c]/ # Not 'a', 'b' or 'c'

# There are some shortcuts for widespread classes and special characters, plus line endings
# ^ # Start of line
# $ # End of line
# \A # Start of string
# \Z # End of string, excluding any new line at the end of string
# \z # End of string
# .  # Any single character
# \s # Any whitespace character
# \S # Any non-whitespace character
# \d # Any digit
# \D # Any non-digit
# \w # Any word character (letter, number, underscore)
# \W # Any non-word character
# \b # Any word boundary
# \n will be understood simply as new line

# To escape any reserved character, such as / or [] and others use backslash (left slash)
# \\ # => \
# \[\] # => []
