transactional = [R] (readOnly: Boolean = False, action: Transaction -> R) -> R {
    transaction = startTransaction()
    try {
        result = action(transaction)
        transaction.commit()
        return result
    } rescue e: SomeCustomError {
        transaction.rollback()
        panic e
    }
}

root = () {
    count = transactional(readOnly = True, action = (transaction) {
        return transaction.query("select count(*) from users")
    })
}