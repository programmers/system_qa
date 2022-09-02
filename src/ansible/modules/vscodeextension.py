#!/usr/bin/python

import subprocess
import yaml

from ansible.module_utils.basic import *

def get_vars():
    with open("/etc/ansible/vars.yml") as f:
        return yaml.safe_load(f)

def main():
    args = dict(name=dict(type="str", required=True))
    module = AnsibleModule(argument_spec=args)
    name  = module.params['name']

    vars = get_vars()

    cmd_prefix = f"sudo -S -u {vars['home_user']} -i /bin/bash -l -c " 

    try:
        check_cmd = cmd_prefix + f"'code --list-extensions'"
        ext_findings = subprocess.run(check_cmd, stderr=subprocess.PIPE, stdout=subprocess.PIPE, shell=True)

        if name.lower() in str(ext_findings).lower(): # list-extensions doesn't always match cases
            module.exit_json(changed=False)

        install_cmd = cmd_prefix + f"'code --install-extension {name}'"
        subprocess.run(install_cmd, stderr=subprocess.PIPE, stdout=subprocess.PIPE, shell=True)

        module.exit_json(changed=True)

    except subprocess.CalledProcessError as call_err:
        module.fail_json(msg=f"Cannot install extension '{name}' - {str(call_err)}")
    except Exception as err:
        module.fail_json(msg=f"Cannot install extension '{name}'. {str(err)}")

if __name__ == "__main__":
    main()
