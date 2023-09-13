# KIMEDS ontology

The KIMEDS Ontology defines various notions related to risk management for medical devices. It builds on terms from ISO 14971. The central notion of the KIMEDS ontology is that of a Safe Design Argument (SDA), a reusable artifact that aims to demonstrate how a specific hazard occurring with a device (and possibly further context information and assumptions) has been mitigated.

Online documentation: https://cl-tud.github.io/kimeds-ontology/


## Continuous Integration (CI)

Continuous integration (CI) is enabled on the `main` branch, meaning whenever any commit gets pushed to it, the documentation will be regenerated and deployed under this [link](https://cl-tud.github.io/kimeds-ontology/) (also specified above.)

## Building locally

After cloning this repository it can be build locally by running `make build` in the project directory. A static website will be generated under `dist/index.html`.

## Dependencies
[Widoco](https://github.com/dgarijo/Widoco) is used to automatically generate the documentation from sources. The `.jar` file is located under [/bin](bin).

## TODOs:
- [ ] move configuration properties from `config.properties` to `kimeds-ontology.owl` using appropriate annotation properties (https://github.com/dgarijo/Widoco/blob/master/doc/metadataGuide)
- [ ] add ontology diagram
- [ ] start issue management
