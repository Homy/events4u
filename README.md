[![Hack Homy/events4u on Nitrous](https://d3o0mnbgv6k92a.cloudfront.net/assets/hack-l-v1-d464cf470a5da050619f6f247a1017ec.png)](https://lite.nitrous.io/hack_button?source=embed&runtime=rails&repo=Homy%2Fevents4u&file_to_open=README.md)

Simple web service for announcements of events.
We plan to provide the following capabilities:
 - A calendar of planned events, with their detailed description
 - Events import from the social networks
 - Subscribe to certain events, their location or reporters
 - Reports on the event's

Ideas are welcome.

-------------------

Простий веб-сервіс для оголошень про події.
Ми плануємо забезпечити такі можливості:
- Розклад планованих подій, з їх докладним описом
- Імпорт подій з соціальних мереж
- Підписка на певні події, місця їх проведення або репортерів
- Репортажі про проведені події

Будемо вдячні за ідеї.

-------------------

Простой веб-сервис для анонса событий.
Мы планируем обеспечить следующие возможности:
 - Расписание планируемых событий, с их подробным описанием
 - Импорт событий из социальных сетей
 - Подписка на определённые события, места их проведения либо репортёров
 - Репортажи о проведенных событиях

Идеи приветствуются.

-------------------

#Environment:
```
Rails version             4.2.1
Ruby version              2.2.1-p85 (x86_64-linux)
RubyGems version          2.4.6
Rack version              1.6.4
JavaScript Runtime        Node.js (V8)
Database adapter          mysql2

```
#Set up:
    git clone https://github.com/Homy/events4u.git
    cd events4u/
    bundle install
fix *config/database.yml*
create *config/secrets.yml* with the data like this:
FACEBOOK_APP_ID: ~~1621467891254778~~
FACEBOOK_APP_SECRET: ~~b1ac35415353813404637f26a37a574b3d195540d68ac8468a4d~~
GOOGLE_CLIENT_ID: ~~"57807402606845193-i1ladfhfds0a4coo0gf4rr6aer7v7gp1k4udfhftj.apps.googleusercontent.com"~~
GOOGLE_CLIENT_SECRET: ~~"WPcLvEzadfhxoo5xaedfggROtWWeCZ0EE"~~

    rake db:setup
    rails s
or if running on remote server

    rails s -b 0.0.0.0 



### Todo's
 -Add translation(first ukrainian,later-multilang)
 -Write Tests
 -Create design
 -Add RTF to reports and events
 -Add photo gallery
 -Add authorisation
 -Add crawling/scraping/aggregating events from outer space ;)
 -Add subscription, rss, API etc

License
----

MIT


**Free Software, Hell Yeah!**

================================================================
Local TODOs

refine restrictions(buttons visibility, fields validation, etc)

facebook:
add import/export events

add tests

users:
fix authorization(resolve issue with identical emails)
add admin tool to manage users
add roles
add gravatar/etc

add tags

add i18n

add reports

gmaps :
move processing to background
add maps to events
add maps to views/show
do not show map if there's no objects

geolocation:
add reverse geocoding
add geo-filtering events

security:
sort it out with authorization(email-confirm,timeouts...)

events:
add list of reports below event(on view/show)
API(need specs)