WIDOCO_PATH=bin/widoco-1.4.20-jar-with-dependencies_JDK-17.jar
ONTOLOGY_PATH=kimeds-ontology.owl # also possible to load from URI
 
OUT_FOLDER=dist
CONF_FILE=config.properties
# current_date=$$(date +'%d %b. %Y')
TODAY := $(shell date +'%d %b. %Y')

# java -jar $(WIDOCO_PATH) -ontFile $(ONTOLOGY_PATH) -outFolder $(OUT_FOLDER) -confFile $(CONF_FILE) -includeImportedOntologies -webVowl -ignoreIndividuals -includeAnnotationProperties -uniteSections -rewriteAll

# below I removed:
#	-includeImportedOntologies
#	-ignoreIndividuals
#	-includeAnnotationProperties
# 	-uniteSections

build:
	java -jar $(WIDOCO_PATH) -ontFile $(ONTOLOGY_PATH) -outFolder $(OUT_FOLDER) -confFile $(CONF_FILE) -webVowl -rewriteAll
	cp -r img dist/
	mv dist/index-en.html dist/index.html
	sed -i 's|<h2>Release: Creation date</h2>|<h2>Release: 12 Sept. 2023</h2>|g' dist/index.html
	echo $(TODAY)
	sed -i "s|<dt>Modified on: Modified date</dt>|<dt>Modified on: $(TODAY)</dt>|g" dist/index.html
	sed -i 's|<a href="index-en.html">|<a href="index.html">|g' dist/index.html

    # sed -i "s|<dt>Modified on: Modified date</dt>|<dt>Modified on: $$current_date</dt>|g" dist/index.html


