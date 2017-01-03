# PinThat!

[Live site][pinspiration]

[pinspiration]: http://www.pinthat.space

PinThat is inspired by the simplicity of Pinterest and built using Ruby on Rails and React.

It is a full-stack web application built on the following:

*  Rails backend
*  React/Redux frontend
*  Postgres RDBMS

![login]
[login]: ./docs/screenshots/login.png

## Features

### Single Page App

PinThat uses [React Router](https://github.com/ReactTraining/react-router) to keep all its content on a single root page.

### New account creation, login and demo login

Created a demo login button that features an auto animated login. Round of applause to Baymax for being the Demo user.
A 'phantomLogin' if you will, which utilizes JS setInterval function and callbacks to create the autocompletion animation.

![logindemogif]
[logindemogif]: ./docs/screenshots/login_demo.gif

```js
// Demo User
phantomLogin($el, word, callback){

  var typing = setInterval(function(){
    $el.val( $el.val() + word.slice(0,1) );
    word = word.substr(1);

    if (!word){
      clearInterval(typing);
      callback();
    }
  }, 60);
}

beMyGuest(e, username, password) {
  e.preventDefault();

  hashHistory.push('/login');

  let $username = $('.username');
  let $password = $('.password');
  let $submitButton = $('.submit-button');
  let that = this;
  this.phantomLogin($username, username, () => {
    this.phantomLogin($password, password, ()=> {
      that.setState({username, password });
      $submitButton.click();
    });
  });
}
```

### Discover Feed on Home Page

![homefeed]
[homefeed]: ./docs/screenshots/homefeed.png

Scroll through all pins with infinite scroll feature.

I paired jQuery '.on()' and '.off()' method and [underscore.js](http://underscorejs.org/#throttle) throttle function to create the infinite scroll feature.

The throttle function takes in a function and a wait period and will invoke the passed function at most once every 'wait' milliseconds.

```js
listenForScroll() {
  $(window).off("scroll");
  let throttleCallback = _.throttle(this.nextPage.bind(this), 20);
  $(window).on("scroll", throttleCallback);
}

nextPage() {
  let view = this;
  if ($(window).scrollTop() > $(document).height() - $(window).height() - 10) {
    if (this.state.page < this.state.total_pages) {
      this.setState({page: this.state.page + 1});
      this.props.fetchAllPins(this.state.page);
    }
  }
}
```

![homefeedscroll]
[homefeedscroll]: ./docs/screenshots/homefeed_scroll.gif

The state of this react-component will hold 'page' and 'total_pages' which will contain 15 pins. Therefore each call to nextPage() will return the next page of pins.

```js
class Pins extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      page: 1,
      total_pages: 15
    };
  }
}
```

### Navigation Bar

![navbar]
[navbar]: ./docs/screenshots/navbar.png

The nav bar features a realtime search bar, a dropdown menu, user profile, and logout button

#### Realtime Search Bar

User can search through pins matching search keyword to pin titles and descriptions

![search]
[search]: ./docs/screenshots/search.png

A 'keyup' event handler will run a search function to fetch any pins that match the search word

```js
onKeyUp(e) {
  e.preventDefault();
  if (e.key !== "Enter") {
    this.setState({searchWord: e.currentTarget.value});
    this.props.fetchSearchPins(this.state.searchWord);
    this.props.router.push('/search');
  } else {
    $('.search-bar').val('');
    this.setState({searchWord: ""});
  }
}
```

#### Quick Dropdown Menu

User can access the dropdown menu for quick navigation to their boards and home feed
![quickdropdown]
[quickdropdown]: ./docs/screenshots/quickdropdown.png

#### User Profile

User's profile provides a live view of their boards, pins, followers and followings

![userprofile]
[userprofile]: ./docs/screenshots/userprofile.png

### Create Button

Located in the bottom right is a plus button that will trigger a popup menu with the options to "create a pin" and "create a board"

![createbutton]
[createbutton]: ./docs/screenshots/createbutton.png
![createbuttongif]
[createbuttongif]: ./docs/screenshots/create_button.gif

### Scraping Live Images

Using [Embedly](replace with embedly URL) users can create pin and scrape real images from live websites by entering the website url in the create pin form

![createpin]
[createpin]: ./docs/screenshots/createpin.png

```js
scrapeImages(e) {
  e.preventDefault();
  let url = e.currentTarget.value;
  this.setState({pin_url: url});

  $.embedly.extract(url).progress(data => {
    let images = data.images;
    let $container = $('<div class=\'image-container\'>');
    images.forEach( (image, idx) => {
      let imgUrl = $.embedly.display.resize(image.url, {query: {height: 400, width: 600}});
      let $img = $(`<img class=\'scraped-image-unchecked scraped-image${idx}\'>`);
      $img.on("click", (e2) => {
        this.setState({pin_image_url: imgUrl});
        $('.image-container').children().each(function() {
          $(this).attr('class', 'scraped-image-unchecked');
        });
        $img.attr('class', 'scraped-image-checked');
      }).bind(this);
      $img.attr('src', imgUrl);
      $container.append($img);
    });
    $('.new-pin-image-area').html($container);
  });
}
```

### Pin Modal

Using React Modal creates a zoomed in view for users to get a clearer picture of their favorite pins

![pindetailmodal]
[pindetailmodal]: ./docs/screenshots/pindetailmodal.png

## Future Features

The next steps in developing PinThat! will be:

### Comments

Allow users to leave comments on pins to further inspire one another.

### Tags

Creating tags for each image will allow for a realtime search to be better utilized.
