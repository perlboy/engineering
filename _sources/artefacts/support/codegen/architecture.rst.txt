.. _cds-codegen-architecture:


CDS Codegen Architecture
================================================

.. mermaid::

    graph TD
    subgraph CodegenCLI
        CLI[main] -->| args| MB[Model Builder]
        MB -->|APIModel + -g Generator|AG{AbstractGenerator Selection}
    end
    subgraph SwaggerGenerator
        AG-->|APIModel + SwaggerGeneratorOptions|SG["generateSwagger()"]
        subgraph ModelSwaggerConverter
             SG-->|APIModel|MSC["convert()"]
        end
        subgraph Swagger.io Core Library
            NSC-->|Swagger Object|WS["writeSwagger()"]
            MSC-->|Convert APIModel to Swagger Native|NSC[Pin APIModel to Swagger Object]
        end
        WS-->|write swagger.json|SJSON[swagger.json]
    end
    subgraph CodeGenerator
        AG-->|APIModel + CodeGeneratorOptions|CG["generate()"]
        subgraph ModelCodegenConverter
            CG-->|APIModel|MCC["convert()"]
        end
        subgraph AbstractHandler
            MCC-->|load -t template config.json|TGCM[Target Config Model]
            TGCM-->|for AbstractHandler in 'handlers'|AHS{AbstractHandler }
            AHS-->|DataDefinitionHandler|DDH[DataDefinition Handler]
            AHS-->|SectionHandler|SH[Section Handler]
            AHS-->|GenericHandler|GH[Generic Handler]
           subgraph DataDefinitionHandler
                DDH-->|$cg = DataDefinition|DDHVC[Data Definition Velocity Context]
           end
           subgraph SectionHandler
               SH-->|$cg = SectionDefinition|SHVC[Generic Velocity Context]
           end
           subgraph GenericHandler
               GH-->|$cg = CodeGenModel|GHVC[Generic Velocity Context]
           end              
           DDHVC-->|$cg = Each DataDefinition|VF[VelocityFile]
           SHVC-->|$cg = Each Section|VF[VelocityFile]
           GHVC-->|$cg = CodegenModel|VF[VelocityFile]
           VF-->|populateVelocityFiles|VH[Velocity File Collection]
           VH-->|fill context, StringUtils,WordUtils,MathTool|VHWF[VelocityHelper:writeFiles]
           end
    end







      