Stuart's Farewell
================================================

.. post:: August 9, 2019
   :tags: engineering
   :category: general-updates
   :author: Nick Hamilton
   :language: en
   :excerpt: 10

Hi All,

It has been a while, but the CDS Engineering team can now give an update on our progress.

Firstly, in our team Nick Hamilton is joining us as interim Lead Engineer. Nick will draw upon his previous project delivery experiences in the FinTech/banking sector and his work as an engineer on earlier versions of the CDR Standards and InfoSec to provide technical guidance as we continue to produce artefacts to support the CDR ecosystem. We are also pleased to announce that we are adding an additional Senior Engineer to the team who will supplement Fei's good work on the Engineering artefacts.

Over the last few weeks the Engineering team has been working on consolidating the existing 10 git repositories into a single repo. This will make it easier for the community to navigate through the artefacts and to better understand their relationships. It will also enable better dependency and version management and will simplify our continuous integration. The cds-models, api-model and cds-conformance repos have been renamed to reference-test, and it can be found in the java-artefacts repo (`<https://github.com/ConsumerDataStandardsAustralia/java-artefacts/>`_).

Over the next month, the Engineering team will be directing our efforts towards updating all our artefacts to align them with the latest versions of the CDS standards. We expect to release a 0.9.3 version first, and expect subsequent versions (0.9.4, 0.9.5 and 0.9.6) to all be released by 30th of September (subject to there being no significant rule updates that might cause major revisions to the Standards). An important component of our effort is updating the payload validation tool in the reference testing suite.

For those who are not familiar with our CDS testing suite, it has two components. The first component is a Payload Validation Tool, which checks the payload responses returned from Data Recipients. This tool accepts a JSON file as input (either locally or via a URL) and reports on the "correctness" of the structure of the data. It can be used to check the validity of endpoints defined in the Standards. The second tool – the Parameterised Test Tool - provides a way for testers to supply configuration files that specify custom input parameters to send to CDS endpoints and the response data that is expected to be returned. This tool utilises the open-source Serenity testing library (`<http://www.thucydides.info/#/whatisserenity>`_) to automatically make endpoint requests with the custom input parameters, and confirms that the responses are as expected. Currently it only supports the Product API, but work will begin on extending it to encompass Customer APIs in November.

Once the Engineering artefacts have been updated to the latest version of the Standards API, our engineering efforts will focus on implementing support for the InfoSec API into the artefacts. This is expected to be a major update that may take several months of engineering effort.

While our planned deliverables are currently confined to use in a desktop sandbox, we would welcome any contributions from the community that might extend them to support a cloud-based environment. We have created simple licensing agreements to ensure any individual or corporate contributions are recognised and these Harmony-based agreements will be published on the engineering website in the near future.

As always, if there are any questions in regards to our artefacts, please feel free to contact the Engineering team, or raise a git issue if you find a bug or want to suggest a feature enhancements.

We look forward to working with you as we head toward implementing the CDS.

Nick Hamilton
Interim Engineering Lead
