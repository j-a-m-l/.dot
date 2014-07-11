import time
import i3

# TODO window events...

# TODO configurable
focused_border = 30
focused_inactive_border = 10
unfocused_border = 0

def set_border(client, size):
    """
    Changes a client border using an integer
    """
    i3.border('pixel'+ str(size))

def focus(event):

    # Restore old focused window TODO first workspace
    if 'old' in event:
        unfocused = i3.filter(tree=event['old'], nodes=[])
        for window in unfocused:
            set_border(window, focused_inactive_border)

    # Change new focused window
    if 'current' in event:
        unfocused = i3.filter(tree=event['current'], nodes=[], focused=False)
        for window in unfocused:
            set_border(window, unfocused_border)

        focused = i3.filter(tree=event['current'], nodes=[], focused=True)
        for window in focused:
            set_border(window, focused_border)

def on(event, data, subscription):
    """
    Workspace event handler
    """
    if event['change'] == 'focus':
        focus(event)

def active():
    print('Starting subscription to i3')
    subscription = i3.Subscription(on, 'workspace')

    try:
        while True:
            time.sleep(1)
    except KeyboardInterrupt:
        print('Closing subscription to i3')
    finally:
        subscription.close()

if __name__ == '__main__':
    active()
