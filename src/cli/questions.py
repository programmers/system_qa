Questions = {
    "Python": [
        {
            "key": "python_style_guide_analyzer",
            "type": "checkboxes",
            "question": "Select the Python style guide/analyzer you use (if unsure, consider Flake8)",
            "tags": [
                ( "Flake8", "flake8" ),
                ( "Black", "black" ),
            ]
        },
        {
            "key": "dep_and_version_management",
            "type": "checkboxes",
            "question": "Select the dependency management tools version managers you use (if unsure, consider Pipenv)",
            "tags": [
                ( "Pipenv", "pipenv" ),
                ( "Poetry", "poetry" ),
                ( "Pyenv", "pyenv" ),
                ( "Conda", "conda" ),
            ]
        },
    ],
    "JavaScript and Node": [
        {
            "key": "webstorm_node_trial",
            "type": "list",
            "question": "Do you wish to install JetBrains WebStorm (Node) IDE trial?",
            "tags": [
                ( "Yes", "webstorm_node_trial" ),
                ( "No",  "no_webstorm_node_trial" )
            ],
            "ignore_key": "webstorm_web_trial"
        },
        {
            "key": "node_typescript",
            "type": "list",
            "question": "Do you wish to install the Node TypeScript Engine?",
            "tags": [
                ( "Yes", "typescript_node_engine" ),
                ( "No",  "no_typescript_node_engine" )
            ]
        },
    ],
    "Web Tools": [
        {
            "key": "web_frameworks",
            "type": "checkboxes",
            "question": "Select the frontend CLIs you use",
            "tags": [
                ( "Angular", "angular" ),
                ( "React", "react" ),
                ( "Vue", "vue" )
            ]
        },
        {
            "key": "webstorm_web_trial",
            "type": "list",
            "question": "Do you wish to install JetBrains WebStorm (Web) IDE trial?",
            "tags": [
                ( "Yes", "webstorm_web_trial" ),
                ( "No",  "no_webstorm_web_trial" )
            ],
            "ignore_key": "webstorm_node_trial"
        },
    ],
    "Version Control": [
        {
            "key": "version_control_systems",
            "type": "checkboxes",
            "question": "Select the version control systems you use",
            "tags": [
                ( "Git", "git" ),
                ( "Mercurial",  "mercurial" ),
                ( "Subversion", "subversion" ),
                ( "CVS", "cvs" )
            ]
        },
        {
            "key": "merge_tools",
            "type": "checkboxes",
            "question": "Select the merge/compare tools you use (if unsure, consider Meld)",
            "tags": [
                ( "Meld", "meld" ),
                ( "KDiff3", "kdiff3" )
            ]
        },
    ]
    ,
    "Database Clients": [
        {
            "key": "database_clients",
            "type": "checkboxes",
            "question": "Select the database systems you use",
            "tags": [
                ( "MySQL", "mysql" ),
                ( "Postgres", "postgres" ),
                ( "Sqlite", "sqlite" ),
                ( "Redis", "redis" ),
                ( "MongoDB", "mongodb" )
            ]
        },
        {
            "key": "jetbrains_datagrip_trial",
            "type": "list",
            "question": "Do you wish to install the JetBrains Datagrip IDE trial?",
            "tags": [
                ( "Yes", "datagrip_trial" ),
                ( "No",  "no_datagrip_trial" )
            ]
        }
    ],
    "Containers and VMs": [
        {
            "key": "virtualization_systems",
            "type": "checkboxes",
            "question": "Select the virtualization systems you use (if unsure, consider Virtualbox)",
            "tags": [
                ( "Qemu/KVM/Virt", "qemu_kvm_virt" ),
                ( "Virtualbox", "virtualbox" ),
            ]
        }
    ],
    "Scientific": [
        {
            "key": "miniconda",
            "type": "list",
            "question": "Do you wish to install Miniconda?",
            "tags": [
                ( "Yes", "miniconda" ),
                ( "No",  "no_miniconda" )
            ]
        }
    ],
    "Cloud Tools": [
        {
            "key": "cloud_systems",
            "type": "checkboxes",
            "question": "Select the cloud systems you use",
            "tags": [
                ( "AWS", "aws" ),
                ( "Google Cloud", "google-cloud" ),
                ( "Azure", "azure" ),
                ( "Digital Ocean", "digital_ocean" ),
                ( "Kubernetes", "kubernetes" )
            ]
        }
    ],
    "Java": [
        {
            "key": "java_ides",
            "type": "checkboxes",
            "question": "Select the Java IDEs you use",
            "tags": [
                ( "Eclipse (Java)", "eclipse_java" ),
                ( "Eclipse Spring Tool Suite", "eclipse_sts" ),
                ( "IntelliJ IDEA Community", "intellij" )
            ]
        }
    ],
    "C and Cpp": [
        {
            "key": "c_and_cpp_ides",
            "type": "checkboxes",
            "question": "Select the C++ IDEs you use",
            "tags": [
                ( "JetBrains Clion (trial)", "clion_trial" ),
                ( "QT Creator", "qt_creator" ),
                ( "Code::Blocks", "codeblocks" ),
                ( "Eclipse C++", "eclipse_cpp" )
            ]
        }
    ],
    "Go": [
        {
            "key": "goland_trial",
            "type": "list",
            "question": "Do you wish to install the JetBrains Goland IDE trial?",
            "tags": [
                ( "Yes", "goland_trial" ),
                ( "No", "no_goland_trial" )
            ]
        }
    ],
    "PHP": [
        {
            "key": "php_ides",
            "type": "checkboxes",
            "question": "Select the PHP IDEs you use",
            "tags": [
                ( "JetBrains PHP Storm (trial)", "phpstorm_trial" ),
                ( "Eclipse PHP", "eclipse_php" )
            ]
        }
    ],
    "Rust": [],
    "Ruby": [
        {
            "key": "rubymine_trial",
            "type": "list",
            "question": "Do you wish to install JetBrains Rubymine IDE trial?",
            "tags": [
                ( "Yes", "rubymine_trial" ),
                ( "No",  "no_rubymine_trial" )
            ]
        }
    ]
}