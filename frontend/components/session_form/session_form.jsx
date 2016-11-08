import React from 'react';
import { Link, withRouter, hashHistory } from 'react-router';

class SessionForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      username: "",
      password: "",
      description: ""
    };
    this.handleSubmit = this.handleSubmit.bind(this);

    this.phantomLogin = this.phantomLogin.bind(this);
		this.beMyGuest = this.beMyGuest.bind(this);
    this.beMyGuestQuick = this.beMyGuestQuick.bind(this);
  }

  componentDidUpdate() {
    this.redirectIfLoggedIn();
    // REVIEW;
    // add confirmPassword logic if you decide to add that input
  }

  redirectIfLoggedIn() {
    if (this.props.loggedIn) {
      this.props.router.push("/");
    }
  }

  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    });
  }

  handleSubmit(e) {
    e.preventDefault();
    let newUsername = this.state.username.toLowerCase();
		this.state.username = newUsername;
		const user = this.state;
		if (this.props.formType === "login") {
			this.setState({description: ""});
		}
    this.props.processForm({user});
    // login or signup
  }

  navLink() {
		if (this.props.formType === "login") {
			return (
        <div>Want to create an account?
          <Link to="/signup"> sign up</Link>
        </div>
      );
		} else {
			return (
        <div>Already have an account?
          <Link to="/login"> log in</Link>
        </div>
      );
		}
	}

// work on styling the errors
	renderErrors() {
		return(
			<ul className="form-errors">
				{this.props.errors.map((error, i) => (
					<li key={`error-${i}`}>
						{error}
					</li>
				))}
			</ul>
		);
	}

  // Confirm password
  // add this later when you have time { this.confirmPassword() }
  // don't forget to add cpassword to state (cpassword: "",)
  // confirmPassword() {
  //   if (this.props.formType === "signup") {
  //     return (
  //       <label>
  //         <input type="password"
  //           value={this.state.cpassword}
  //           placeholder="Confirm Password"
  //           onChange={this.update("cpassword")}
  //           className="login-input cpassword" />
  //       </label>
  //     );
  //   } else {
  //     return (
  //       <label>
  //       </label>
  //     );
  //   }
  // }

  // Demo User
  phantomLogin($el, word, callback){

		var typing = setInterval(function(){
			$el.val( $el.val() + word.slice(0,1) );
			word = word.substr(1);

			if (!word){
				clearInterval(typing);
				callback();
			}
		}, 50);
	}

	beMyGuest(e, username, password) {
		e.preventDefault();
    // this way if they are on the signup page they will first be redirected to login
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

  beMyGuestQuick() {
    this.setState({username: "emily"});
    this.setState({password: "password"});
  }

  render() {
    let loginFromClass = (this.props.formType === "login") ? "login-form-box login" : "login-form-box signup";
    let usernamePlaceholder = (this.props.formType === "login") ? "Username" : "Create a username ";
    let passwordPlaceholder = (this.props.formType === "login") ? "Password" : "Create a password ";
    let submitText = (this.props.formType === "login") ? "Log In" : "Sign Up ";
    let demoClass = (this.props.formType === "login") ? "login-buttons demo-button demo-show" : "login-buttons demo-button demo-hide";


    return (
      <main className="session-form">
        <div className="login-form-container">
          <form
            onSubmit={this.handleSubmit}
            className={loginFromClass}>
            <h1 id="app-name">Pin That!</h1>
            <p id='slogan'>I n s p i r a t i o n ?</p>

            <div className="login-form">
              <br/>
              <label>
                <input type="text"
                  value={this.state.username}
                  placeholder={usernamePlaceholder}
                  onChange={this.update("username")}
                  className="login-input username" />
              </label>
              <br/>
              <label>
                <input type="password"
                  value={this.state.password}
                  placeholder={passwordPlaceholder}
                  onChange={this.update("password")}
                  className="login-input password" />
              </label>
              <br/>
              <div>
                {this.renderErrors()}
              </div>

              <div className="switch-button">{this.navLink()}</div>

              <div className="submit-buttons-box">
                <input type="submit"
                  className="submit-button"
                  value={submitText} />
                <input type="submit"
                    className={demoClass}
                    onClick={e => this.beMyGuest(e, "emily", "password")}
                    value="Demo" />
              </div>
            </div>
          </form>
        </div>
      </main>
    );
  }

}

export default withRouter(SessionForm);
