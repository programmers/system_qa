import sys

from cli.prompt import Prompt
from install.file_writers.call_writer import CallWriter
from install.file_writers.entry_writer import PlaybooksEntryWriter

def main():
    # bash script already performs validation ahead of this
    selected_os = sys.argv[1:][0]

    try:
        prompt = Prompt()
        playbooks, tags = prompt.get_results()
    except KeyboardInterrupt:
        sys.exit(1)
    except:
        sys.exit(1)

    if playbooks:
        PlaybooksEntryWriter(playbooks, tags, selected_os).write()
        CallWriter(playbooks, tags, selected_os).write()

        sys.exit(0)

    sys.exit(1)

main()