#' Read simple yaml file
#'
#' Simple yaml means one "key: value" pair per line
#'
#' @import hashmap
#'
#' @param filename String, path to file
#' @return A data table object indexed on key
#'
#' @export
read_simple_yaml = function(filename) {
    inp = read.table(filename, header = FALSE, sep = ':')
    keys = as.character(inp[, 1])
    values = trimws(inp[, 2])
    return(hashmap::hashmap(keys, values))
}


#' Write simple yaml file
#'
#' Simple yaml means one "key: value" pair per line
#'
#' @import hashmap
#'
#' @param filename String, path to file to write to
#' @param data Hashmap
#' @return Writes to file
#'
#' @export
write_simple_yaml = function(filename, data) {
    sink(filename)
    lapply(out$keys(), function(x) cat(x, ': ', data[[x]], '\n'))
    sink()
}
