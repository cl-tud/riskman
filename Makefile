WIDOCO_PATH=bin/widoco-1.4.20-jar-with-dependencies_JDK-17.jar
ONTOLOGY_PATH=kimeds-ontology.owl # also possible to load from URI
 
OUT_FOLDER=dist
CONF_FILE=config.properties

build:
	java -jar $(WIDOCO_PATH) -ontFile $(ONTOLOGY_PATH) -outFolder $(OUT_FOLDER) -confFile $(CONF_FILE) -includeImportedOntologies -webVowl -ignoreIndividuals -includeAnnotationProperties -uniteSections -rewriteAll
	cp -r img dist/
	mv dist/index-en.html dist/index.html

