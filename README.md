# TUS server example with integrated pure javascript client

Example of the **TUS net/http server** with the pure javascript client **"tus-js-client.js"** integrated into the same executable.

I needed to add large file pausable uploads to a web app I was working on. I found the <a href="https://tus.io">tus.io</a> site
and it looked interesting. The **tusd** server examples provided a golang TUS core *net/http* example of just the server, 
and I could see that there was a pure javascript client **tus-js-client.js**.  Those looked great but I could not find an 
example that integrated both of them into a single application. This code is my attempt to integrate the
examples from the *tusd* and *tus-js-client* sites to make them both work together in a single application. 


**Attribution:** This code is largely just magpied and modified from:
        <a href="https://github.com/tus/tusd/blob/master/examples/server/main.go">TUS golang server example</a> and 
        <a href="https://github.com/tus/tus-js-client">tus-js-client</a>. Thank you for those examples.</br>

For a prettier and more official demo please go to the <a href="http://tus.io/demo.html">tus.io</a> website.</br></br>
<b>Warning:</b> This code is not production worthy, it is just a "***get'er work'n***" example!</h4></br>
</p>    

## License

This project is licensed under the MIT license, see `LICENSE.txt`.
