package trivy
default ignore = true

ignore = false {
  contains(input.PkgName, "openssl")
}

ignore = false {
  contains(input.Title, "openssl")
}
