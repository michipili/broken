# Gasoline

The Gasoline project aims at implementing a Unix-ish application
development framework for OCaml.  The framework will provide
application templates factoring application components bootstrapping,
configuration analyse and offering homogeneous diagnostic facilities.

It is written by Michael Grünewald and is distributed under the
[CeCILL-B][1] license agreement.

Users of Gasoline should be enabled to:

- Rapidly develop applications by using *application patterns* such as
  “Unix filter”, “tabular data processor” or “compiler”.
- Write large software suites whose elements offer homogeneous
  interfaces.
- Use standardised diagnostic facilities supporting
  internationalisation.
- Cleanly distinguish between application components and lower-level
  software engineering artifacts.
- Easily bootstrap and shutdown applications consisting of many
  modules.
- Use common file formats such as CSV or JSON in their applications.


## Current state

Gasoline is still beta-software, and many features or design elements
are susceptible to change before we reach version 1.0. Current
features are:

- A [diagnostic facility][2] similar to `printf` but better suited to
  internationalisation and having routing rules.
- [Configuration][3] based on files, environment variables and command
  line arguments.
- Configuration [cascading rules][4] which can be used to let system
  administrators enforce some settings of installed applications.
- Software [component management][5] which correctly bootstrap and
  shutdown the application, exception sent by the guest are caught and
  an emergency shutdown procedure is triggered.
- A [unit test][9] suite.

Applications can take advantage of a [simplified interface][6] to the
[Camomile library][7] and of writer functions, allowing to
produce simple SGML or HTML reports.

See the [ocamldoc generated documentation][8] of the `master` branch
for more details.


Michael Grünewald in Bonn, on October 21, 2014

   [1]: http://www.cecill.info/licences/Licence_CeCILL-B_V1-en.html
   [2]: wiki/DiagnosticFacility
   [3]: wiki/Configuration
   [4]: wiki/CascadingRules
   [5]: wiki/Component
   [6]: http://michipili.github.io/gasoline/reference/Unicode.html
   [8]: http://michipili.github.io/gasoline/reference/index.html
   [9]: wiki/UnitTesting