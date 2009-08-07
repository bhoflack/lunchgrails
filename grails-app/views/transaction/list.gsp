

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Transaction List</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="create" action="create">New Transaction</g:link></span>
        </div>
        <div class="body">
            <h1>Transaction List</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	        <g:sortableColumn property="id" title="Id" />
                        
                   	        <g:sortableColumn property="amount" title="Amount" />
                        
                   	        <g:sortableColumn property="byWho" title="By Who" />
                        
                   	        <g:sortableColumn property="comments" title="Comments" />
                        
                   	        <g:sortableColumn property="currencyType" title="Currency Type" />
                        
                   	        <g:sortableColumn property="currentAmount" title="Current Amount" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${transactionInstanceList}" status="i" var="transactionInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${transactionInstance.id}">${fieldValue(bean:transactionInstance, field:'id')}</g:link></td>
                        
                            <td>${fieldValue(bean:transactionInstance, field:'amount')}</td>
                        
                            <td>${fieldValue(bean:transactionInstance, field:'byWho')}</td>
                        
                            <td>${fieldValue(bean:transactionInstance, field:'comments')}</td>
                        
                            <td>${fieldValue(bean:transactionInstance, field:'currencyType')}</td>
                        
                            <td>${fieldValue(bean:transactionInstance, field:'currentAmount')}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${transactionInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
