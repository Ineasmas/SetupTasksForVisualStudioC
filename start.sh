#!/bin/bash

# Пути к временным файлам
TEMP_PYTHON_FILE="/tmp/setuper.py"
TEMP_TASKS_FILE="/tmp/tasks.json"
TEMP_KEYBINDINGS_FILE="/tmp/keybindings.json"

# URL файлов с GitHub
TEMP_PYTHON_URL="https://raw.github.com/5had0w-SS-P4k4-e/SetupTasksForVisualStudioC/blob/main/setuper.py"
TASKS_URL="https://raw.githubusercontent.com/5had0w-SS-P4k4-e/SetupTasksForVisualStudioC/main/tasks.json"
KEYBINDINGS_URL="https://raw.githubusercontent.com/5had0w-SS-P4k4-e/SetupTasksForVisualStudioC/main/keybindings.json"

# Загружаем файлы
curl -s "$TEMP_PYTHON_URL" -o "$TEMP_PYTHON_FILE"
curl -s "$TASKS_URL" -o "$TEMP_TASKS_FILE"
curl -s "$KEYBINDINGS_URL" -o "$TEMP_KEYBINDINGS_FILE"

# Запускаем Python-скрипт
python3 "$TEMP_PYTHON_FILE" "$TEMP_TASKS_FILE" "$TEMP_KEYBINDINGS_FILE"

# Удаляем временные файлы
rm "$TEMP_PYTHON_FILE" "$TEMP_TASKS_FILE" "$TEMP_KEYBINDINGS_FILE"

