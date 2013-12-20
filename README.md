Portable 'echo' command replacement
======================================================================

  * Copyright (C) 2013 SATOH Fumiyasu @ OSS Technology Corp., Japan
  * License: GNU General Public License version 3
  * URL: <https://GitHub.com/fumiyas/Reverb.sh>
  * Home: <http://fumiyas.github.io/>

Download:

``` console
$ wget -q https://raw.github.com/fumiyas/Reverb.sh/master/Reverb.sh
$ sudo mkdir -p -m 0755 /usr/local/lib/sh
$ sudo cp Reverb.sh /usr/local/lib/sh
$ sudo chmod 0755 /usr/local/lib/sh/Reverb.sh
```

Library mode:

``` console
$ export PATH="/usr/local/lib/sh:$PATH"
$ sh -c '. Reverb.sh; reverb Foo Bar'
Foo Bar
$ sh -c '. Reverb.sh; reverb Foo; reverb Bar'
Foo
Bar
$ sh -c '. Reverb.sh; reverb -n Foo; reverb Bar'
FooBar
```

Command mode:

``` console
$ sudo ln -s /usr/local/lib/sh/Reverb.sh /usr/local/bin/reverb
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
$ sudo ln -s /usr/local/lib/sh/Reverb.sh /usr/local/bin/にゃんぱすー
$ にゃんぱすー
にゃんぱすー
```

