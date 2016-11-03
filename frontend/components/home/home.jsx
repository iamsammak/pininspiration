import React from 'react';
import Modal from 'react-modal';
import { Link, withRouter } from 'react-router';
import NavContainer from '../nav/nav_container';
import PinsContainer from '../pin/pins_container';

class Home extends React.Component {
  constructor (props) {
    super(props);
    this.state = {
      openNewBoardModal: false,
      title: "",
      description: "",
      user_id: this.props.currentUser.id,
      openNewPinModal: false,
      pin_url: '',
      pin_image_url: '',
      pin_title: "",
      pin_description: "",
      pin_board_id: -1,
      pin_user_id: this.props.currentUser.id,
      errors: []
    };
  }

  render() {
    // let pincomponent = null;
    // if (this.props.location.pathname === "/home/" || this.props.location.pathname === "/") {
    //   pincomponent = <PinsContainer />;
    // }

    return (
      <section className="home-container">
        <div className='nav-bar'>
          <NavContainer />
        </div>

        {this.props.children}
      </section>
    );
  }
}

export default withRouter(Home);
