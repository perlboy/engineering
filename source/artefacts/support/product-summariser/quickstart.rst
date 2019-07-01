Product Summariser Quick Start
---------------------------------

.. start-content

Requirements
^^^^^^^^^^^^^^^^^^^^^^^

The Product Summariser is best run from it's Docker container as it uses a number of pipeline techniques to perform data conversation after initial API consumption.

Native Execution
^^^^^^^^^^^^^^^^^^^^^

To start the CDS Client CLI execute the Docker command as below:

.. code-block:: bash

    user@host:~/$ docker run -v `pwd`/reporting-outputs:/opt/sphinx consumerdatastandardsaustralia/cds-product-summariser:0.9.3-SNAPSHOT -b=http://localhost:8080/cds-au/v1
    Finished: An initial directory structure has been created.

    You should now populate your master file /opt/sphinx/source/index.rst and create other documentation
    source files. Use the Makefile to build the docs, like so:
       make builder
    where "builder" is one of the supported builders, e.g. html, latex or linkcheck.
    
    2019-07-01 08:51:30.495  INFO   --- [           main] a.o.c.reporting.product.summary.ApiUtil  : Server URL is set to http://localhost:8080/cds-au/v1
    2019-07-01 08:51:30.518  INFO   --- [           main] a.o.c.reporting.product.summary.ApiUtil  : Server URL is set to http://localhost:8080/cds-au/v1
    2019-07-01 08:51:31.167  INFO   --- [           main] a.o.c.r.p.summary.ProductSummariser      : Collecting detailed product information for ad22b1f0967349e8a5d586afe7f0d845
    2019-07-01 08:51:31.313  INFO   --- [           main] a.o.c.r.p.summary.ProductSummariser      : Collecting detailed product information for 7aff9e0e85e6450eb052d4ff2e953223
    2019-07-01 08:51:31.393  INFO   --- [           main] a.o.c.r.p.summary.ProductSummariser      : Collecting detailed product information for 72f214498c7f47a98fe59b794e7c01ab
    2019-07-01 08:51:31.470  INFO   --- [           main] a.o.c.r.p.summary.ProductSummariser      : Collecting detailed product information for 7375f63775b4489a890655e25395e12d
   <snip>
    (./cdsproductreport.ind) [12] (./cdsproductreport.aux) )
    (see the transcript file for additional information){/usr/share/texlive/texmf-d
    ist/fonts/enc/dvips/base/8r.enc}</usr/share/texlive/texmf-dist/fonts/type1/urw/
    helvetic/uhvb8a.pfb></usr/share/texlive/texmf-dist/fonts/type1/urw/helvetic/uhv
    r8a.pfb></usr/share/texlive/texmf-dist/fonts/type1/urw/times/utmb8a.pfb></usr/s
    hare/texlive/texmf-dist/fonts/type1/urw/times/utmr8a.pfb>
    Output written on cdsproductreport.pdf (16 pages, 82433 bytes).
    Transcript written on cdsproductreport.log.
    Latexmk: Index file 'cdsproductreport.idx' was written
    Latexmk: Log file says output to 'cdsproductreport.pdf'
    Latexmk: All targets (cdsproductreport.pdf) are up-to-date
    make[1]: Leaving directory '/opt/sphinx/build/latex'

The report will then be available in ``reporting-outputs/build/html/index.html`` and the PDF version will be in ``reporting-outputs/build/latex/cdsproductreport.pdf``.

Execution In Sandbox
^^^^^^^^^^^^^^^^^^^^^^

To access the Desktop Sandbox network additional parameters are required.

.. code-block:: bash

    user@host:~/$ docker run --network desktop-sandbox_cdsdevnet -v `pwd`/reporting-outputs:/opt/sphinx consumerdatastandardsaustralia/cds-product-summariser:0.9.3-SNAPSHOT -b=http://holder1:8081/cds-au/v1 --consul.enabled=true --consulmaster=10.252.252.2
    ==> Starting Consul agent...
    ==> Joining cluster...
   <snip>
    (./cdsproductreport.ind) [12] (./cdsproductreport.aux) )
    (see the transcript file for additional information){/usr/share/texlive/texmf-d
    ist/fonts/enc/dvips/base/8r.enc}</usr/share/texlive/texmf-dist/fonts/type1/urw/
    helvetic/uhvb8a.pfb></usr/share/texlive/texmf-dist/fonts/type1/urw/helvetic/uhv
    r8a.pfb></usr/share/texlive/texmf-dist/fonts/type1/urw/times/utmb8a.pfb></usr/s
    hare/texlive/texmf-dist/fonts/type1/urw/times/utmr8a.pfb>
    Output written on cdsproductreport.pdf (16 pages, 82433 bytes).
    Transcript written on cdsproductreport.log.
    Latexmk: Index file 'cdsproductreport.idx' was written
    Latexmk: Log file says output to 'cdsproductreport.pdf'
    Latexmk: All targets (cdsproductreport.pdf) are up-to-date
    make[1]: Leaving directory '/opt/sphinx/build/latex'

The report will then be available in ``reporting-outputs/build/html/index.html`` and the PDF version will be in ``reporting-outputs/build/latex/cdsproductreport.pdf``.


