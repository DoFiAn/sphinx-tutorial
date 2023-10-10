###########
Style Guide
###########

This section gives an overview of reStructured Text elements. 



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




**Rendered**

.. code-block:: python

   # this is program code, shown as it is
   for a in [5,4,3,2,1]:
      print a
  




Styling
-----------

Tables
-----------

Lists
-----------

Admonition
-----------

Immages
-----------

Footnotes
---------   

**********
References
**********
.. _`Literal blocks` : https://docutils.sourceforge.io/docs/ref/rst/restructuredtext.html#literal-blocks
.. _`Code-block` : https://www.sphinx-doc.org/en/master/usage/restructuredtext/directives.html#directive-code-block