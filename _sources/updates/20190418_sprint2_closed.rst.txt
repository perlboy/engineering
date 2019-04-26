Sprint #2 Closed
================================================

.. post:: Apr 18, 2019
   :tags: sprint, engineering
   :category: sprint-updates
   :author: csirostu
   :language: en

Once again it has been a pretty big fortnight as we got deep into taking our Models built in :ref:`sprint-#1` and initiating the production of Codegen. While we haven't quite got to where we wanted to be by now we are pretty happy with the progress and have now made available Product API focused samples for `Client <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/tree/cds-artefact-generator/support/samples/cds-client-java>`_, `Server Stubs (using Spring) <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/tree/cds-artefact-generator/support/samples/cds-stubs-java-spring>`_ and a `Model Holder <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/tree/cds-artefact-generator/support/samples/cds-holder-java-spring>`_ .

For the adventurous these are available directly from source now and we have put in a task on :ref:`sprint-#3` to publish Docker containers and produce a quick showcase video. Within :ref:`sprint-#3`, we will now use these samples as input templates into the ongoing code generation work currently occurring.

With Easter upon us we completed a retrospective and the final report is available in the :ref:`sprint-#2` documentation. All up there has now been 30,000 (!!) lines of additional code added to our repositories in :ref:`sprint-#2` alone and we ticked over on 300+ commits across our repositories this sprint. We suspect this will only accelerate further as we progress.

**Product API Samples**

As outlined above we are in the final stages of publishing the first set of Reference Implementations for initial testing by the wider community. Specifically focused on presenting the Product API these samples include:

* A Java based Client Library for eventual inclusion into code bases
* A Java based CLI using the Client Library
* A Java+Spring based set of Server Stubs
* A Java+Spring based Model Holder with Data Loader (from JSON files)

Links to the current locations for these can be found in the :ref:`sprint-#2` Achievements.

**CDS Codegen**

Our work on CDS Codegen has focused on continuing to expand functionality beyond round trip Swagger generation and into hard artefact output. Our intention is to be producing the aforementioned samples from this so that continuing updates to the standards represent an ongoing reduction in the Engineering effort required to demonstrate them.

Internally within the team we have debated heavily the best approach here (focused on ensuring what we produce is "useful") although this has led to a need to extend this work into Sprint #3. With this in mind we have recalibrated our `Overall Sprint Plan <https://consumerdatastandardsaustralia.github.io/engineering/sprints/index.html>`_. While it means we now add two weeks to our overall schedule we feel this is worth it for the benefit a fully functional code generation system can deliver. We will endeavour to claw some of this time back in later sprints, hopefully using the efficiency we have delivered through a flexible code generation tool.

**Engineering Workshop Feedback**

So I'll keep this short. We put two feedback requests up and received minimal feedback. I get it, everybody is busy but it's a bit challenging to ensure we are delivering "useful" outputs if you (yes you! :)) don't participate. We aren't asking too much, even just a thumbs up on these requests would suffice.

For now I've closed out the first two feedback requests as we have passed the equinox of development activities and what they relate to. Don't worry though, we have a few more of these coming up so everyone will get another chance, you never know, maybe I'll put a prize up this time! ;)

**Other Items**

*Product API Payload Conformance*: Codegen took up our time, we've moved this to Sprint #3

*ACCC Directory*: We've been having some lengthy discussions with the Directory implementation team so that we can get something concrete out technically. While we aren't looking at tackling this inside Engineering deliverables until Sprint #6 we are certainly advocating for as quick a release as possible.

*Upgradeability Roadmap*: We are still in discussions internally on the best outcome here. Internally we have a proposal but are working towards alignment between Engineering and Standards. It's not scheduled for resolution until Sprint #8 so we still have time.

**Sprint #3 Summary**
Live Sprint Status: :ref:`sprint-#3`

As discussed in Sprint #3 we have decided to continue focusing on CDS Codegen to get to a point we are automatically generating our sample outputs. This means that our focus on authentication and authorisation is pushed back 2 weeks. We feel this has the benefit of getting a quality outcome on Codegen while also giving some breathing room (in the face of a short sprint due to Easter) around establishing a baseline for the InfoSec requirements of the Consumer Data Standards.

Consequently, our key objectives for Sprint #3:

1. Finish Alpha Codegen release to generate the Samples
2. Package Samples into consumable components (and showcase with a video)
3. Initial Payload Conformance of Product payloads

We are still working through the exact tasks this entails so the above link will likely evolve over the weekend.

**Tangible Progress**

On review while we may have bitten off a little more than we can chew in Sprint #2 we've made significant and tangible progress toward demonstrating the emerging Standards.

We continue to be enthusiastic about what we've achieved so far and welcome participation and/or suggestions from all of you on how we can do it better.

I hope you all enjoy a quick Easter break and I look forward to providing more updates soon.

