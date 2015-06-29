# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

batman = Article.create! title: "Batman", text: <<-ARTICLE
Batman is a fictional character created by the artist Bob Kane and writer Bill Finger. A comic book superhero, Batman first appeared in Detective Comics #27 (May 1939), and since then has appeared primarily in publications by DC Comics. Originally referred to as "The Bat-Man" and still referred to at times as "The Batman", he is additionally known as "The Caped Crusader", "The Dark Knight", and the "World's Greatest Detective," among other titles. (from Wikipedia)
ARTICLE

superman = Article.create! title: "Superman", text: <<-ARTICLE
Superman is a fictional comic book superhero appearing in publications by DC Comics, widely considered to be an American cultural icon. Created by American writer Jerry Siegel and Canadian-born American artist Joe Shuster in 1932 while both were living in Cleveland, Ohio, and sold to Detective Comics, Inc. (later DC Comics) in 1938, the character first appeared in Action Comics #1 (June 1938) and subsequently appeared in various radio serials, television programs, films, newspaper strips, and video games. (from Wikipedia)
ARTICLE

krypton = Article.create! title: "Krypton", text: <<-ARTICLE
Krypton is a fictional planet in the DC Comics universe, and the native world of the super-heroes Superman and, in some tellings, Supergirl and Krypto the Superdog. Krypton has been portrayed consistently as having been destroyed just after Superman's flight from the planet, with exact details of its destruction varying by time period, writers and franchise. Kryptonians were the dominant people of Krypton. (from Wikipedia)
ARTICLE

spiderman = Article.create! title: "Spiderman", text: <<-ARTICLE
Spider-Man is a fictional superhero appearing in American comic books published by Marvel Comics. The character was created by writer-editor Stan Lee and writer-artist Steve Ditko, and first appeared in Amazing Fantasy #15 (Aug. 1962). Lee and Ditko conceived the character as an orphan being raised by his Aunt May and Uncle Ben, and as a teenager, having to deal with the normal struggles of adolescence in addition to those of a costumed crime-fighter. (from Wikipedia)
ARTICLE

antman = Article.create! title: "Antman", text: <<-ARTICLE
Ant-Man is the name of several fictional characters appearing in books published by Marvel Comics. Ant-Man was originally the superhero persona of Hank Pym, a brilliant scientist who invented a substance that allowed him to change his size. Hank Pym was created by Stan Lee, Larry Lieber, and Jack Kirby and first appeared in Tales to Astonish #27 (Jan. 1962); his first appearance as Ant-Man was in Tales to Astonish #35 (Sept. 1962). (from Wikipedia)
ARTICLE

Comment.create! commenter: "Lois Lane", article: superman, body: <<-COMMENT
I want to meet Superman again, does anyone know where I can find him?
COMMENT

Comment.create! commenter: "The Joker", article: batman, body: <<-COMMENT
Haha, Batman, you will see your bat signal tonight!
COMMENT

Comment.create! commenter: "Robin", article: batman, body: <<-COMMENT
Enough with the games Joker.
COMMENT

Comment.create! commenter: "Riddler", article: batman, body: <<-CONTENT
Did someone say games?
CONTENT
