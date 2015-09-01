from argparse import ArgumentParser
import os
import re
import i3ipc

def window_classes(window_id):
    cmd = 'xprop -id '+ str(window_id)
    properties = os.popen(cmd).read()

    regex = re.compile(r'^WM_CLASS\(STRING\) = (.*)$', re.MULTILINE)
    match = regex.search(properties).groups()
    return match[0].replace('"', '').split(', ')

def real_pid_for_window(window_id, parent_id):
    connection = i3ipc.Connection()
    tree = connection.get_tree()

    # Groups the windows with the expected parent PID
    windows = []
    for node in tree.leaves():
        wid = node.window

        # TODO regex
        cmd = 'xprop -id '+ str(wid) +' | grep -m 1 PID | cut -d " " -f 3'
        pid = os.popen(cmd).read().strip()

        if parent_id == pid:
            windows.append(wid)

    children = os.popen('pgrep -P '+ parent_id).read().split()

    # Without children it's not necessary to infer anything
    if not len(children):
        return parent_id

    classes = window_classes(window_id)
    if 'gnome-terminal' in classes:
        # First one is gnome-pty-helper
        sorted_children = children[1:]
    else:
        sorted_children = children

    sorted_windows = sorted(windows)
    children_wids = dict(zip(sorted_windows, sorted_children))

    # TODO debug option
    with open('/tmp/i3_py_shell', 'w') as log:
        if not len(children):
            log.write('CHILDREN: '+ str(children) +"\n")

        log.write('Children: '+ str(children) +"\n")
        log.write('Sorted children: '+ str(sorted_children) +"\n")
        log.write('Windows: '+ str(windows) +"\n")
        log.write('Sorted windows: '+ str(sorted_windows) +"\n")

        for wid in children_wids.keys():
            log.write(str(wid) +" ~> "+ str(children_wids[wid]) +"\n")
        log.write("\n")

        if 'gnome-terminal' in classes:
            log.write("Gnome-terminal... for "+ str(window_id) +"\n")
        else:
            log.write("Classes: "+ str(classes) +"\n")

        log.write(children_wids[window_id])

    return children_wids[window_id]


if __name__ == '__main__':
    # TODO instructions
    parser = ArgumentParser(prog='current.py')

    parser.add_argument('--pid', dest='pid')
    parser.add_argument('--wid', dest='wid')

    args = parser.parse_args()
    real_pid = real_pid_for_window(int(args.wid), args.pid)

    print(real_pid)
