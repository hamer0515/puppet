#import "classes/*"
node 'vagrant-ubuntu-trusty-64' {
  notify { "Hello" }
  include demo
}
