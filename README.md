Simple web service for announcements of events.
We plan to provide the following capabilities:
  - A calendar of planned events, with their detailed description
  - Subscribe to certain events, their location or reporters
  - Reports on the event's

Ideas are welcome.

-------------------

Простий веб-сервіс для оголошень про події.
Ми плануємо забезпечити такі можливості:
  - Розклад планованих подій, з їх докладним описом
  - Підписка на певні події, місця їх проведення або репортерів
  - Репортажі про проведені події

Будемо вдячні за ідеї.

-------------------

Простой веб-сервис для анонса событий.
Мы планируем обеспечить следующие возможности:
 - Расписание планируемых событий, с их подробным описанием
 - Подписка на определённые события, места их проведения либо репортёров
 - Репортажи о проведенных событиях

Идеи приветствуются.

-------------------


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

### Todo's
 - Add translation(first ukrainian,later-multilang)
 - Write Tests
 - Create design
 - Add RTF to reports and events
 - Add photo gallery
 - Add authorisation
 - Add crawling/scraping/aggregating events from outer space ;)
 - Add subscription, rss, etc

License
----

MIT


**Free Software, Hell Yeah!**

================================================================
Local TODOs

refine restrictions(buttons visibility, fields validation, etc)

facebook:
add import/export events

descr setup process
add seeds
add tests

fix date fields in edit forms

users:
fix authorization(resolve issue with identical emails)
add admin tool to manage users
add roles
add gravatar/etc

add tags

add i18n

add reports

gmaps :
move processing to backgraund
add maps to events
add maps to views/show
do not show map if theres no objects

geolocation:
add reverse geolocation
add geo-filtering events

security:
move secrets to secrets :)
sort it out with authorization(email-confirm,timeouts...)

events:
add list of reports below event(on view/show)