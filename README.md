# Evernote to Pocket

Move your Evernote bookmarks to Pocket.

## Setup

1. Visit [Pocket's Developer Page](https://getpocket.com/developer/) and register an application for Desktop with Add permissions
2. Copy your *Consumer Key* and keep it for later
3. Visit [this link](http://reader.fxneumann.de/plugins/oneclickpocket/auth.php), enter your *Consumer Key* to obtain an *Access Key*
4. Copy the *Access Key* and keep it for later
5. Export your notes in Evernote format and save it somewhere

## Installation

This script uses [Pocket Ruby](https://github.com/turadg/pocket-ruby), so simply run `gem install pocket-ruby`.

## Usage

`ruby convert.rb [PATH TO EVERNOTE XML] [CONSUMER KEY] [ACCESS KEY]`

## Notes

1. This script will only import notes which have a source URL, it will skip regular notes
2. Pocket has a 320 calls-per-hour limit on each user account. If you have more than 320 bookmarks, you should modify the script to process in sections (I have not done this).
