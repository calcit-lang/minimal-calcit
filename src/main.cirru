
ns app.main
  :require
    app.lib :refer $ call-lib

defn main! ()
  println "|Calling main function:" $ + 1 2 3 4 10
  println $ range 100
  call-lib
