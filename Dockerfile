FROM arm32v7/openjdk:8-jre-slim

ENV BLAZEGRAPH_HOME /var/blazegraph
ENV BLAZEGRAPH_FILE blazegraph.jar

WORKDIR $BLAZEGRAPH_HOME 
ADD blazegraph.jar $BLAZEGRAPH_HOME"/"

EXPOSE 9999

CMD java -Djetty.start.timeout=160 -server -Xmx800m -jar blazegraph.jar

#/var/blazegraph/
