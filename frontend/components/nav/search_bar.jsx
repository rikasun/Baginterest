import React from "react";
import { withRouter } from "react-router-dom";
import ReactCSSTransitionGroup from "react-addons-css-transition-group";

class SearchBar extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      input: ""
    };
    this.handleInput = this.handleInput.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
    this.listItems = this.listItems.bind(this);
  }


  handleInput(event) {
    if (event.key === 'Backspace' && this.state.input.length > 0) {
      this.setState({ input: this.state.input.slice(0, this.state.input.length - 2) });
    } else if (event.key === 'Backspace' && this.state.input.length === 0) {
      return;
    } else {
      this.setState({ input: this.state.input + event.key });
    }
  }

  listItems() {
    const autolist = ['Chanel', 'Louis Vuitton', 'Hermes', 'Fendi']
    const mappedList = autolist.map(el => el.toLowerCase());
    const result = mappedList.filter(el => el.startsWith(`${this.state.input.toLowerCase()}`));

    return result.length > 0 ? result : ['--No Match Found--'];
  }

  handleSubmit(event) {
    this.setState({ input: event.target.innerHTML.toLowerCase() })
  }

  render() {
    const that = this;
    return <div>
        <div className="">
          <label className="">
            <input className="search-bar-content" type="search" placeholder="search for..." onKeyDown={this.handleInput} value={this.state.input} />
          </label>

          <ul>
            <ReactCSSTransitionGroup transitionName="auto" transitionEnterTimeout={300} transitionLeaveTimeout={300}>
              {this.listItems().map(function(el, index) {
                return <li key={index} onClick={that.handleSubmit}>
                    {el}
                  </li>;
              })}
            </ReactCSSTransitionGroup>
          </ul>
        </div>
      </div>;
  }


  // componentDidMount() {
  //   const input = document.getElementsByClassName("main-search-bar")[0];
  //   const autocomplete = new google.maps.places.Autocomplete(input);
  //   google.maps.event.addDomListener(window, "load", autocomplete);
  //   let address;
  //   autocomplete.addListener("place_changed", () => {
  //     if (!autocomplete.getPlace().formatted_address) {
  //       address = autocomplete.getPlace().name;
  //       this.setState({ address });
  //       this.handleSubmit();
  //     } else {
  //       address = autocomplete.getPlace().formatted_address;
  //       this.setState({ address });
  //       this.handleSubmit();
  //     }
  //   });
  // }

//   render() {
    
//     return (
//       <div>
//         <form onSubmit={this.handleSubmit}>
//           <i className="fas fa-search" />
//           <input
//             className="main-search-bar"
//             type="text"
//             value={this.state.board}
//             placeholder={`Try "Chanel"`}
//             onChange={this.handleInput}
//             onClick={() => this.props.openModal("search")}
//           />
//         </form>
//       </div>
//     );
//   }
}

export default withRouter(SearchBar);
