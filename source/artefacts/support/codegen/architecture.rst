.. _cds-codegen-architecture:


CDS Codegen Architecture
================================================

.. mermaid::

    graph TD
    CLI[cds-codegen-core:CodegenCLI] -->| args| MB[Model Builder]
    MB -->|APIModel + -g Generator|AG{AbstractGenerator Selection}
    AG-->|APIModel + CodeGeneratorOptions|CG[Code Generator]
    AG-->|APIModel + SwaggerGeneratorOptions|SG[Swagger Generator]
    SG-->|APIModel|MSC[ModelSwaggerConverter:convert]
    MSC-->|APIModel to swagger pinning|NSC[swagger-core]
    NSC-->|Swagger|WS[SwaggerGenerator:writeSwagger]
    WS-->|write swagger.json|SJSON[swagger.json]
    CG-->|APIModel|MCC[ModelCodegenConverter:convert]
    MCC-->|load -t template config.json|TGCM[Target Config Model]
    TGCM-->|for AbstractHandler in 'handlers'|AHS{AbstractHandler Selection}
    AHS-->|GenericHandler|GH[Generic Handler]
    AHS-->|DataDefinitionHandler|DDH[Data Definition Handler]
    AHS-->|SectionHandler|SH[Section Handler]
    SH-->|$cg = Each Section|VF[VelocityFile]
    VF-->|populateVelocityFiles|VH{Velocity Helper}
    DDH-->|$cg = Each DataDefinition|VF[VelocityFile]
    GH-->|$cg = CodeGenModel|VF[VelocityFile]
    VH-->|fill context, StringUtils,WordUtils,MathTool|VHWF[VelocityHelper:writeFiles]







      