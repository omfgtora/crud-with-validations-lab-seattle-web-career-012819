
SongsController
  basic listing, viewing and editing
    lists all songs (FAILED - 1)
    views a single song (FAILED - 2)
    fetches a song for editing (FAILED - 3)
  creating a valid song
    creates a new Song (FAILED - 4)
    assigns and persists new song (FAILED - 5)
    redirects to the created song (FAILED - 6)
  creating an invalid song
    has not been persisted (FAILED - 7)
    re-renders the template (FAILED - 8)
  updating a song with valid data
    updates the song (FAILED - 9)
    redirects to the song (FAILED - 10)
  updating a song with invalid data
    does not persist changes (FAILED - 11)
    re-renders the 'edit' template (FAILED - 12)
  destroying a song
    destroys the requested song (FAILED - 13)
    redirects to the songs list (FAILED - 14)

Song
  is valid when expected
  is invalid without title (FAILED - 15)
  is invalid without release year when released is true (FAILED - 16)
  is valid without release year when released is false
  is invalid when the release year is in the future (FAILED - 17)
  is invalid if an artist tries to release the same song twice in a year (FAILED - 18)

songs/edit
  renders the edit song form (FAILED - 19)

songs/index
  renders a list of songs (FAILED - 20)

songs/new
  renders form (FAILED - 21)

Failures:

  1) SongsController basic listing, viewing and editing lists all songs
     Failure/Error: get :index

     AbstractController::ActionNotFound:
       The action 'index' could not be found for SongsController
     # ./spec/controllers/songs_controller_spec.rb:27:in `block (3 levels) in <top (required)>'

  2) SongsController basic listing, viewing and editing views a single song
     Failure/Error: get :show, { id: song.id }

     AbstractController::ActionNotFound:
       The action 'show' could not be found for SongsController
     # ./spec/controllers/songs_controller_spec.rb:32:in `block (3 levels) in <top (required)>'

  3) SongsController basic listing, viewing and editing fetches a song for editing
     Failure/Error: get :edit, { id: song.id }

     AbstractController::ActionNotFound:
       The action 'edit' could not be found for SongsController
     # ./spec/controllers/songs_controller_spec.rb:37:in `block (3 levels) in <top (required)>'

  4) SongsController creating a valid song creates a new Song
     Failure/Error: before { post(:create, { song: valid_attributes }) }

     AbstractController::ActionNotFound:
       The action 'create' could not be found for SongsController
     # ./spec/controllers/songs_controller_spec.rb:43:in `block (3 levels) in <top (required)>'

  5) SongsController creating a valid song assigns and persists new song
     Failure/Error: before { post(:create, { song: valid_attributes }) }

     AbstractController::ActionNotFound:
       The action 'create' could not be found for SongsController
     # ./spec/controllers/songs_controller_spec.rb:43:in `block (3 levels) in <top (required)>'

  6) SongsController creating a valid song redirects to the created song
     Failure/Error: before { post(:create, { song: valid_attributes }) }

     AbstractController::ActionNotFound:
       The action 'create' could not be found for SongsController
     # ./spec/controllers/songs_controller_spec.rb:43:in `block (3 levels) in <top (required)>'

  7) SongsController creating an invalid song has not been persisted
     Failure/Error: before { post(:create, { song: invalid_attributes}) }

     AbstractController::ActionNotFound:
       The action 'create' could not be found for SongsController
     # ./spec/controllers/songs_controller_spec.rb:60:in `block (3 levels) in <top (required)>'

  8) SongsController creating an invalid song re-renders the template
     Failure/Error: before { post(:create, { song: invalid_attributes}) }

     AbstractController::ActionNotFound:
       The action 'create' could not be found for SongsController
     # ./spec/controllers/songs_controller_spec.rb:60:in `block (3 levels) in <top (required)>'

  9) SongsController updating a song with valid data updates the song
     Failure/Error: patch :update, { id: song.id, song: new_attributes }

     AbstractController::ActionNotFound:
       The action 'update' could not be found for SongsController
     # ./spec/controllers/songs_controller_spec.rb:78:in `block (3 levels) in <top (required)>'

  10) SongsController updating a song with valid data redirects to the song
      Failure/Error: patch :update, { id: song.id, song: new_attributes }

      AbstractController::ActionNotFound:
        The action 'update' could not be found for SongsController
      # ./spec/controllers/songs_controller_spec.rb:78:in `block (3 levels) in <top (required)>'

  11) SongsController updating a song with invalid data does not persist changes
      Failure/Error: patch :update, { id: song.id, song: invalid_attributes }

      AbstractController::ActionNotFound:
        The action 'update' could not be found for SongsController
      # ./spec/controllers/songs_controller_spec.rb:94:in `block (3 levels) in <top (required)>'

  12) SongsController updating a song with invalid data re-renders the 'edit' template
      Failure/Error: patch :update, { id: song.id, song: invalid_attributes }

      AbstractController::ActionNotFound:
        The action 'update' could not be found for SongsController
      # ./spec/controllers/songs_controller_spec.rb:94:in `block (3 levels) in <top (required)>'

  13) SongsController destroying a song destroys the requested song
      Failure/Error: delete :destroy, { id: song.id }

      AbstractController::ActionNotFound:
        The action 'destroy' could not be found for SongsController
      # ./spec/controllers/songs_controller_spec.rb:109:in `block (3 levels) in <top (required)>'

  14) SongsController destroying a song redirects to the songs list
      Failure/Error: delete :destroy, { id: song.id }

      AbstractController::ActionNotFound:
        The action 'destroy' could not be found for SongsController
      # ./spec/controllers/songs_controller_spec.rb:109:in `block (3 levels) in <top (required)>'

  15) Song is invalid without title
      Failure/Error: expect(Song.new(missing_title)).to be_invalid
        expected `#<Song id: nil, title: nil, released: true, release_year: 2007, artist_name: "Air", genre: "Post-Rock", created_at: nil, updated_at: nil>.invalid?` to return true, got false
      # ./spec/models/song_spec.rb:24:in `block (2 levels) in <top (required)>'

  16) Song is invalid without release year when released is true
      Failure/Error: expect(Song.new(missing_release_year)).to be_invalid
        expected `#<Song id: nil, title: "Talisman", released: true, release_year: nil, artist_name: "Air", genre: "Post-Rock", created_at: nil, updated_at: nil>.invalid?` to return true, got false
      # ./spec/models/song_spec.rb:28:in `block (2 levels) in <top (required)>'

  17) Song is invalid when the release year is in the future
      Failure/Error: expect(Song.new(future_release_year)).to be_invalid
        expected `#<Song id: nil, title: "Talisman", released: true, release_year: 2020, artist_name: "Air", genre: "Post-Rock", created_at: nil, updated_at: nil>.invalid?` to return true, got false
      # ./spec/models/song_spec.rb:36:in `block (2 levels) in <top (required)>'

  18) Song is invalid if an artist tries to release the same song twice in a year
      Failure/Error: expect(Song.new(valid_attributes)).to be_invalid
        expected `#<Song id: nil, title: "Talisman", released: true, release_year: 2007, artist_name: "Air", genre: "Post-Rock", created_at: nil, updated_at: nil>.invalid?` to return true, got false
      # ./spec/models/song_spec.rb:41:in `block (2 levels) in <top (required)>'

  19) songs/edit renders the edit song form
      Failure/Error: visit edit_song_path(song)

      AbstractController::ActionNotFound:
        The action 'edit' could not be found for SongsController
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/rack-1.6.11/lib/rack/etag.rb:24:in `call'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/rack-1.6.11/lib/rack/conditionalget.rb:25:in `call'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/rack-1.6.11/lib/rack/head.rb:13:in `call'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/rack-1.6.11/lib/rack/session/abstract/id.rb:225:in `context'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/rack-1.6.11/lib/rack/session/abstract/id.rb:220:in `call'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/railties-4.2.11/lib/rails/rack/logger.rb:38:in `call_app'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/railties-4.2.11/lib/rails/rack/logger.rb:20:in `block in call'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/railties-4.2.11/lib/rails/rack/logger.rb:20:in `call'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/rack-1.6.11/lib/rack/methodoverride.rb:22:in `call'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/rack-1.6.11/lib/rack/runtime.rb:18:in `call'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/rack-1.6.11/lib/rack/lock.rb:17:in `call'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/rack-1.6.11/lib/rack/sendfile.rb:113:in `call'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/railties-4.2.11/lib/rails/engine.rb:518:in `call'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/railties-4.2.11/lib/rails/application.rb:165:in `call'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/rack-1.6.11/lib/rack/urlmap.rb:66:in `block in call'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/rack-1.6.11/lib/rack/urlmap.rb:50:in `each'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/rack-1.6.11/lib/rack/urlmap.rb:50:in `call'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/rack-test-0.6.3/lib/rack/mock_session.rb:30:in `request'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/rack-test-0.6.3/lib/rack/test.rb:244:in `process_request'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/rack-test-0.6.3/lib/rack/test.rb:58:in `get'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/capybara-3.14.0/lib/capybara/rack_test/browser.rb:65:in `process'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/capybara-3.14.0/lib/capybara/rack_test/browser.rb:43:in `process_and_follow_redirects'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/capybara-3.14.0/lib/capybara/rack_test/browser.rb:23:in `visit'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/capybara-3.14.0/lib/capybara/rack_test/driver.rb:45:in `visit'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/capybara-3.14.0/lib/capybara/session.rb:277:in `visit'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/capybara-3.14.0/lib/capybara/dsl.rb:51:in `block (2 levels) in <module:DSL>'
      # ./spec/views/songs/edit.html.erb_spec.rb:15:in `block (2 levels) in <top (required)>'

  20) songs/index renders a list of songs
      Failure/Error: visit songs_path

      AbstractController::ActionNotFound:
        The action 'index' could not be found for SongsController
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/rack-1.6.11/lib/rack/etag.rb:24:in `call'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/rack-1.6.11/lib/rack/conditionalget.rb:25:in `call'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/rack-1.6.11/lib/rack/head.rb:13:in `call'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/rack-1.6.11/lib/rack/session/abstract/id.rb:225:in `context'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/rack-1.6.11/lib/rack/session/abstract/id.rb:220:in `call'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/railties-4.2.11/lib/rails/rack/logger.rb:38:in `call_app'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/railties-4.2.11/lib/rails/rack/logger.rb:20:in `block in call'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/railties-4.2.11/lib/rails/rack/logger.rb:20:in `call'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/rack-1.6.11/lib/rack/methodoverride.rb:22:in `call'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/rack-1.6.11/lib/rack/runtime.rb:18:in `call'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/rack-1.6.11/lib/rack/lock.rb:17:in `call'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/rack-1.6.11/lib/rack/sendfile.rb:113:in `call'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/railties-4.2.11/lib/rails/engine.rb:518:in `call'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/railties-4.2.11/lib/rails/application.rb:165:in `call'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/rack-1.6.11/lib/rack/urlmap.rb:66:in `block in call'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/rack-1.6.11/lib/rack/urlmap.rb:50:in `each'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/rack-1.6.11/lib/rack/urlmap.rb:50:in `call'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/rack-test-0.6.3/lib/rack/mock_session.rb:30:in `request'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/rack-test-0.6.3/lib/rack/test.rb:244:in `process_request'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/rack-test-0.6.3/lib/rack/test.rb:58:in `get'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/capybara-3.14.0/lib/capybara/rack_test/browser.rb:65:in `process'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/capybara-3.14.0/lib/capybara/rack_test/browser.rb:43:in `process_and_follow_redirects'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/capybara-3.14.0/lib/capybara/rack_test/browser.rb:23:in `visit'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/capybara-3.14.0/lib/capybara/rack_test/driver.rb:45:in `visit'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/capybara-3.14.0/lib/capybara/session.rb:277:in `visit'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/capybara-3.14.0/lib/capybara/dsl.rb:51:in `block (2 levels) in <module:DSL>'
      # ./spec/views/songs/index.html.erb_spec.rb:25:in `block (2 levels) in <top (required)>'

  21) songs/new renders form
      Failure/Error: visit new_song_path

      AbstractController::ActionNotFound:
        The action 'new' could not be found for SongsController
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/rack-1.6.11/lib/rack/etag.rb:24:in `call'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/rack-1.6.11/lib/rack/conditionalget.rb:25:in `call'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/rack-1.6.11/lib/rack/head.rb:13:in `call'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/rack-1.6.11/lib/rack/session/abstract/id.rb:225:in `context'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/rack-1.6.11/lib/rack/session/abstract/id.rb:220:in `call'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/railties-4.2.11/lib/rails/rack/logger.rb:38:in `call_app'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/railties-4.2.11/lib/rails/rack/logger.rb:20:in `block in call'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/railties-4.2.11/lib/rails/rack/logger.rb:20:in `call'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/rack-1.6.11/lib/rack/methodoverride.rb:22:in `call'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/rack-1.6.11/lib/rack/runtime.rb:18:in `call'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/rack-1.6.11/lib/rack/lock.rb:17:in `call'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/rack-1.6.11/lib/rack/sendfile.rb:113:in `call'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/railties-4.2.11/lib/rails/engine.rb:518:in `call'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/railties-4.2.11/lib/rails/application.rb:165:in `call'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/rack-1.6.11/lib/rack/urlmap.rb:66:in `block in call'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/rack-1.6.11/lib/rack/urlmap.rb:50:in `each'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/rack-1.6.11/lib/rack/urlmap.rb:50:in `call'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/rack-test-0.6.3/lib/rack/mock_session.rb:30:in `request'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/rack-test-0.6.3/lib/rack/test.rb:244:in `process_request'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/rack-test-0.6.3/lib/rack/test.rb:58:in `get'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/capybara-3.14.0/lib/capybara/rack_test/browser.rb:65:in `process'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/capybara-3.14.0/lib/capybara/rack_test/browser.rb:43:in `process_and_follow_redirects'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/capybara-3.14.0/lib/capybara/rack_test/browser.rb:23:in `visit'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/capybara-3.14.0/lib/capybara/rack_test/driver.rb:45:in `visit'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/capybara-3.14.0/lib/capybara/session.rb:277:in `visit'
      # /Users/eroberts/.rvm/gems/ruby-2.3.3/gems/capybara-3.14.0/lib/capybara/dsl.rb:51:in `block (2 levels) in <module:DSL>'
      # ./spec/views/songs/new.html.erb_spec.rb:3:in `block (2 levels) in <top (required)>'

Finished in 0.4466 seconds (files took 3.72 seconds to load)
23 examples, 21 failures

Failed examples:

rspec ./spec/controllers/songs_controller_spec.rb:26 # SongsController basic listing, viewing and editing lists all songs
rspec ./spec/controllers/songs_controller_spec.rb:31 # SongsController basic listing, viewing and editing views a single song
rspec ./spec/controllers/songs_controller_spec.rb:36 # SongsController basic listing, viewing and editing fetches a song for editing
rspec ./spec/controllers/songs_controller_spec.rb:45 # SongsController creating a valid song creates a new Song
rspec ./spec/controllers/songs_controller_spec.rb:49 # SongsController creating a valid song assigns and persists new song
rspec ./spec/controllers/songs_controller_spec.rb:54 # SongsController creating a valid song redirects to the created song
rspec ./spec/controllers/songs_controller_spec.rb:62 # SongsController creating an invalid song has not been persisted
rspec ./spec/controllers/songs_controller_spec.rb:66 # SongsController creating an invalid song re-renders the template
rspec ./spec/controllers/songs_controller_spec.rb:81 # SongsController updating a song with valid data updates the song
rspec ./spec/controllers/songs_controller_spec.rb:86 # SongsController updating a song with valid data redirects to the song
rspec ./spec/controllers/songs_controller_spec.rb:97 # SongsController updating a song with invalid data does not persist changes
rspec ./spec/controllers/songs_controller_spec.rb:101 # SongsController updating a song with invalid data re-renders the 'edit' template
rspec ./spec/controllers/songs_controller_spec.rb:112 # SongsController destroying a song destroys the requested song
rspec ./spec/controllers/songs_controller_spec.rb:116 # SongsController destroying a song redirects to the songs list
rspec ./spec/models/song_spec.rb:23 # Song is invalid without title
rspec ./spec/models/song_spec.rb:27 # Song is invalid without release year when released is true
rspec ./spec/models/song_spec.rb:35 # Song is invalid when the release year is in the future
rspec ./spec/models/song_spec.rb:39 # Song is invalid if an artist tries to release the same song twice in a year
rspec ./spec/views/songs/edit.html.erb_spec.rb:14 # songs/edit renders the edit song form
rspec ./spec/views/songs/index.html.erb_spec.rb:24 # songs/index renders a list of songs
rspec ./spec/views/songs/new.html.erb_spec.rb:2 # songs/new renders form

