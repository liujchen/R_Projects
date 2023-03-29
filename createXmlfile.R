library(xml2)

# Create a new XML document with a root node
doc <- xml_new_root("keywords")

# Add some child nodes with keywords
xml_add_child(doc, "keyword", "chatgpt")
xml_add_child(doc, "keyword", "artificial intelligence")
xml_add_child(doc, "keyword", "machine learning")

# Save the XML document to a file
write_xml(doc, "keywords.xml")

cat("XML file created successfully!")