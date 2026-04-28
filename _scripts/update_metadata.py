import datetime
import os
import re
import sys


DATE_RE = re.compile(r"\d{4}-\d{2}-\d{2}")


def date_from_filename(filepath):
    match = re.match(r"(\d{4}-\d{2}-\d{2})", os.path.basename(filepath))
    return match.group(1) if match else None


def front_matter_end(lines):
    if not lines or not lines[0].startswith("---"):
        return None

    for index in range(1, len(lines)):
        if lines[index].startswith("---"):
            return index

    return None


def replace_or_append_field(lines, key, value):
    prefix = f"{key}:"
    replacement = f"{key}: {value}\n"

    for index, line in enumerate(lines):
        if line.startswith(prefix):
            if line != replacement:
                lines[index] = replacement
                return True
            return False

    lines.append(replacement)
    return True


def update_front_matter(filepath):
    if not os.path.exists(filepath):
        return False

    with open(filepath, "r", encoding="utf-8") as handle:
        lines = handle.readlines()

    end_index = front_matter_end(lines)
    if end_index is None:
        return False

    front_matter = lines[1:end_index]
    content = lines[end_index:]

    today = datetime.date.today().strftime("%Y-%m-%d")
    created = date_from_filename(filepath) or today

    changed = False

    for index, line in enumerate(front_matter):
        if line.startswith("date:") and ("<YEAR>" in line or not DATE_RE.search(line)):
            front_matter[index] = f"date: {created}\n"
            changed = True

        if line.startswith("last_modified_at:") and (
            "<YEAR>" in line or not DATE_RE.search(line)
        ):
            front_matter[index] = f"last_modified_at: {today}\n"
            changed = True

    changed = replace_or_append_field(front_matter, "date", created) or changed
    changed = replace_or_append_field(front_matter, "last_modified_at", today) or changed

    if changed:
        with open(filepath, "w", encoding="utf-8") as handle:
            handle.writelines(["---\n"] + front_matter + content)

    return changed


if __name__ == "__main__":
    changed = False

    for filepath in sys.argv[1:]:
        changed = update_front_matter(filepath) or changed

    if changed:
        print("Updated Jekyll post metadata. Re-stage changed files and commit again.")
        sys.exit(1)
