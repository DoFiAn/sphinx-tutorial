###########
Style Guide
###########

This section gives an overview of reStructured Text elements. 


***********
Text blocks
***********

White spaces
============

White spaces are ignored when text blocks are rendered.


**Example** 

.. code-block:: rst

   This is a     text containing   white 
   spaces in form   of spaces
   and newlines.

**Rendered** 

This is a     text containing   white 
spaces in form   of spaces
and newlines.

Indentation
===========

Use consistent indentation throughout your document. 
While reStructuredText doesn't prescribe a specific number of spaces, it's common to use 3 or 4 spaces for indentation, 
especially when nesting structures. To have a common layout use 3 indentations. 

VS Code can be configured to replace tabs with spaces: 

* Click on the status bar item that displays the current indentation settings, usually located on the bottom right. This item will typically show "Spaces: 3/4"
* Select "Convert Indentation to Spaces" from the menu that appears.
* Select 3 spaces from the menu.


********
Comments
********

Writing comments which are not rendered is done by starting a line with two dots and then a space.

**Example** ::

    .. This is a single line comment. 

    ..
        This is a block
        comment. 

**Rendered**

Nothing is rendered, comment is only visible in `*`.rst. 



*************
Code examples
*************

There are multiple possibility to show code examples "as they are":
* Literal blocks
* code-block directive

Literal blocks
==============
`Literal blocks`_ can be used as inline code. They are not rendered. They start with `::` and are indented.


**Example** 

:: 


   This is a normal text paragraph. 
  
   ::

     # this is program code, shown as it is
     for a in [5,4,3,2,1]:   
       print a  

   Continuing with normal paragraph.

**Rendered**

This is a normal text paragraph. 

::

   # this is program code, shown as it is
   for a in [5,4,3,2,1]:   
     print a  

Continuing with normal paragraph.


Code block directive
====================
`Code-block`_ directive can be used as inline code. They are not rendered. They start with `.. code::` directive followed by the language. 

**Example**

.. code-block:: rst

   .. code-block:: python

      # this is program code, shown as it is
      for a in [5,4,3,2,1]:
         print a
  



**Rendered**

.. code-block:: python

   # this is program code, shown as it is
   for a in [5,4,3,2,1]:
      print a
  



********
Sections
********

`Sections`_  structure a document and are created by overlines/underlines with special charaters. 
There is no fixed number and order of section title adornment styles, the order enforced will be the order as encountered. 

**Example**

.. code-block:: rst

   ####################
   H1 Headline level 1.
   ####################

   ********************
   H2 Headline level 2.
   ********************

   H3 Headline level 3.
   ====================

   H4 Headline level 4.
   --------------------

   H5 Headline level 5.
   ^^^^^^^^^^^^^^^^^^^^

   H6 Headline level 6.
   """"""""""""""""""""

******
Tables
******

`Tables`_  can be created as:
* Grid table or as
* Simple table

Grid tables
===========

`Grid tables`_ can be used to "draw" the table which is rendered.

**Example**

.. code-block:: rst

   +-----------+-----------+-----------+
   | A         | B         | AND       |          
   +===========+===========+===========+
   | False     | False     | False     | 
   +-----------+-----------+-----------+
   | True      | Talse     | False     | 
   +-----------+-----------+-----------+
   | False     | True      | False     | 
   +-----------+-----------+-----------+
   | True      | True      | True      | 
   +-----------+-----------+-----------+


**Rendered**



+-----------+-----------+-----------+
| A         | B         | AND       |          
+===========+===========+===========+
| False     | False     | False     | 
+-----------+-----------+-----------+
| True      | Talse     | False     | 
+-----------+-----------+-----------+
| False     | True      | False     | 
+-----------+-----------+-----------+
| True      | True      | True      | 
+-----------+-----------+-----------+




Simple tables
=============

`Simple tables`_ are limited but easier to create. 

**Example**

.. code-block:: rst

   =====  =====  =======
   A      B      AND
   =====  =====  =======
   False  False  False
   True   False  False
   False  True   False
   True   True   True
   =====  =====  =======

**Rendered**

=====  =====  =======
A      B      AND
=====  =====  =======
False  False  False
True   False  False
False  True   False
True   True   True
=====  =====  =======


Lists
-----------

Admonition
-----------

Immages
-----------

Footnotes
---------

******
Links
******

Links to external sites
=======================

Table of contents
=================

References
==========

**********
References
**********

.. target-notes::

.. _`Literal blocks` : https://docutils.sourceforge.io/docs/ref/rst/restructuredtext.html#literal-blocks
.. _`Code-block` : https://www.sphinx-doc.org/en/master/usage/restructuredtext/directives.html#directive-code-block
.. _`Sections` : https://docutils.sourceforge.io/docs/ref/rst/restructuredtext.html#sections
.. _`Tables` : https://www.sphinx-doc.org/en/master/usage/restructuredtext/basics.html#tables
.. _`Grid tables` : https://docutils.sourceforge.io/docs/ref/rst/restructuredtext.html#grid-tables
.. _`Simple tables` : https://docutils.sourceforge.io/docs/ref/rst/restructuredtext.html#simple-tables

