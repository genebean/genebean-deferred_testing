# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include deferred_testing
class deferred_testing {
  $pw = 'p@55w0rd'
  file { '/tmp/secrets':
    ensure  => file,
    content => $pw.node_encrypt::secret()
  }
}
