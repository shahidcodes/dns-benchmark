# DNS Benchmark

Check average dns resolution time of your system dns resolver

## Usage

```bash
bash bench-dns.sh
```

## How does it work?

It sends 1000 dns queries using `dig` and takes an average from 'Query time:' response from dns server.
