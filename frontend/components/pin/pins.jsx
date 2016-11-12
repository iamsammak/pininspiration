import React from 'react';
import { Link, withRouter } from 'react-router';
import PinCard from './pin_card';

import Masonry from 'react-masonry-component';
import _ from 'underscore';


class Pins extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      page: 1,
      total_pages: 15
    };
  }

  componentDidMount() {
    this.props.fetchAllPins(this.state.page);
  }

  listenForScroll() {
    $(window).off("scroll");
    let throttledCallback = _.throttle(this.nextPage.bind(this), 20);
    $(window).on("scroll", throttledCallback);
  }

  isEmpty(obj) {
    for(var prop in obj) {
        if(obj.hasOwnProperty(prop))
            return false;
    }

    return true && JSON.stringify(obj) === JSON.stringify({});
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

  render() {
    let pins = "";
    // error5
    if (!this.isEmpty(this.props.pins)) {
      pins = this.props.pins.map((pin) => (
        <PinCard
                  key={pin.id + pin.title}
                  pin={pin}
                  user={this.props.user}
                  currentUser={this.props.currentUser}
                  fetchPin={this.props.fetchPin}
                  updatePin={this.props.updatePin}
                  deletePin={this.props.deletePin}
                  canEditPin={false}/>
      ));
    }
    this.listenForScroll();
    return (
      <Masonry
        className="pins-container"
        elementType={'ul'}
        disableImagesLoaded={false}
        updateOnEachImageLoad={false} >
        {pins}
    </Masonry>

    );
  }
}

export default withRouter(Pins);
