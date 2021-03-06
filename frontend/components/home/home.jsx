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

    // TODO comment back in when you have internet or comment below out if testing with no internet
    $.embedly.defaults.key = "066711cadc384f7fb4e7e0dc3a2d02f0";

    this.createBoard = this.props.createBoard.bind(this);
    this.createPin = this.props.createPin.bind(this);

    this.fetchBoards = this.props.fetchBoards.bind(this);
    this.selectBoard = this.selectBoard.bind(this);

    this.handleNewBoardSubmit = this.handleNewBoardSubmit.bind(this);
    this.handleNewPinSubmit = this.handleNewPinSubmit.bind(this);
    this.scrapeImages = this.scrapeImages.bind(this);
  }

  componentWillReceiveProps(nextProps) {
    $('body').css('overflow-y', 'auto');
    // Return from new board
    if (this.props.board === undefined && nextProps.board !== undefined) {
      this.props.router.push(`boards/${nextProps.pin.board.id}`);

    // Return from new board
    } else if (this.props.board !== undefined && nextProps.board !== undefined && this.props.board.id !== nextProps.board.id) {
      this.props.router.push(`boards/${nextProps.board.id}`);

    // Return from new pin.
    } else if (this.props.board !== undefined && nextProps.board !== undefined && this.props.board.id === nextProps.board.id) {
      //
    }
  }

  handleNewBoardSubmit(e){
    e.preventDefault();
    this.state['errors'] = [];
    if (this.state.title === "") {
      this.state['errors'] = this.state.errors.slice().concat(['Title cannot be blank!']);
    }
    if (this.state.description === "") {
      this.state['errors'] = this.state.errors.slice().concat(['Description cannot be blank!']);
    }
    if (this.state.errors.length !== 0) {
      this.closeBoardModal();
      this.openBoardModal();
      this.thing.classList.toggle("m-fadeIn");
    } else {
      this.createBoard({
        board: {
          title: this.state.title,
          description: this.state.description,
          user_id: this.props.currentUser.id
        }
      });
      this.closeBoardModal();
    }
	}

  handleNewPinSubmit(e){
    e.preventDefault();
    this.state['errors'] = [];
    if (this.state.pin_url === "") {
      this.state['errors'] = this.state.errors.slice().concat(['URL cannot be blank!']);
    }
    if (this.state.pin_image_url === "") {
      this.state['errors'] = this.state.errors.slice().concat(['Please select an image!']);
    }
    if (this.state.pin_title === "") {
      this.state['errors'] = this.state.errors.slice().concat(['Title cannot be blank!']);
    }
    if (this.state.pin_description === "") {
      this.state['errors'] = this.state.errors.slice().concat(['Description cannot be blank!']);
    }
    if (this.state.pin_board_id === -1) {
      this.state['errors'] = this.state.errors.slice().concat(['Please select a board to save the pin!']);
    }
    if (this.state.errors.length !== 0) {
      this.closePinModal();
      this.openPinModal();
      this.thing.classList.toggle("m-fadeIn");
    } else {
      this.createPin({
        pin: {
          title: this.state.pin_title,
          description: this.state.pin_description,
          user_id: this.state.user_id,
          board_id: this.state.pin_board_id,
          url: this.state.pin_url,
          image_url: this.state.pin_image_url
        }
      });
      this.closePinModal();
    }
	}

  openPinModal() {
    this.fetchBoards(this.props.currentUser.id);
    this.setState({
      openNewPinModal: true
    });
    this.thing.classList.toggle("m-fadeIn");
  }

  closePinModal() {
    this.setState({
      openNewPinModal: false
    });
  }

  openBoardModal() {
    this.setState({
      openNewBoardModal: true
    });
    this.thing.classList.toggle("m-fadeIn");
  }

  closeBoardModal() {
    this.setState({
      openNewBoardModal: false
    });
  }

  update(field){
		return e => { this.setState({[field]: e.currentTarget.value }); };
	}

  scrapeImages(e) {
    e.preventDefault();
    let url = e.currentTarget.value;
    this.setState({pin_url: url});

    $.embedly.extract(url).progress(data => {
    	let images = data.images;
    	let $container = $('<div class=\'image-container\'>');
    	images.forEach( (image, idx) => {
        // testing
    		// let imgUrl = $.embedly.display.resize(image.url, {query: {height: 200, width: 300, quality: 1}});
        let imgUrl = $.embedly.display.resize(image.url, {query: {height: 400, width: 600}});
        // let imgUrl = $.embedly.display.resize(image.url, {query: {height: 500, width: 500, grow: true}});
        // this works - high quality
        // let imgUrl = $.embedly.display.resize(image.url);
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

  selectBoard(e) {
    this.setState({pin_board_id: e.currentTarget.value});
  }

  renderErrors(){
		return(
			<ul>
				{this.state.errors.map( (error, i) => (
					<li key={`error-${i}`} className='error-prompt'>
						{error}
					</li>
				))}
			</ul>
		);
	}

  render() {
    let pinsComponent = null;
    if (this.props.location.pathname === "/home/" || this.props.location.pathname === "/") {
      pinsComponent = <PinsContainer />;
    }
    this.thing = document.getElementById("add-pin-menu-id");

    let newBoardStyle = {
      overlay : {
      position        : 'fixed',
      top             : 0,
      left            : 0,
      right           : 0,
      bottom          : 0,
      backgroundColor : 'rgba(117, 117, 117, 0.75)'
      },
      content : {
        position: 'fixed',
        backgroundColor : 'rgba(255, 255, 255, 1)',
        top: '50%',
        right: 'auto',
        left: '50%',
        bottom: 'auto',
        padding: '2rem',
        transform: 'translate(-50%,-50%)',
        width: '400px',
        minHeight: '10rem',
        minWidth: '10rem',
        maxWidth: '60rem',
        borderRadius: '4px',
        boxShadow : '3px 3px 10px black',
      }
    };

    let newPinStyle = {
      overlay : {
      position        : 'fixed',
      top             : 0,
      left            : 0,
      right           : 0,
      bottom          : 0,
      backgroundColor : 'rgba(117, 117, 117, 0.75)'
      },
      content : {
        position: 'fixed',
        top: '50%',
        left: '50%',
        right: 'auto',
        bottom: 'auto',
        backgroundColor : 'rgba(255, 255, 255, 1)',
        borderRadius: '4px',
        width: '600px',
        padding: '2rem',
        minHeight: '20rem',
        minWidth: '10rem',
        maxWidth: '60rem',
        transform: 'translate(-50%,-50%)',
        boxShadow : '3px 3px 10px black',
      }
    };
    let boardList = null;
    if ( this.props.boards !== undefined && Object.keys(this.props.boards).length !== 0) {
      boardList = Object.keys(this.props.boards).map( (boardKey, idx) => {
        return (<option key={boardKey} value={this.props.boards[boardKey].id}>{this.props.boards[boardKey].title}</option>);
      });
    }

    return (
      <section className="home-container">
        <div className='nav-bar'>
          <NavContainer />
        </div>
        <div className='home-children'>
          {pinsComponent}
        </div>
        {this.props.children}
        <div className="floating-buttons">
          <button className="add-pin-button" onClick={() => {
            this.thing.classList.toggle("m-fadeIn");
            this.state['errors'] = [];
          }}>
            <em></em>
          </button>
          <div className="github">
            <a target='_blank' href='https://github.com/iamsammak/pininspiration'>
              <i className="fa fa-github fa-2x github-icon" aria-hidden="true"></i>
            </a>
          </div>
          <div className="linkedin">
            <a target='_blank' href='https://www.linkedin.com/in/samuelmak'>
              <i className="fa fa-linkedin-square fa-2x linkedin-icon" aria-hidden="true"></i>
            </a>
          </div>
          <div className="pinterest">
            <a target='_blank' href='https://www.pinterest.com/iamsammak'>
              <i className="fa fa-pinterest fa-2x pinterest-icon" aria-hidden="true"></i>
            </a>
          </div>
          <ul className="add-pin-menu" id="add-pin-menu-id">
            <span className="add-pin-menu-Caret"></span>
            <li onClick={this.openPinModal.bind(this)}>Create a Pin</li>
            <li onClick={this.openBoardModal.bind(this)}>Create a Board</li>
          </ul>
        </div>
        <Modal className='addNewBoardModal'
          isOpen={this.state.openNewBoardModal}
          onRequestClose={this.closeBoardModal.bind(this)}
          style={newBoardStyle}>
          <section className="modal-form-container">
            <form	className="modal-form-box">
              <div className="modal-form">
                <input
                  type="text"
                  onChange={this.update("title")}
                  className="title-input modal-input"
                  placeholder='Title'/>

                <textarea name='description'
                  onChange={this.update("description")}
                  className="description-input modal-input"
                  placeholder='What is your board about?'></textarea>

                <div>
                  { this.renderErrors() }
                </div>
                <div className="modal-save-button-box">
                  <input type="submit"
                    className="modal-save-button"
                    value='Save Board'
                    onClick={this.handleNewBoardSubmit}/>
                </div>
              </div>
            </form>
          </section>

        </Modal>

        <Modal className='addNewPinModal'
          isOpen={this.state.openNewPinModal}
          onRequestClose={this.closePinModal.bind(this)}
          style={newPinStyle}>
          <section className="modal-form-container">
            <form	className="modal-form-box">
              <div className="modal-form">
                <label className='modal-label'>
                  <p className='modal-label-text'>Enter a New URL</p>
                  <input
                    type='text'
                    onChange={this.scrapeImages}
                    defaultValue='http://'
                    className="title-input modal-input" />
                </label>
                <div className='modal-input new-pin-image-area'>
                  <i className="fa fa-picture-o fa-4x background-image" aria-hidden="true"></i>
                  <span className="background-image-prompt">Click on image after entering valid URL</span>
                </div>
                <input
                  type="text"
                  onChange={this.update("pin_title")}
                  className="title-input modal-input"
                  placeholder='Title'/>

                <textarea name='description'
                  onChange={this.update("pin_description")}
                  className="description-input modal-input"
                  placeholder='What is your pin about?'></textarea>
                 <select className='modal-input modal-board-select' onChange={this.selectBoard}>
                   <option disabled selected value> -- select a board -- </option>
                   {boardList}
                 </select>

                 <div>
                   { this.renderErrors() }
                 </div>
                <div className="modal-save-button-box">
                  <input type="submit"
                    className="modal-save-button"
                    value='Save Pin'
                    onClick={this.handleNewPinSubmit}/>
                </div>
              </div>
            </form>
          </section>
        </Modal>
      </section>
    );
  }
}

export default withRouter(Home);
