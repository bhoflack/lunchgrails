

class TransactionController {
    
    def index = { redirect(action:list,params:params) }

    // the delete, save and update actions only accept POST requests
    static allowedMethods = [delete:'POST', save:'POST', update:'POST']

    def list = {
        params.max = Math.min( params.max ? params.max.toInteger() : 10,  100)
        [ transactionInstanceList: Transaction.list( params ), transactionInstanceTotal: Transaction.count() ]
    }

    def show = {
        def transactionInstance = Transaction.get( params.id )

        if(!transactionInstance) {
            flash.message = "Transaction not found with id ${params.id}"
            redirect(action:list)
        }
        else { return [ transactionInstance : transactionInstance ] }
    }

    def delete = {
        def transactionInstance = Transaction.get( params.id )
        if(transactionInstance) {
            try {
                transactionInstance.delete()
                flash.message = "Transaction ${params.id} deleted"
                redirect(action:list)
            }
            catch(org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "Transaction ${params.id} could not be deleted"
                redirect(action:show,id:params.id)
            }
        }
        else {
            flash.message = "Transaction not found with id ${params.id}"
            redirect(action:list)
        }
    }

    def edit = {
        def transactionInstance = Transaction.get( params.id )

        if(!transactionInstance) {
            flash.message = "Transaction not found with id ${params.id}"
            redirect(action:list)
        }
        else {
            return [ transactionInstance : transactionInstance ]
        }
    }

    def update = {
        def transactionInstance = Transaction.get( params.id )
        if(transactionInstance) {
            if(params.version) {
                def version = params.version.toLong()
                if(transactionInstance.version > version) {
                    
                    transactionInstance.errors.rejectValue("version", "transaction.optimistic.locking.failure", "Another user has updated this Transaction while you were editing.")
                    render(view:'edit',model:[transactionInstance:transactionInstance])
                    return
                }
            }
            transactionInstance.properties = params
            if(!transactionInstance.hasErrors() && transactionInstance.save()) {
                flash.message = "Transaction ${params.id} updated"
                redirect(action:show,id:transactionInstance.id)
            }
            else {
                render(view:'edit',model:[transactionInstance:transactionInstance])
            }
        }
        else {
            flash.message = "Transaction not found with id ${params.id}"
            redirect(action:edit,id:params.id)
        }
    }

    def create = {
        def transactionInstance = new Transaction()
        transactionInstance.properties = params
        return ['transactionInstance':transactionInstance]
    }

    def save = {
        def transactionInstance = new Transaction(params)
        if(!transactionInstance.hasErrors() && transactionInstance.save()) {
            flash.message = "Transaction ${transactionInstance.id} created"
            redirect(action:show,id:transactionInstance.id)
        }
        else {
            render(view:'create',model:[transactionInstance:transactionInstance])
        }
    }
}
