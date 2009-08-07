

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Create Transaction</title>         
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">Transaction List</g:link></span>
        </div>
        <div class="body">
            <h1>Create Transaction</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${transactionInstance}">
            <div class="errors">
                <g:renderErrors bean="${transactionInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="amount">Amount:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:transactionInstance,field:'amount','errors')}">
                                    <input type="text" id="amount" name="amount" value="${fieldValue(bean:transactionInstance,field:'amount')}" />
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="byWho">By Who:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:transactionInstance,field:'byWho','errors')}">
                                    <input type="text" id="byWho" name="byWho" value="${fieldValue(bean:transactionInstance,field:'byWho')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="comments">Comments:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:transactionInstance,field:'comments','errors')}">
                                    <input type="text" id="comments" name="comments" value="${fieldValue(bean:transactionInstance,field:'comments')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="currencyType">Currency Type:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:transactionInstance,field:'currencyType','errors')}">
                                    <input type="text" id="currencyType" name="currencyType" value="${fieldValue(bean:transactionInstance,field:'currencyType')}" />
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="currentAmount">Current Amount:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:transactionInstance,field:'currentAmount','errors')}">
                                    <input type="text" id="currentAmount" name="currentAmount" value="${fieldValue(bean:transactionInstance,field:'currentAmount')}" />
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="howMany">How Many:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:transactionInstance,field:'howMany','errors')}">
                                    <input type="text" id="howMany" name="howMany" value="${fieldValue(bean:transactionInstance,field:'howMany')}" />
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="product">Product:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:transactionInstance,field:'product','errors')}">
                                    <g:select optionKey="id" from="${Product.list()}" name="product.id" value="${transactionInstance?.product?.id}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="seqNr">Seq Nr:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:transactionInstance,field:'seqNr','errors')}">
                                    <input type="text" id="seqNr" name="seqNr" value="${fieldValue(bean:transactionInstance,field:'seqNr')}" />
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="who">Who:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:transactionInstance,field:'who','errors')}">
                                    <input type="text" id="who" name="who" value="${fieldValue(bean:transactionInstance,field:'who')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="xactTime">Xact Time:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:transactionInstance,field:'xactTime','errors')}">
                                    <g:datePicker name="xactTime" value="${transactionInstance?.xactTime}" ></g:datePicker>
                                </td>
                            </tr> 
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><input class="save" type="submit" value="Create" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
