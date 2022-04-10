# systemd-service-api
This is a training project designed to take a `DevOps` course from `jusan.kz` on `stepik.org`.

I learned how to make an application as a service for linux.

# Usage
Example of installing your service on a computer.
Run this command
```bash
sudo bash setup.sh
```

# How it works
1. The script will check for the presence of this service. And shows Error if the service being installed is present.
2. Download the `api` bin to move in `/usr/local/bin/`
3. Copy [`api.service`](api.service) to `/etc/systemd/system/`
4. Starts service on computer.
5. Shows status of started service.