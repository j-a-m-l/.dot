import os
import re
from datetime import datetime

def current_line(vim):
    return vim.current.window.cursor[0]

def buffer_text(vim, line):
    return vim.current.window.buffer[line - 1]

#
# humancal
#

# TODO customizable
humancal_snippets_path = os.path.expanduser('~/dot.private/vim/config/plugins/UltiSnips/humancal1/')
humancal_snippets_file_prefix = '__'

def generate_snippets_file(calendar, snippets):
    snippets_file = "{}{}{}.snippets".format(humancal_snippets_path, humancal_snippets_file_prefix, calendar)

    content = "# Automatically generated snippets!\n"

    content += """
global !p
from ultisnips_helpers import *
endglobal
"""

    # content += "\nsnippet /(\d{2}:\d{2})? *"+ calendar +"/ \""+ calendar.capitalize() +"\" r\n`!p snip.rv = event_start(match.group(1), '"+ calendar +"')`\nendsnippet\n"

    # Python 3
    for key, (description, text) in snippets.items():
        content += """
context "event_context(snip, '{}', '{}')"
snippet {} "{}: {}" e
{}`!p if not snip.c: snip.rv = event_end(vim, snip)`
endsnippet
""".format(calendar, key, key, calendar, description, text)

    with open(snippets_file, 'w+') as snippet_file:
        snippet_file.write(content)
    print(content)

def event_context(snip, calendar, snippet):
    return re.match("\d{2}:\d{2} \["+ calendar +"\] "+ snippet, snip.buffer[snip.line])

# TODO use the previous event as start
def event_start(time, calendar):
	if not time:
		time = datetime.now().strftime('%H:%M')
	return time +' ['+ calendar +'] '

# TODO use the next event as end
def event_end(vim, snip):
    text = ""
    next_line_text = buffer_text(vim, current_line(vim) + 1)

    # Is current event open?
    if not re.match('\d{2}:\d{2}', next_line_text):

        current_line_text = buffer_text(vim, current_line(vim))
        now = datetime.now().strftime('%H:%M')

        # Is current event occurring now? TODO approximations instead of precision
        m = re.match('^(\d{2}:\d{2}).*', current_line_text)
        if m and m.group(1) == now:
            text += "\n"
        else:
            text += "\n{}\n\n".format(now)

    return text
