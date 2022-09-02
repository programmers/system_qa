from pathlib import Path

class CallWriter:

    def __init__(self, playbooks, tags, selected_os):
        self.playbooks = playbooks
        self.tags = tags
        self.selected_os = selected_os

    def write(self):
        entry_file = str(Path(f'src/ansible/playbooks/{self.selected_os}/run_playbooks.yml').resolve())

        tags_delim = ','.join(self.tags)

        # The string that is placed into `run_ansible.sh`... which actually runs Ansible
        call_str = ' '.join([
            'sudo',
            'ANSIBLE_LOCALHOST_WARNING=false',
            'ansible-playbook',
            entry_file,
            f'--tags="{tags_delim}"'
        ])

        with open("src/install/run_ansible.sh", "w") as f:
            f.write(f"#!/bin/bash\n{call_str}")
