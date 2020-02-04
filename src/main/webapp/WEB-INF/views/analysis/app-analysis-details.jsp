
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Analysis Details</title>
</head>
<body>
<button type="button" onclick="location.href='/app'">User Panel</button><br/><br/>

    Analysis details:<br><hr>
    <table border="1">
        <tr>
            <th scope="col">Analysis code</th>
            <th scope="col">Defect type</th>
            <th scope="col">Responsible person for analysis</th>
            <th scope="col">Claim code</th>
            <th scope="col">Containment actions</th>
            <th scope="col">Containment actions implementation date</th>
            <th scope="col">Root cause description</th>
            <th scope="col">Corrective actions</th>
            <th scope="col">Corrective actions implementation date</th>
            <th scope="col">Verification of actions</th>
            <th scope="col">Verification date</th>
            <th></th>
        </tr>
        <tr>
            <td><c:out value="${analysis.analysisCode}"/></td>
            <td><c:out value="${analysis.defect.name}"/></td>
            <td><c:out value="${analysis.responsible.fullName}"/></td>
            <td><c:out value="${analysis.claim.id}"/></td>
            <td><c:out value="${analysis.containment}"/></td>
            <td><c:out value="${analysis.containmentDate}"/></td>
            <td><c:out value="${analysis.rootCause}"/></td>
            <td><c:out value="${analysis.correctiveActions}"/></td>
            <td><c:out value="${analysis.correctiveDate}"/></td>
            <td><c:out value="${analysis.verification}"/></td>
            <td><c:out value="${analysis.verificationDate}"/></td>


            <td><button type="button" onclick="location.href='/app/analysis/change/${analysis.id}'">Edit analysis</button><br/>
                <button type="button" onclick="location.href='/app/analysis/delete/${analysis.id}'">Delete analysis</button></td>
        </tr>
    </table>
        <hr>
</body>
</html>
