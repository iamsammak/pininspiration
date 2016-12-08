import React from 'react';
import { withRouter } from 'react-router';
import PinCard from '../pin/pin_card';
import Masonry from 'react-masonry-component';
import Modal from 'react-modal';


class UserPins extends React.Component {
  constructor(props) {
    super(props);
    // this.state = {
    //   openNewPinModal: false,
    //   pin_url: '',
    //   pin_image_url: '',
    //   pin_title: "",
    //   pin_description: "",
    //   pin_board_id: -1,
    //   pin_user_id: this.props.currentUser.id,
    //   errors: []
    // };
    // // TODO comment back in when you have internet or comment below out if testing with no internet
    // $.embedly.defaults.key = "066711cadc384f7fb4e7e0dc3a2d02f0";
    //
    // // this.createPin = this.props.createPin.bind(this);
    // // this.fetchBoards = this.props.fetchBoards.bind(this);
    // //
    // // this.handleNewPinSubmit = this.handleNewPinSubmit.bind(this);
    // // this.scrapeImages = this.scrapeImages.bind(this);
  }

  componentDidMount() {
    this.props.fetchUserPins(this.props.user.id);
  }

  isEmpty(obj) {
    for(var prop in obj) {
        if(obj.hasOwnProperty(prop))
            return false;
    }
    return true && JSON.stringify(obj) === JSON.stringify({});
  }

  // handleNewPinSubmit(e){
  //   e.preventDefault();
  //   this.state['errors'] = [];
  //   if (this.state.pin_url === "") {
  //     this.state['errors'] = this.state.errors.slice().concat(['URL cannot be blank!']);
  //   }
  //   if (this.state.pin_image_url === "") {
  //     this.state['errors'] = this.state.errors.slice().concat(['Please select an image!']);
  //   }
  //   if (this.state.pin_title === "") {
  //     this.state['errors'] = this.state.errors.slice().concat(['Title cannot be blank!']);
  //   }
  //   if (this.state.pin_description === "") {
  //     this.state['errors'] = this.state.errors.slice().concat(['Description cannot be blank!']);
  //   }
  //   if (this.state.pin_board_id === -1) {
  //     this.state['errors'] = this.state.errors.slice().concat(['Please select a board to save the pin!']);
  //   }
  //   if (this.state.errors.length !== 0) {
  //     this.closePinModal();
  //     this.openPinModal();
  //     this.thing.classList.toggle("m-fadeIn");
  //   } else {
  //     this.createPin({
  //       pin: {
  //         title: this.state.pin_title,
  //         description: this.state.pin_description,
  //         user_id: this.state.user_id,
  //         board_id: this.state.pin_board_id,
  //         url: this.state.pin_url,
  //         image_url: this.state.pin_image_url
  //       }
  //     });
  //     this.closePinModal();
  //   }
	// }
  //
  // update(field){
  //   return e => { this.setState({[field]: e.currentTarget.value }); };
  // }
  //
  // scrapeImages(e) {
  //   e.preventDefault();
  //   let url = e.currentTarget.value;
  //   this.setState({pin_url: url});
  //
  //   $.embedly.extract(url).progress(data => {
  //     let images = data.images;
  //     let $container = $('<div class=\'image-container\'>');
  //     images.forEach( (image, idx) => {
  //       // testing
  //       // let imgUrl = $.embedly.display.resize(image.url, {query: {height: 200, width: 300, quality: 1}});
  //       let imgUrl = $.embedly.display.resize(image.url, {query: {height: 400, width: 600}});
  //       // let imgUrl = $.embedly.display.resize(image.url, {query: {height: 500, width: 500, grow: true}});
  //       // this works - high quality
  //       // let imgUrl = $.embedly.display.resize(image.url);
  //       let $img = $(`<img class=\'scraped-image-unchecked scraped-image${idx}\'>`);
  //       $img.on("click", (e2) => {
  //         this.setState({pin_image_url: imgUrl});
  //         $('.image-container').children().each(function() {
  //           $(this).attr('class', 'scraped-image-unchecked');
  //         });
  //         $img.attr('class', 'scraped-image-checked');
  //       }).bind(this);
  //       $img.attr('src', imgUrl);
  //       $container.append($img);
  //     });
  //     $('.new-pin-image-area').html($container);
  //   });
  // }
  //
  // openPinModal() {
  //   this.fetchBoards(this.props.currentUser.id);
  //   this.setState({
  //     openNewPinModal: true
  //   });
  //   this.thing.classList.toggle("m-fadeIn");
  // }
  //
  // closePinModal() {
  //   this.setState({
  //     openNewPinModal: false
  //   });
  // }
  //
  // renderErrors(){
  //   return(
  //     <ul>
  //       {this.state.errors.map( (error, i) => (
  //         <li key={`error-${i}`} className='error-prompt'>
  //           {error}
  //         </li>
  //       ))}
  //     </ul>
  //   );
  // }

  render() {
    // this.thing = document.getElementById("add-pin-menu-id");
    //
    // let newPinStyle = {
    //   overlay : {
    //   position        : 'fixed',
    //   top             : 0,
    //   left            : 0,
    //   right           : 0,
    //   bottom          : 0,
    //   backgroundColor : 'rgba(117, 117, 117, 0.75)'
    //   },
    //   content : {
    //     position: 'fixed',
    //     top: '50%',
    //     left: '50%',
    //     right: 'auto',
    //     bottom: 'auto',
    //     backgroundColor : 'rgba(255, 255, 255, 1)',
    //     borderRadius: '4px',
    //     width: '600px',
    //     padding: '2rem',
    //     minHeight: '20rem',
    //     minWidth: '10rem',
    //     maxWidth: '60rem',
    //     transform: 'translate(-50%,-50%)',
    //     boxShadow : '3px 3px 10px black',
    //   }
    // };
    //
    //
    // if (this.props.user !== undefined && this.props.user.id === this.props.currentUser.id) {
    //   newPin = (
    //     <section className="new-pin-card" key="new-pin" onClick={this.openPinModal.bind(this)}>
    //       <p className='create-a-pin'>Create a pin</p>
    //       <i></i>
    //     </section>
    //   );
    // }
    //
    // let boardList = null;
    // if ( this.props.boards !== undefined && Object.keys(this.props.boards).length !== 0) {
    //   boardList = Object.keys(this.props.boards).map( (boardKey, idx) => {
    //     return (<option key={boardKey} value={this.props.boards[boardKey].id}>{this.props.boards[boardKey].title}</option>);
    //   });
    // }

    let newPin = null;
    let pins = "";
    let pinArr = [];
    if (this.props.pins === undefined) {
      return (<div className="pins-container">""</div>);
    } else {
      pinArr = $.map(this.props.pins, (value, index) => {
        return [value];
      });
    }

    if (!this.isEmpty(this.props.pins)) {
      pins = pinArr.map((pin) => (
        <PinCard
                  key={pin.id+pin.title}
                  pin={pin}
                  user={this.props.user}
                  currentUser={this.props.currentUser}
                  updatePin={this.props.updatePin}
                  deletePin={this.props.deletePin}/>
      ));
    }

    return (
      // <div>
        <Masonry
          className="pins-container"
          elementType={'ul'}
          disableImagesLoaded={false}
          updateOnEachImageLoad={false} >
          {newPin}
          {pins}
        </Masonry>

        // <Modal className='addNewPinModal'
        //   isOpen={this.state.openNewPinModal}
        //   onRequestClose={this.closePinModal.bind(this)}
        //   style={newPinStyle}>
        //   <section className="modal-form-container">
        //     <form	className="modal-form-box">
        //       <div className="modal-form">
        //         <label className='modal-label'>
        //           <p className='modal-label-text'>Enter a New URL</p>
        //           <input
        //             type='text'
        //             onChange={this.scrapeImages}
        //             defaultValue='http://'
        //             className="title-input modal-input" />
        //         </label>
        //         <div className='modal-input new-pin-image-area'>
        //           <i className="fa fa-picture-o fa-4x background-image" aria-hidden="true"></i>
        //           <span className="background-image-prompt">Click on image after entering valid URL</span>
        //         </div>
        //         <input
        //           type="text"
        //           onChange={this.update("pin_title")}
        //           className="title-input modal-input"
        //           placeholder='Title'/>
        //
        //         <textarea name='description'
        //           onChange={this.update("pin_description")}
        //           className="description-input modal-input"
        //           placeholder='What is your pin about?'></textarea>
        //          <select className='modal-input modal-board-select' onChange={this.selectBoard}>
        //            <option disabled selected value> -- select a board -- </option>
        //            {boardList}
        //          </select>
        //
        //          <div>
        //            { this.renderErrors() }
        //          </div>
        //         <div className="modal-save-button-box">
        //           <input type="submit"
        //             className="modal-save-button"
        //             value='Save Pin'
        //             onClick={this.handleNewPinSubmit}/>
        //         </div>
        //       </div>
        //     </form>
        //   </section>
        // </Modal>
      // </div>
    );
  }
}

export default withRouter(UserPins);
