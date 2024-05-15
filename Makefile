BACK_PATH = app/back/

PYTHON_VENV = $(BACK_PATH)venv/bin/python
DJANGO = $(BACK_PATH)manage.py
LOCAL = --settings=config.django.local


runbackserver:
	$(PYTHON_VENV) $(DJANGO) runserver $(LOCAL)

makemigrations:
	$(PYTHON_VENV) $(DJANGO) makemigrations $(LOCAL)

migrate:
	$(PYTHON_VENV) $(DJANGO) migrate $(LOCAL)

startapp:
	$(PYTHON_VENV) $(DJANGO) startapp $(app) $(LOCAL)

test:
	$(PYTHON_VENV) $(DJANGO) test $(LOCAL)

mkrequirements:
	$(PYTHON_VENV) -m pip freeze > $(BACK_PATH)requirements.txt