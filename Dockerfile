FROM golang:1.12.6

LABEL "name"="golang action"
LABEL "maintainer"="Paul Vollmer <paul.vollmer@myles.systems>"
LABEL "version"="1.12"

LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="green-dark"
LABEL "com.github.actions.name"="Golang"
LABEL "com.github.actions.description"="This is an Action to run go commands."

RUN go get -u golang.org/x/lint/golint

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
