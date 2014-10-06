class CreateSampleData < ActiveRecord::Migration
  def change
    execute("insert into Admins(username, email, password_digest) values(
    'admin',
    'admin@omegacleaners.ca',
    '$2a$10$KvPyG0yK2pF3rqfZCeSJO.gLlm9.mGQglq7V0k5ixJQPGlqaCGWXa');")
    execute("insert into Companies(username, email, password_digest) values(
    'company1',
    'company1@omegacleaners.ca',
    '$2a$10$KvPyG0yK2pF3rqfZCeSJO.gLlm9.mGQglq7V0k5ixJQPGlqaCGWXa'
    );")
    execute("insert into Companies(username, email, password_digest) values(
    'company2',
    'company2@omegacleaners.ca',
    '$2a$10$KvPyG0yK2pF3rqfZCeSJO.gLlm9.mGQglq7V0k5ixJQPGlqaCGWXa'
    );")
    execute("insert into Cleaners(username, email, password_digest, firstname, lastname) values(
    'cleaner1',
    'cleaner1@omegacleaners.ca',
    '$2a$10$KvPyG0yK2pF3rqfZCeSJO.gLlm9.mGQglq7V0k5ixJQPGlqaCGWXa',
    'cleaner',
    'one'
    );")
    execute("insert into Cleaners(username, email, password_digest, firstname, lastname) values(
    'cleaner2',
    'cleaner2@omegacleaners.ca',
    '$2a$10$KvPyG0yK2pF3rqfZCeSJO.gLlm9.mGQglq7V0k5ixJQPGlqaCGWXa',
    'cleaner',
    'two'
    );")
    execute("insert into Events(company_id, start_time, end_time, start_hour, end_hour) values(
    1,
    '2014-10-04 18:00:00.000000',
    '2014-10-04 20:00:00.000000',
    7,
    9
    );")
    execute("insert into Events(company_id, start_time, end_time, start_hour, end_hour) values(
    2,
    '2014-10-04 19:00:00.000000',
    '2014-10-04 23:00:00.000000',
    8,
    10
    );")
  end
end
