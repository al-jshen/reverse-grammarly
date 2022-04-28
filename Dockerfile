FROM alpine

RUN apk update && apk update && apk add --no-cache bash python3 py-pip && pip3 install eng_to_ipa
COPY . .
ENTRYPOINT ["python3", "wordz.py"]
