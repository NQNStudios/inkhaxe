# inkhaxe
Port from C# to Haxe for the ink runtime: So you can use inkle's ink engine directly for all other target platforms (Javascript, Flash, Neko, C++, Java, etc.), besides just C#.

Basically, it should run similar to the original runtime as found in https://github.com/inkle/ink/blob/master/Documentation/RunningYourInk.md
	
However, here are the differences:
	
- Package name is `ink.runtime`, not `Ink.Runtime`. So, you call something like `new ink.runtime.Story(...)`.
- BindExternalFunction has no method overloading because Haxe doesn't support it, so you must explicitly use the required function for the stipulated number of parameters, such as `BindExternalFunction0(...)`,`BindExternalFunction1(...)`,`BindExternalFunction2(...)`,`BindExternalFunction3(...)`  or use `BindExternalFunctionGeneral()` for more than 3 parameters.

Target demo platforms that have been tested and proven to work:
- Javascript

____

For any issues, check the Issues tab in the github repository.

## Building InkHaxe

### For Javascript

`haxe -main Inkruntime -js InkHaxe.js` will generate a script file containing the entire runtime.
To embed it in your web projects, add `<script src="InkHaxe.js"></script>` to your `index.html` file. This will allow you to construct and execute a Story object in your other scripts like so:
```
myStory = new ink.runtime.Story(inkFile);
```

See `bin/index-demo.html` for an in-depth example of running your Ink project in a web page.