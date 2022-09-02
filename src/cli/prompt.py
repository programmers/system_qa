import inquirer

from cli.theme import CustomTheme
from cli.questions import Questions


class Prompt:

    playbooks = [
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
        "Ruby",
    ]

    prompts = Questions

    greeting_message = """\n\n
    Welcome to Programmer's System!

    Before we can get started, you must provide the
    relevant dev ecosystems you use. Once selected,
    you will be prompted to answer further related
    questions. this ensures that you will have the
    most personalized setup!

        * △ ▽ arrow keys: navigate the options
        *  ▭  spacebar:   select/de-select an option
        *  ⏎  enter:      submit current selections (or none with just "enter")
    """

    def build_checkboxes_question(self, message, tags, key):
        return inquirer.Checkbox(name=key, message=message, choices=tags)

    def build_list_question(self, message, tags, key, ignore_key):
        return inquirer.List(
            key,
            message=message,
            choices=tags,
            ignore=lambda x: True if ignore_key in x else False,
        )

    def prompt_for_overall_playbooks(self):
        key = "Playbooks"
        results = inquirer.prompt(
            [
                self.build_checkboxes_question(
                    "What kinds of technologies do you work with?", self.playbooks, key
                )
            ],
            theme=CustomTheme,
            raise_keyboard_interrupt=True,
        )

        return results[key]

    # This returns the Ansible "tags" based on the answers
    def prompt_for_questions(self, playbooks):
        prompts = []

        for playbook in playbooks:
            for question in self.prompts.get(playbook, []):
                if question["type"] == "checkboxes":
                    prompts.append(
                        self.build_checkboxes_question(
                            question["question"], question["tags"], question["key"]
                        )
                    )

                elif question["type"] == "list":
                    prompts.append(
                        self.build_list_question(
                            question["question"],
                            question["tags"],
                            question["key"],
                            question.get("ignore_key", None),
                        )
                    )

        return self.flatten_dict_values(
            inquirer.prompt(prompts, theme=CustomTheme, raise_keyboard_interrupt=True)
        )

    # Used to properly extract answer values. Needs to be more simple!!!
    def flatten_dict_values(self, _dict):
        _list = []

        for _, item in _dict.items():
            if item == None:
                continue

            if type(item) is list:
                for val in item:
                    _list.append(val)

            else:  # not a list
                _list.append(item)

        return _list

    def get_results(self):
        print(self.greeting_message)

        playbooks = self.prompt_for_overall_playbooks()
        tags = self.prompt_for_questions(playbooks)

        # When using tags, Ansible recognizes the tag "always" to signal that a
        # particular task should always run... let's use "default" as it's more clear.
        tags.append("default")

        return playbooks, tags
