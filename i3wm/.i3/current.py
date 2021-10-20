from argparse import ArgumentParser
import i3ipc


def current():
    connection = i3ipc.Connection()
    print(connection.get_tree().find_focused().window)


def current_daemon():

    def on_focus(self, event):
        print(str(event.container.props.window))

    print('Starting subscription to i3')
    connection = i3ipc.Connection()
    connection.on('window::focus', on_focus)

    try:
        connection.main()
    except KeyboardInterrupt:
        print('Keyboard interruption detected')
    finally:
        print('Closing subscription to i3')
        connection.main_quit()


if __name__ == '__main__':
    current()
