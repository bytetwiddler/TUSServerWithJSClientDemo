# TUS server example with integrated pure javascript client

Example of the **TUS net/http server** with the pure javascript client **"tus-js-client.js"** integrated into the same executable.

I needed to add large file pausable uploads to a web app I was working on. I found the <a href="https://tus.io">tus.io</a> site
and it looked interesting. The **tusd** server examples provided a golang TUS core *net/http* example of just the server, 
and I could see that there was a pure javascript client **tus-js-client.js**.  Those looked great but I could not find an 
example that integrated both of them into a single application. This code is my attempt do that integration using
examples from the *tusd* and *tus-js-client* and make them both work together in a single application. 


**Attribution:** This code is largely just magpied and modified from:
        <a href="https://github.com/tus/tusd/blob/master/examples/server/main.go">TUS golang server example</a> and 
        <a href="https://github.com/tus/tus-js-client">tus-js-client</a>. Thank you for those examples.</br>

For a prettier and more official demo please go to the <a href="http://tus.io/demo.html">tus.io</a> website.</br></br>
<b>Warning:</b> This code is not production worthy, it is just a "***get'er work'n***" example!</h4></br>
</p>    
**Running the code:**
after git cloning the repo.

```
cd TUSServerWithJSClientDemo
git mod tidy
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

Or if you don't have or want *make* then just ***go*** at it.
```
mkdir uploads
go mod tidy
go build -o tcserver main.go && ./tcserver
```
Site should be running at http://localhost:8080/client

See the **client.html** template file for the html/css and javascript imports.

## License

This project is licensed under the MIT license, see `LICENSE.txt`.
