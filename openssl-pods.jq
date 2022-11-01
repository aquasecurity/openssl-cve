.items[] | 
select(
  any(
    .report.vulnerabilities[].title; 
    contains("openssl")
  )
) | 
{ 
  "pod": (.metadata.namespace + "/" + .metadata.name), 
  "image": (.report.artifact.repository + ":" + .report.artifact.tag)
}
