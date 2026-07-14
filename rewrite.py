import os
import subprocess

# Get the last 6 commits
commits = subprocess.check_output(['git', 'log', '-n', '6', '--format=%H']).decode().splitlines()
commits.reverse() # Oldest first

messages = [
    "🐛 PORT-119: correct allure results path and python relative imports",
    "🐛 PORT-120: fix Get Element State keyword and add String library",
    "⚙️ PORT-121: adjust thresholds to tolerate heroku cold start",
    "✅ PORT-122: implement deep assertions across Pytest, Playwright, and Robot Framework",
    "✅ PORT-123: implement intelligent teardown fixtures for test data isolation",
    "⚙️ PORT-124: implement anti-flakiness and failure tolerance across all frameworks"
]

# Reset to right before the 6 commits
subprocess.run(["git", "reset", "--hard", commits[0] + "^"])

for i, commit in enumerate(commits):
    subprocess.run(["git", "cherry-pick", commit])
    subprocess.run(["git", "commit", "--amend", "-m", messages[i]])

subprocess.run(["git", "push", "--force"])
