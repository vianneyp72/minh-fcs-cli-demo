# DEMO STUB - harmless. Reuses the name/version of the compromised litellm 1.107.0
# wheel so Falcon image assessment flags it. Contains no code and never touches PyPI.
from setuptools import setup

setup(
    name="litellm",
    version="1.107.0",
    description="DEMO STUB - harmless placeholder, NOT the malicious litellm wheel",
    py_modules=[],
)
