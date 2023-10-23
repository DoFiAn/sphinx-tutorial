#####
Setup
#####

***********
Local Setup
***********

This chapter describes how to setup the project locally. 

Prerequisites
=============

To run a sphinx build locally following prerequisites needs to be fullfillied:

* Python is installed. You can check it in your console via: 

.. code-block:: console

   pyhton --version

If not installed it can be downloaded from: https://www.python.org/downloads

* Virtual environment is installed. You can check it in your console via: 

.. code-block:: console

   virtualenv --version 

If it's not installed you can install it via pip:

.. code-block:: console

   python -m pip install virtualenv

* For generation of PlantUML Java needs to be installed. You can check it in your console via:

.. code-block:: console

   java -version


Setup
=====

Execute "setup.bat". 

.. code-block:: console

   ..sphinx-tutorial>setup.bat

Setup script will install a virtual environment named "venv" and install via pip all modules requested from requirements.txt.


****************
Generate locally
****************

* Activate the virtual environment "venv"

.. code-block:: console

   spinx-tutorial>.\venv\Scripts\activate.bat

* Generate documentation

.. code-block:: console

   spinx-tutorial>.\docs\make.bat html

* Documentation is generated to:

::

   ".\docs\build\html\index.html"

.. _installation:

Installation
------------

Usage of Sphinx.

.. code-block:: console

   (.venv) $ pip install lumache

Other Chapter
-------------
Check out the :doc:`usage` section for further information, including how to
:ref:`install <installation>` the project.