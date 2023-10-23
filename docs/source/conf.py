# Configuration file for the Sphinx documentation builder.
#
# For the full list of built-in configuration values, see the documentation:
# https://www.sphinx-doc.org/en/master/usage/configuration.html

# -- Project information -----------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#project-information

import os

project = 'Sphinx tryout'
copyright = 'comp name'
author = 'DoFiAn'
release = '0.1'

# -- General configuration ---------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#general-configuration

# Add any Sphinx extension module names here, as strings. They can be
# extensions coming with Sphinx (named 'sphinx.ext.*') or your custom
# ones.
extensions = [
    'sphinx.ext.duration',
    'sphinx_rtd_theme', 
    'sphinxcontrib.plantuml'
]

templates_path = ['_templates']
exclude_patterns = []



# -- Options for HTML output -------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#options-for-html-output

html_theme = 'sphinx_rtd_theme'
html_static_path = ['_static']

# -- Options for PlantUML ----------------------------------------------------
# set plantuml.jar path
cwd = os.getcwd()
if os.path.exists(os.path.join(cwd, "_tools/plantuml.jar")):
    plantuml = 'java -Djava.awt.headless=true -jar %s' % os.path.join(cwd, "_tools/plantuml.jar")
elif os.path.exists('/usr/share/plantuml/plantuml.jar'):
    plantuml = 'java -Djava.awt.headless=true -jar /usr/share/plantuml/plantuml.jar'
else:
    raise RuntimeError("Could not find plantuml.jar, please ensure that it is installed either in _tools/plantuml.jar or /usr/share/plantuml/plantuml.jar")

# set plantuml output format
plantuml_output_format ='svg_obj'
