package;


import haxe.io.Bytes;
import haxe.io.Path;
import sys.FileSystem;
import lime.graphics.Image;


class Test {


	public static function main () {


		var files = FileSystem.readDirectory ("files");
		var images = new Array<String> ();

		for (name in files) {

			var ext = Path.extension (name);

			switch (ext) {

			case "jpg", "png":
				images.push ("files/" + name);

			}

		}

		if (images.length == 0) {
			trace ("found no images");
		}

		var rand = new neko.Random ();
		rand.setSeed (1);

		var image = null;

		for (i in 0...100) {
	
			var name = images[rand.int (images.length)];
			image = Image.fromFile (name);

		}

	}


}
