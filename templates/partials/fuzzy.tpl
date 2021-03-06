<% if ( tags.length ) { %>

  <% var autoCompletionList = tags; %>

  <% if ( type === 'tools' && platforms.length ) { %>

    <%
      autoCompletionList = _.sortBy(
        autoCompletionList.concat( platforms ),
        function( a, b ) {
          return a.toLowerCase();
        }
      );
    %>

  <% } %>

  <datalist id="listElements">

    <% _.each( autoCompletionList, function( autoCompletion ) { %>

      <option value="<%= autoCompletion %>"><%= autoCompletion %></option>

    <% } ); %>

  </datalist>

<% } %>

<div class="fuzzy">

  <form method="get">

    <label class="fuzzy--label" for="fuzzzzzzzzzy">

      <svg class="fuzzy--icon">
        <use xlink:href="#icon-magnifier" />
      </svg>

      <input type="search" name="q" id="fuzzzzzzzzzy" class="fuzzy--input" title="Search inside of the list" placeholder="Search all <%= list.length %> <%= type %>" value="<%= query %>" list="listElements" autocomplete="off">

    </label>

  </form>

</div>
