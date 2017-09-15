Now you need to configure Prometheus to scrape the Latency.at probes.
For that click on [Configuration](https://latency.at/dashboard/configuration),
then *Generator* in the left sidebar.

# Task: Add targets
In the Generator you find a text field for each available *module* with a short
description what this module does and what it expects.

If you want to send HTTP GET requests to `https://example.com` and expect a
status code between 200 and 299 as response, you would enter
`https://example.com` under *http_2xx*.

You can add multiple targets per module.

# Task: Configure scrape interval and Probes
The scrape interval defaults to 30 seconds. Adjust it as needed.

Under *Probes* you can select the regions you want to get metrics from.

# Task: Check the results and copy config
In the *Results* section you can see configuration and the number of requests
Prometheus will send with the given configuration. The trial is equivalent to
the *Mini* plan and includes 50.000 requests. That is around one request per
minute.

The configuration already includes the Token you created in the previous step.

Now click on *Copy* to copy the configuration.
