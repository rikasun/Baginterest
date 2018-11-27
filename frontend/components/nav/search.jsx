import React from 'react';
import SearchSVG from './search_svg';
import Match from './match';
import { Link, withRouter } from 'react-router-dom';
// import * as Fuse from "fuse.js";
import Fuse from "fuse.js";

class Search extends React.Component {
  
  constructor(props) {
    super(props);
    this.updateQuery = this.updateQuery.bind(this);
    this.handleInputChange = this.handleInputChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
    this.fuzzSearch = this.fuzzSearch.bind(this);
    this.state = { query: '', results: [] };
  }

  componentDidMount(){
    this.props.fetchAllPins;
  }
  
  fuzzSearch(){
    const options = {
    shouldSort: true,
    threshold: 0.6,
    location: 0,
    distance: 100,
    maxPatternLength: 32,
    minMatchCharLength: 1,
    keys: [
      "description",
    ]
    };
    let allPins = this.props.pins;
    let fuse = new Fuse(allPins, options);
    let res = fuse.search(this.state.query);
    return res;
  }

  handleInputChange(e) {
    this.updateQuery(e.target.value);
  }

  updateQuery(query) {
    let results = [];
    if (query.length > 0) {
      results = this.fuzzSearch();
    }
    this.setState({ query, results });
  }

  _matches(string, query) {
    return string.startsWith(query);
  }

  focus(e) {
    e.currentTarget.classList.add('focus');
  }

  blur(e) {
    const target = e.currentTarget;
    setTimeout(() => target.classList.remove('focus'), 100);
  }

  handleSubmit(e) {
    e.preventDefault();
    const results = this.state.results;
    if (results.length > 0) {
      this.props.history.push(`/pins/${results[0].id}`);
      this.updateQuery('');
    }
  }

  render() {
    const results = this.state.results;
    const query = this.state.query;
    return (
      <div onFocus={this.focus} onBlur={this.blur} className="good-search-bar">
        <form 
        onSubmit={this.handleSubmit}
        >
          <input
            type="text"
            onChange={this.handleInputChange}
            value={query}
            placeholder="Search" />
        </form>
        <SearchSVG />
        {
          results.length > 0 &&
          <ul>
            <h3>Pins</h3>
            {results.slice(0, 10).map(result =>
              <li key={result.id}>
                <Link 
                  onClick={() => this.updateQuery('')}
                  to={`/pins/${result.id}`}
                  >
                  <Match string={result.description} query={query} />
                </Link>
              </li>
            )}
          </ul>
        }
      </div>
    );
  }
}

export default withRouter(Search);
