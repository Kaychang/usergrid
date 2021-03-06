<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="org.apache.usergrid.rest.AbstractContextResource"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!--
Licensed to the Apache Software Foundation (ASF) under one or more
contributor license agreements.  See the NOTICE file distributed with
this work for additional information regarding copyright ownership.
The ASF licenses this file to You under the Apache License, Version 2.0
(the "License"); you may not use this file except in compliance with
the License.  You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
-->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Sign In</title>
	<link rel="stylesheet" type="text/css" href="/css/styles.css" />
</head>
<body>

	<div class="dialog-area">
		<c:if test="${!empty it.errorMsg}"><div class="dialog-form-message">${fn:escapeXml(it.errorMsg)}</div></c:if>
		<form class="dialog-form" action="" method="post">
			<input type="hidden" name="response_type" value="${fn:escapeXml(it.responseType)}">
			<input type="hidden" name="client_id" value="${fn:escapeXml(it.clientId)}">
			<input type="hidden" name="redirect_uri" value="${fn:escapeXml(it.redirectUri)}">
			<input type="hidden" name="scope" value="${fn:escapeXml(it.scope)}">
			<input type="hidden" name="state" value="${fn:escapeXml(it.state)}">
			<fieldset>
				<p>
					<label for="username">Username</label>
				</p>
				<p>
					<input class="text_field" id="username" name="username" type="text" />
				</p>
				<p>
					<label for="password">Password</label>
				</p>
				<p>
					<input class="text_field" id="password" name="password" type="password" />
				</p>
				<p class="buttons">
					<button type="submit">Submit</button>
				</p>
			</fieldset>
		</form>
	</div>

</body>
</html>
