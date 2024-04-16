<%@ page import="java.util.HashMap, java.util.ArrayList" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Bootstrap 5 Template</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
    </head>

    <body>

        <!-- Menu -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
                <a class="navbar-brand" href="#">Logo</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="/home">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/joinForm">joinForm</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Contact</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Main Content -->
        <div class="container mt-4">
            <div class="row">
                <div class="col-md-8">
                    <h2>Search</h2>
                    <form action="/commonCode/list" method="get">
                        <%
                            HashMap dataMap = (HashMap) request.getAttribute("dataMap");
                            String search = (String) dataMap.getOrDefault("search", "");
                        %>
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" name="search" value="<%= search %>" placeholder="Search..." id="keydownEnter">
                            <button class="btn btn-primary">Go</button>
                        </div>
                    </form>
                </div>
                <div class="col-12">
                    <table class="table">
                        <thead>
                            <th>PK_ID</th>
                            <th>FK_ID</th>
                            <th>NAME</th>
                        </thead>
                        <tbody>
                            <% ArrayList itemList=(ArrayList)request.getAttribute("itemList"); for(Object obj: itemList)
                                { HashMap record=(HashMap) obj; %>
                                <tr>
                                    <td>
                                        <%= record.get("PK_ID") %>
                                    </td>
                                    <td>
                                        <%= record.get("FK_ID") %>
                                    </td>
                                    <td>
                                        <%= record.get("NAME") %>
                                    </td>
                                </tr>
                                <% } %>
                        </tbody>
                    </table>

                </div>
            </div>
        </div>

        <!-- Footer -->
        <footer class="bg-dark text-white text-center py-4 mt-4">
            <div class="container">
                <p>&copy; 2023 Your Website. All Rights Reserved.</p>
            </div>
        </footer>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>

    </html>