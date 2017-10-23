class SearchBar extends React.Component {
  render () {
    return (
    	<form action="/search" acceptCharset="UTF-8" method="get">
        	<input name="utf8" type="hidden" value="√" />
        	<button name="button" type="submit"><i className="glyphicon glyphicon-search"></i></button>
        	<input placeholder="Search Stories" autoComplete="off" type="search" name="search[q]" id="search_q" />
      	</form>
    );
  }
}


