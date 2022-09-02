from pathlib import Path

class PlaybooksEntryWriter:

    def __init__(self, playbooks, tags, selected_os):
        self.playbooks = playbooks
        self.tags = tags
        self.selected_os = selected_os

    def write(self):
        playbooks_file = str(Path(f"src/ansible/playbooks/{self.selected_os}/run_playbooks.yml").resolve())
        with open(playbooks_file, "w") as file:
            contents = "---"

            # "selected" by default, no in the CLI "ui"
            contents += '\n- import_playbook: "General.yml"'

            # no use in bringing in PyYAML for this simple task...
            for playbook in self.playbooks:

                # `import_playbook` errors when a playbook's name has spaces. After
                # many attempts to fix it, "'Wrapping Like So Works.yml'"
                contents += f'\n- import_playbook: "\'{playbook}.yml\'"'

            file.write(contents)

