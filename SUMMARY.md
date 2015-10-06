# Summary

## Work History

I use git (or any source control) as a means to communicate to other developers.
As such I have included my git history for you to see as I think it is important.

As stated I rebase when spiking to be more descriptive in my commits but think
it important to include them here. I also have a shortcut command in my editor 
that automatically commits and adds a 'WIP' (Work In Progress) commit history. I
see I have accidently done this on this project. Muscle memory or fat fingers I 
guess.

```
* 0feff9e (HEAD, master) Finished README
* d5043bd Last 'thought' entry into SCRATCHPAD
* 2ed1a77 WIP
* 7ce3d8f Added integration test
* ab9e306 Added exporter
* 28f48ca Moved the spiked code of parsr.rb into lib/importer.rb - added two general tests
* 5f60a9e SPIKE - added parse.rb to get parse the input.csv file
* fd91f50 Can now deal with multiple stock objects
* 5e3dca3 Renamed lib/decorator to lib/decorators
* aa8784f Split up the decorators
* d0750a1 Flushed out the rest of the decorator attribs
* e30d9e3 Added in tests for the decorators. Think I've got this back under control again.
* ac5fbe0 SPIKING - Adding ModifierDecorator to see if that will work
* a665df4 SPIKING - don't want to use extend want a decorator instead
* 10d91ee SPIKING - using Representable - adding quick test to prove it is ok
* 443c497 Actually flip the test cases round, makes more sense
* 379432d Added tests for a stock item with modifiers
* 540884c Get rid of two currency classes. Idiot. Should move this out to live on its own I guess
* 7457c35 Linked up modifiers to stock
* 3394b5f Added modifier model and basic tests
* b2e872e Added rspec, virtus. Added stock model and rudementary test
* ceb3d82 Added scratchpad
* 3a03851 Actually add the README - idiot.
* 082bba8 Got rid of pdf and added README
* 0193e99 Initial Commit - ruby 2.2.0p0
```

During commit '28f48ca' I think I SPIKED too long with the csv parser. I was 
too cocky in this. Having been on a personal project I was too cocky in thinking
I could get a simple solution to this without too much bother. I ended up going
down a rabbit hole and probably made a few bad design decisions.

I think keeping away from RAILS was beneficial. I probably should take away 
the need to include activesupport.

All things being equal I am happy enough with this solution. I think I am going
down the right path. Lots of tweaks could and should be made. Now that I have
a good suite of tests I would be pretty confident (after a few changes) in putting
this into a system.
