# PinThat!

[Live site][pinspiration]

[pinspiration]: http://www.pinthat.space

PinThat is inspired by the simplicity of Pinterest and built using Ruby on Rails and React.

It is a full-stack web application built on the following:

*  Rails backend
*  React/Redux frontend
*  Postgres RDBMS

![login]

## Features

### Single Page App

PinThat uses ![React Router] to keep all its content on a single root page.

[React Router]: [https://github.com/ReactTraining/react-router]

### New account creation, login and demo login

Created a demo login button that features an auto animated login. A 'phantomLogin' if you will, which utilizes JS setInterval function and callbacks to create the autocompletion animation.

![logindemogif]

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

Scroll through all pins with infinite scroll feature. Loading 15 pins per scroll
![homefeed]

### Quick Navigation Dropdown

User has access to a dropdown menu for quick navigation to their boards and home feed

![quickdropdown]

### User Profile

Using masonry User has a live view of their boards, pins, followers and followings

![userprofile]

### Pin Modal

Using React Modal creates a zoomed in view for users to get a clearer picture of their favorite pins

![pindetailmodal]

### Realtime Search

User can search through pins matching search keyword to pin titles and descriptions

![search]

### Scraping Live Images

Using Embedly users can create pin and scrape real images from live websites by entering the website url in the create pin form

![createpin]

## Future Features

The next steps in developing PinThat! will be:

### Comments

Allow users to leave comments on pins to further inspire one another.

### Tags

Creating tags for each image will allow for a realtime search to be better utilized.


[login]: ./docs/screenshots/login.png
[logindemogif]: ./docs/screenshots/login_demo.gif

[homefeed]: ./docs/screenshots/homefeed.png
[userprofile]: ./docs/screenshots/userprofile.png
[quickdropdown]: ./docs/screenshots/quickdropdown.png
[pindetailmodal]: ./docs/screenshots/pindetailmodal.png
[search]: ./docs/screenshots/search.png
[createpin]: ./docs/screenshots/createpin.png
