import xml.dom.minidom
  
docs = xml.dom.minidom.parse("note.xml")
  
print(docs.nodeName)
print(docs.firstChild.tagName)