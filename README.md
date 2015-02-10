# hubot-slack

Dockerfile for [Hubot](https://hubot.github.com) integrated with our [Slack](https://slack.com) using slack adapter.


### Base Docker Image

- [dockerfile/nodejs](https://registry.hub.docker.com/u/dockerfile/nodejs/)

### Usage

#### Pull

```
$ sudo docker pull castis/hubot-slack
```

#### Run

```
$ sudo docker run -it --rm -p 9009:9009 castis/hubot-slack
```

#### Run as a daemon with env variables

```
$ sudo docker run -d -p 9009:9009 -e HUBOT_JENKINS_AUTH=yourid:password -e HUBOT_SLACK_TOKEN=token castis/hubot-slack
```
