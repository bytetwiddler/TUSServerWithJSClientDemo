# TUS reloadable upload server with integrated tus-js-client

**Summary:**

Golang **TUS** server with integrated javascript client **"tus-js-client.js"**. A minimalist example of 
integrating **tus-js-client** with the example golang core net/http server found in the 
<a href="https://github.com/tus/tusd/blob/master/examples/server/main.go">**tusd** repo</a>. 

**Attribution:** This code is largely magpied and modified from:
        <a href="https://github.com/tus/tusd/blob/master/examples/server/main.go">TUS golang server example</a> and 
        <a href="https://github.com/tus/tus-js-client">tus-js-client</a>. Thank you to the teams behind those projects.</br>

To see the official demo please go to the <a href="http://tus.io/demo.html">tus.io</a> **tus.io website**.</br>

<b>Warning:</b> This code is not production worthy, it is just a "***get'er work'n***" example!</h4></br>

**What did I change in the <a href=https://github.com/tus/tusd/blob/master/examples/server/main.go>server code</a>:**

```
/******************************************************************
*** I added the following handler to the server example with a  ***
*** golang template that serves the html/css/javascript.        ***
*******************************************************************/

func ClientHandler(w http.ResponseWriter, r *http.Request) {
	t, err := template.ParseFiles("client.html")
	if err != nil {
		log.Println(err)
	}
	t.Execute(w, nil)
}
```


In **main()** I add two handler functions.  One to serve up the ClientHandler 
template and another to serve the static graphics, css and javascript client files.

```
/*********************************************************************************
 ** The following two lines are all I add to main() from  the tus.io golang     **
 ** net/http example.                                                           **
 *********************************************************************************/

http.Handle("/", http.FileServer(http.Dir("scripts")))
http.HandleFunc("/client", ClientHandler)```
```

**The client tus-js-client deployment:**
All the HTML/CSS/Javascript is in a golang template **client.html**. It turns out 
This could have been a static HTML file as I ended up not needing templateing tags.

**Running the code:** (after git cloning the repo)

```
cd TUSServerWithJSClientExample
make run
```

To create executable on your current platform:
```
make
```        
To create executables for the most common platforms and put them in a *bin* directory:
```
make compile
```

Or if you don't want to muss with *make* then just ***go*** at it.
```
cd TUSServerWithJSClientExample

# the uploads directory must exist prior to running or uploads will fail
mkdir uploads

go mod tidy

go run main.go
# or
go build -o tcserver main.go && ./tcserver
```

The site should be running at http://localhost:8080/client

## License

This project is licensed under the MIT license, see `LICENSE.txt`.
