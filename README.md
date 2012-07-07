# Hotlight

This app queries KrispKreme for the status of the HotLight.  Either by zipcode or store id.

For example

    Hotlight.status('zipcode'=>'98119')
    Hotlight.status('locations'=>'1115,1112')

## Installation

Add this line to your application's Gemfile:

    gem 'hotlight'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hotlight

## Usage

Available via command line

    $ hotlight -z 98101

    Sodo at 1900 1st Avenue S Seattle, WA 98134
    location = 1115, distance = 2.4 m
    Hotlight dark :(

    North Seattle at 12505 Aurora Avenue N Seattle, WA 98133
    location = 1114, distance = 8.9 m
    Hotlight dark :(

    Issaquah at 6210 East Lake Sammamish Parkway Issaquah, WA 98029
    location = 1111, distance = 15.1 m
    Hotlight dark :(


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
