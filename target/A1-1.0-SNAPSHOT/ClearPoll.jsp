<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml">
<jsp:include page="/WEB-INF/head.jsp"/>
<body>
<form method="POST" action="${pageContext.request.contextPath}/PollClearServlet">
    <div class="container d-flex flex-column min-vh-100 justify-content-center align-items-center">
        <p>Select the poll you would like to clear.</p>
        <h5>Please note that only polls that are running are listed.</h5>
        <table class="table table-hover">
            <thead>
            <tr>
                <th></th>
                <th scope="col">Poll ID</th>
                <th scope="col">Poll Name</th>
                <th scope="col">Poll Question</th>
            </tr>
            </thead>
            <c:forEach var="poll" items="${clearPolls}">
                <tr>
                    <th scope="row"><input type="radio" id="${poll.id}" name="poll_to_clear" value="${poll.id}"></th>
                    <td>${poll.id}</td>
                    <td>${poll.name}</td>
                    <td>${poll.question}</td>
                </tr>
            </c:forEach>
        </table>
        <button type="submit" name="pollClear" class="btn btn-primary">Clear Poll</button>
    </div>
</form>
<hr>
<jsp:include page="/WEB-INF/footer.jsp"/>
</body>
</html>