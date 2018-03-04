# README

Melbourne Tourer is created with an idea to be a web app where you could bookmark and categorize places you want to visit in Melbourne.

Basic features include,
* Ability to add/edit a place - name, category, address, phone number, plus code, operating hours, best timing to visit, notes, cost per visit (per person, per family of 4), photo(s), host website for more information, best way to reach the place using PTV
* Ability to mark a place as visited
* Ability to move a place across categories
* Ability to archive a closed/inactive place with an archive note, and retrieve it back
* Ability to delete a place to trash and retrieve it back
* Favourites list (across categories)

**Place**

attributes: name:string(50), address:text, phone number:string(20), website:string(200), favourite:boolean, archived:boolean, deleted:boolen, visited:boolen

belongs_to: category (name, description)

has_one: plus_code (code:string(20), lon:string(20), lat:string(20))

has_many: operating_hours (day:string(20), start_time:time, end_time:time)

has_many: best_visit_timings (day:string(20), start_time:time, end_time:time)

has_many: notes (message:text)

has_one: cost_per_person (amount:float)

has_one: cost_per_family (amount:float, family_saver:boolean)

has_many: photos (name:string(50), format:string(10), image:binary:limit(2.megabytes))

has_many: how_to_reach_ptv (description:text)

has_one: archive_note (message:text)

---

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
