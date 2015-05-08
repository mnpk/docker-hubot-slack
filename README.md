# hubot-slack

Dockerfile for [Hubot](https://hubot.github.com) using [Slack-Adapter](https://github.com/slackhq/hubot-slack),
including some custom hubot-scripts(e.g. [hubot-scripts-kor](https://github.com/mnpk/hubot-scripts-kor))





### Base Docker Image

- node:0.10

### Usage

#### Pull

```
$ sudo docker pull mnpk/hubot-slack
```

#### Run

```
$ sudo docker run -it --rm -p 9009:9009 mnpk/hubot-slack
```

#### Run as a daemon with env variables

```
$ sudo docker run -d -p 9009:9009 -e HUBOT_JENKINS_AUTH=yourid:password -e HUBOT_SLACK_TOKEN=token mnpk/hubot-slack
```
