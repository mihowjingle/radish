transactional = (readOnly: Boolean = False, action: None -> some R) -> R {
    transaction = startTransaction()
    try {
        result = action()
        transaction.commit()
        return result
    } rescue e: SomeCustomError {
        transaction.rollback()
        panic e
    }
}

root = {
    count = transactional(readOnly = True, action = {
        runSql("select count(*) from users")
    })
}