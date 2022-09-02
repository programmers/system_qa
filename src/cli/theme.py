from inquirer.themes import load_theme_from_dict

CustomTheme = load_theme_from_dict({
    "Question": {
        "mark_color": "white",
        "brackets_color": "normal",
    },
    "List": {
        "selection_color": "azure4",
        "selection_cursor": ">"
    },
    "Checkbox": {
        "selection_color": "azure4",
        "selected_icon": "☑",
        "selected_color": "bold_blue",
        "unselected_icon": "☐"
    }
})