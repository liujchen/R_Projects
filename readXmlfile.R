library(xml2)

# Load XML file
doc <- read_xml("keywords.xml")

# Find all nodes containing the keyword "chatgpt"
nodes <- xml_find_all(doc, ".//*[contains(text(), 'chatgpt')]")

# Print the results
cat(sprintf("Found %d nodes containing 'chatgpt':\n", length(nodes)))
for (node in nodes) {
  cat(xml_text(node), "\n")
}