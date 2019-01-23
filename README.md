
# deferred_testing

This module is just to demonstrate an issue with rspec-puppet related to Deferred types

```
╔ ☕️  gene:~/Downloads/deferred_testing
╚ᐅ pdk test unit
pdk (INFO): Using Ruby 2.5.1
pdk (INFO): Using Puppet 6.0.2
[✔] Preparing to run the unit tests.
[✖] Running unit tests.
  Evaluated 1 tests in 7.738812 seconds: 1 failures, 0 pending.
failed: rspec: ./spec/classes/deferred_testing_spec.rb:12: error during compilation: Parameter content failed on File[/tmp/secrets]: Munging failed forvalue #<#<Class:0x00007fd4105c6660>:0x00007fd4105be6e0 @hash=2177598638308667914, @name="node_decrypt", @arguments=["encrypted"]> in class content: no implicit conversion of #<Class:0x00007fd4105c6660> into String (file: /Users/gene.liverman/Downloads/deferred_testing/spec/fixtures/modules/deferred_testing/manifests/init.pp, line: 9)
  deferred_testing on centos-7-x86_64 should compile into a catalogue without dependency cycles
  Failure/Error:
        let(:facts) { os_facts }

        it { is_expected.to compile }
      end
    end

╔ ☕️  gene:~/Downloads/deferred_testing   [exit code 1]
╚ᐅ
```
