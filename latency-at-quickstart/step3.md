Now you're ready to fire up Prometheus with your generated configuration.

# Task: Paste configuration to file
To paste the configuration to a file, we're using cat and shell redirection to
redirect the output to a file. When configuring your own Prometheus server, you
can just click *Download* in the Latency.at Configuration Generator and use that
file directly.

Run `cat <<EOF > prometheus.yml`{{execute}}, then paste the configuration into
the terminal.
Finish the command by typing `EOF`{{execute}}.

Verify the config by running `cat prometheus.yml`{{execute}}

# Task: Fire up Prometheus
We prepared a Docker container with Prometheus and Grafana to get you started:

`docker run -d -p 3000:3000 -p 9090:9090 \
  -v $PWD/prometheus.yml:/etc/prometheus/prometheus.yml \
  latencyat/dashboard`{{execute}}

Now you can access Prometheus on
https://[[HOST_SUBDOMAIN]]-9090-[[KATACODA_HOST]].environments.katacoda.com/ and
Grafana on
https://[[HOST_SUBDOMAIN]]-3000-[[KATACODA_HOST]].environments.katacoda.com/
