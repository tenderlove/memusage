## README

Show references

```
$ bundle
$ rake db:migrate
$ RAILS_ENV=production rake db:migrate
$ RAILS_ENV=production RUBYOPT='-I. -rx' ruby -I. -e'require "config/environment"; GC.start; puts ObjectSpace.dump_all.path'
```

Many strings are allocated here:

```
"file"=>"/Users/aaron/git/rails/activesupport/lib/active_support/dependencies.rb", "line"=>302
```

But I can't find what is holding a reference.
