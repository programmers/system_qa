import yaml

from collections import defaultdict
from pathlib import Path
from urllib.parse import urlparse

# Tomark is used to take a dict and turn it into a standard markdown table.
# Install it with `python -m pip install tomark` before running this script.
from tomark import Tomark

class SoftwareDocsGenerator:

    playbooks = [
        "General",
        "Python",
        "JavaScript and Node",
        "Web Tools",
        "Version Control",
        "Database Clients",
        "Containers and VMs",
        "Scientific",
        "Cloud Tools",
        "Java",
        "C and Cpp",
        "Go",
        "PHP",
        "Rust",
        "Ruby"
    ]

    # TODO: redo this... https://github.com/programmers/system_qa/issues/1
    def format_license_links(self, links):
        # Forces "links" to be a list, even if it's a single string.
        # This allows for sharing of the formatting logic/is simple.
        lic_links = [links] if type(links) != list else links

        lic_markdown = ""
        for l in lic_links:
            # The .splits are for getting the license type. It comes in like so
            # (see the # part): "{some_web_url}/LICENSE-MIT#MIT". This allows us
            # to make the link say "MIT". Each link has this has value. 

            lic_split = l.split('#')
            lic_addr = lic_split[0]
            lic_type = lic_split[1]

            lic_markdown += f"[{lic_type}]({lic_addr})<br/>"
        
        return lic_markdown

    def generate(self):
        yaml_data = yaml.safe_load(Path('../software_docs.yml').read_text())
        table_data = defaultdict(list)

        for name, doc in yaml_data.items():
            name = f"[{name}]({doc['website']})"
            about = doc['about']
            license = self.format_license_links(doc['license'])

            guide = doc.get('guide', "") # "" = empty cell
            if guide != "":
                guide_domain = urlparse(guide).netloc
                guide = f"[{guide_domain}/...]({guide})"


            table_data[doc['playbook']].append({
                "Name":    name,
                "About":   about,
                "License": license,
                "Guide":   guide
            })
        
        markdown_str = ""
        for playbook in self.playbooks:
            markdown_str += f"### {playbook} \n {Tomark.table(table_data[playbook])}"
        
        with open(f"Software Docs.md", 'w') as markdown_file:
            markdown_file.write(markdown_str)
            
s = SoftwareDocsGenerator()
s.generate()