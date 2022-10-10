# TUS reloadable upload server with integrated tus-js-client client

Example **TUS** golang core net/http server with integrated pure javascript client **"tus-js-client.js"**.

I could not find an example of a golang web app that integrated both the TUS server and a javascript client of them into a single site. Here is an example how to do that with minimal effort.  Just one extra handler added to the **tusd** golang example server to serve the **tus-js-client** in a "client.html" file implemented as a golang template.

**Attribution:** This code is largely magpied and modified from:
        <a href="https://github.com/tus/tusd/blob/master/examples/server/main.go">TUS golang server example</a> and 
        <a href="https://github.com/tus/tus-js-client">tus-js-client</a>. Thank you for those examples.</br>

For a prettier and more official demo please go to the <a href="http://tus.io/demo.html">tus.io</a> website.</br></br>
<b>Warning:</b> This code is not production worthy, it is just a "***get'er work'n***" example!</h4></br>
</p>    

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

# uploads directory must exist
mkdir uploads

go mod tidy

go run main.go
# or
go build -o tcserver main.go && ./tcserver
```
Site should be running at http://localhost:8080/client

See the **client.html** template file for the html/css and javascript imports.

## License

This project is licensed under the MIT license, see `LICENSE.txt`.
