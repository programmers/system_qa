#!/usr/bin/python

import subprocess
import yaml
import os

from ansible.module_utils.basic import *

def get_vars():
    with open("/etc/ansible/vars.yml") as f:
        return yaml.safe_load(f)

def get_script_paths(project_dir, operating_system, script):
    scripts = f"{project_dir}/src/ansible/playbooks/{operating_system}/scripts/{script}"
    shared_scripts = f"{project_dir}/src/ansible/playbooks/scripts/shared/{script}"

    return {
        'scripts': scripts,
        'shared_scripts': shared_scripts
    }

def should_run_as_home_user(creates):
    return creates[0] == '.'

def check_for_creates_target(creates, home_user):
    creates = creates.replace(' ','\ ')
    if creates[0] == ".": # todo use the above func! 
        creates = f"/home/{home_user}/{creates}"

    is_file = os.path.isfile(creates)
    is_dir = os.path.isdir(creates)

    return is_file or is_dir

def main():
    args = dict(
        script=dict(type="str", required=True),
        creates=dict(type="str", required=True),
        shared=dict(type="bool", required=False)
    )

    module = AnsibleModule(argument_spec=args)

    shared  = module.params.get("shared", False)
    creates = module.params['creates']
    script  = module.params['script']

    try:
        vars = get_vars()

        if check_for_creates_target(creates, vars['home_user']):
            module.exit_json(changed=False)

        script_paths = get_script_paths(vars['project_dir'], vars['os'], script)
        script_path = script_paths['shared_scripts'] if shared else script_paths['scripts']

        if should_run_as_home_user(creates):
            cmd = ["sudo", "-S", "-u", vars['home_user'], "-i", "/bin/bash", "-l", "-c", f"'{script_path}'"]
        else: # root
            cmd = [script_path]

        subprocess.run(cmd, stderr=subprocess.PIPE, stdout=subprocess.PIPE)

        module.exit_json(changed=True)
    except subprocess.CalledProcessError as call_err:
        module.fail_json(msg=f"Cannot call {script}. {str(call_err)}")
    except Exception as err:
        module.fail_json(msg=f"General issues when calling {script}. {str(err)}")

if __name__ == "__main__":
    main()