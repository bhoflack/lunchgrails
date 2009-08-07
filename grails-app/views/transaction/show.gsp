

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Show Transaction</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">Transaction List</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">New Transaction</g:link></span>
        </div>
        <div class="body">
            <h1>Show Transaction</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>

                    
                        <tr class="prop">
                            <td valign="top" class="name">Id:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:transactionInstance, field:'id')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Amount:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:transactionInstance, field:'amount')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">By Who:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:transactionInstance, field:'byWho')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Comments:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:transactionInstance, field:'comments')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Currency Type:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:transactionInstance, field:'currencyType')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Current Amount:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:transactionInstance, field:'currentAmount')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">How Many:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:transactionInstance, field:'howMany')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Product:</td>
                            
                            <td valign="top" class="value"><g:link controller="product" action="show" id="${transactionInstance?.product?.id}">${transactionInstance?.product?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Seq Nr:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:transactionInstance, field:'seqNr')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Who:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:transactionInstance, field:'who')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Xact Time:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:transactionInstance, field:'xactTime')}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <input type="hidden" name="id" value="${transactionInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" value="Edit" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('Are you sure?');" value="Delete" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
