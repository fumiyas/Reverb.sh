Portable 'echo' command replacement
======================================================================

  * Copyright (C) 2013 SATOH Fumiyasu @ OSS Technology Corp., Japan
  * License: GNU General Public License version 3
  * URL: <https://GitHub.com/fumiyas/Reverb.sh>
  * Home: <http://fumiyas.github.io/>

Download:

``` console
$ wget -q https://raw.github.com/fumiyas/Reverb.sh/master/Reverb.sh
```

Library mode:

``` console
$ sh -c '. ./Reverb.sh; reverb Foo Bar'
Foo Bar
$ sh -c '. ./Reverb.sh; reverb Foo; reverb Bar'
Foo
Bar
$ sh -c '. ./Reverb.sh; reverb -n Foo; reverb Bar'
FooBar
```

Command mode:

``` console
$ chmod +x 0755 Reverb.sh
$ ln -s Reverb.sh reverb
$ ./reverb
$ reverb Foo Bar
Foo Bar
$ reverb Foo; reverb Bar
Foo
Bar
$ reverb -n Foo; reverb Bar
FooBar
```

にゃんぱすー mode:

``` console
$ ln -s Reverb.sh にゃんぱすー
$ export PATH="`pwd`:$PATH"
$ にゃんぱすー
にゃんぱすー
```

