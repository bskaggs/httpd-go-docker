//based on https://groups.google.com/forum/#!msg/Golang-Nuts/D6yevo6VyyM/7VxcK69YY6wJ

package main

import (
     "net/http"
     "os"
     "github.com/gorilla/handlers"
)

func main() {
     http.Handle("/", handlers.CombinedLoggingHandler(os.Stdout, http.FileServer(http.Dir("/srv/www"))))
     http.ListenAndServe(":80", nil)
}
