.PHONY: setup lint

setup:
	python -m venv .venv && . .venv/bin/activate && pip install -r requirements.txt

# Add tooling later (ruff/black) if you want
lint:
	@echo "Add ruff/black later if desired"
