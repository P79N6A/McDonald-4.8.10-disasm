.class public Lhk/com/aisoft/easyaddrui/DownloadManualAddr;
.super Landroid/os/AsyncTask;
.source "DownloadManualAddr.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field sArea:Ljava/lang/String;

.field sBldg:Ljava/lang/String;

.field sBlock:Ljava/lang/String;

.field sBundle:Ljava/lang/String;

.field sDistrict:Ljava/lang/String;

.field sEstate:Ljava/lang/String;

.field sFlat:Ljava/lang/String;

.field sFloor:Ljava/lang/String;

.field sRemarks:Ljava/lang/String;

.field sStreet:Ljava/lang/String;

.field sStreetLon:Ljava/lang/String;

.field sStreetNo:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lhk/com/aisoft/easyaddrui/Address;)V
    .locals 1
    .param p1, "mAddr"    # Lhk/com/aisoft/easyaddrui/Address;

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/DownloadManualAddr;->sArea:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/DownloadManualAddr;->sDistrict:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/DownloadManualAddr;->sStreet:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/DownloadManualAddr;->sStreetLon:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/DownloadManualAddr;->sStreetNo:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/DownloadManualAddr;->sEstate:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/DownloadManualAddr;->sBldg:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/DownloadManualAddr;->sBlock:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/DownloadManualAddr;->sFloor:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/DownloadManualAddr;->sFlat:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/DownloadManualAddr;->sRemarks:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/DownloadManualAddr;->sBundle:Ljava/lang/String;

    .line 42
    iget-object v0, p1, Lhk/com/aisoft/easyaddrui/Address;->sAreaC:Ljava/lang/String;

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/DownloadManualAddr;->sArea:Ljava/lang/String;

    .line 43
    iget-object v0, p1, Lhk/com/aisoft/easyaddrui/Address;->sDistrictC:Ljava/lang/String;

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/DownloadManualAddr;->sDistrict:Ljava/lang/String;

    .line 44
    iget-object v0, p1, Lhk/com/aisoft/easyaddrui/Address;->sStreetC:Ljava/lang/String;

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/DownloadManualAddr;->sStreet:Ljava/lang/String;

    .line 45
    iget-object v0, p1, Lhk/com/aisoft/easyaddrui/Address;->sStreetLon:Ljava/lang/String;

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/DownloadManualAddr;->sStreetLon:Ljava/lang/String;

    .line 46
    iget-object v0, p1, Lhk/com/aisoft/easyaddrui/Address;->sStreetNo:Ljava/lang/String;

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/DownloadManualAddr;->sStreetNo:Ljava/lang/String;

    .line 47
    iget-object v0, p1, Lhk/com/aisoft/easyaddrui/Address;->sEstateC:Ljava/lang/String;

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/DownloadManualAddr;->sEstate:Ljava/lang/String;

    .line 48
    iget-object v0, p1, Lhk/com/aisoft/easyaddrui/Address;->sBldgC:Ljava/lang/String;

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/DownloadManualAddr;->sBldg:Ljava/lang/String;

    .line 49
    iget-object v0, p1, Lhk/com/aisoft/easyaddrui/Address;->sBlockC:Ljava/lang/String;

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/DownloadManualAddr;->sBlock:Ljava/lang/String;

    .line 50
    iget-object v0, p1, Lhk/com/aisoft/easyaddrui/Address;->sFloor:Ljava/lang/String;

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/DownloadManualAddr;->sFloor:Ljava/lang/String;

    .line 51
    iget-object v0, p1, Lhk/com/aisoft/easyaddrui/Address;->sFlat:Ljava/lang/String;

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/DownloadManualAddr;->sFlat:Ljava/lang/String;

    .line 52
    iget-object v0, p1, Lhk/com/aisoft/easyaddrui/Address;->sRemarks:Ljava/lang/String;

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/DownloadManualAddr;->sRemarks:Ljava/lang/String;

    .line 53
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sEABundle:Ljava/lang/String;

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/DownloadManualAddr;->sBundle:Ljava/lang/String;

    .line 54
    return-void
.end method

.method private downloadUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "sUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    const/4 v1, 0x0

    .line 111
    .local v1, "is":Ljava/io/InputStream;
    const-string v5, ""

    .line 113
    .local v5, "sData":Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 114
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    invoke-static {v8}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->openConnection(Ljava/net/URLConnection;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 115
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const/16 v8, 0x2710

    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 116
    const/16 v8, 0x3a98

    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 117
    const-string v8, "GET"

    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 118
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 120
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 121
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 122
    .local v4, "response":I
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 125
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 126
    .local v3, "r":Ljava/io/BufferedReader;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .local v6, "total":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 129
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 134
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "r":Ljava/io/BufferedReader;
    .end local v4    # "response":I
    .end local v6    # "total":Ljava/lang/StringBuilder;
    .end local v7    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v8

    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_0
    throw v8

    .line 131
    .restart local v0    # "conn":Ljava/net/HttpURLConnection;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v3    # "r":Ljava/io/BufferedReader;
    .restart local v4    # "response":I
    .restart local v6    # "total":Ljava/lang/StringBuilder;
    .restart local v7    # "url":Ljava/net/URL;
    :cond_1
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 134
    if-eqz v1, :cond_2

    .line 135
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 138
    :cond_2
    return-object v5
.end method

.method protected static getResponseQK(Ljava/lang/String;)Lhk/com/aisoft/easyaddrui/ResponseQK;
    .locals 10
    .param p0, "sXML"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 143
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v7, 0x0

    .line 144
    .local v7, "sResponseQK":Lhk/com/aisoft/easyaddrui/ResponseQK;
    const/4 v5, 0x0

    .line 146
    .local v5, "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    new-instance v7, Lhk/com/aisoft/easyaddrui/ResponseQK;

    .end local v7    # "sResponseQK":Lhk/com/aisoft/easyaddrui/ResponseQK;
    invoke-direct {v7}, Lhk/com/aisoft/easyaddrui/ResponseQK;-><init>()V

    .line 148
    .restart local v7    # "sResponseQK":Lhk/com/aisoft/easyaddrui/ResponseQK;
    :try_start_0
    new-instance v8, Ljava/io/StringReader;

    invoke-direct {v8, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 149
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 150
    .local v1, "eventType":I
    const/4 v0, 0x0

    .local v0, "done":Z
    move-object v6, v5

    .line 151
    .end local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .local v6, "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    :goto_0
    const/4 v8, 0x1

    if-eq v1, v8, :cond_2c

    if-nez v0, :cond_2c

    .line 152
    const/4 v3, 0x0

    .line 153
    .local v3, "name":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    :cond_0
    :pswitch_0
    move-object v5, v6

    .line 256
    .end local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    :goto_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    move-object v6, v5

    .line 257
    .end local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    goto :goto_0

    :pswitch_1
    move-object v5, v6

    .line 155
    .end local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    goto :goto_1

    .line 157
    .end local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    :pswitch_2
    :try_start_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 158
    const-string v8, "p"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 159
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lhk/com/aisoft/easyaddrui/ResponseQK;->sPage:Ljava/lang/String;

    .line 160
    iget-object v8, v7, Lhk/com/aisoft/easyaddrui/ResponseQK;->sPage:Ljava/lang/String;

    const-string v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 161
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v7, Lhk/com/aisoft/easyaddrui/ResponseQK;->sResponseAddrs:Ljava/util/List;

    move-object v5, v6

    .end local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    goto :goto_1

    .line 163
    .end local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    :cond_1
    sget-object v8, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    iget-object v8, v8, Lhk/com/aisoft/easyaddrui/ResponseQK;->sResponseAddrs:Ljava/util/List;

    iput-object v8, v7, Lhk/com/aisoft/easyaddrui/ResponseQK;->sResponseAddrs:Ljava/util/List;

    move-object v5, v6

    .end local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    goto :goto_1

    .line 165
    .end local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    :cond_2
    const-string v8, "t"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 166
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lhk/com/aisoft/easyaddrui/ResponseQK;->sType:Ljava/lang/String;

    move-object v5, v6

    .end local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    goto :goto_1

    .line 167
    .end local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    :cond_3
    const-string v8, "result"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 168
    new-instance v5, Lhk/com/aisoft/easyaddrui/ResponseAddr;

    invoke-direct {v5}, Lhk/com/aisoft/easyaddrui/ResponseAddr;-><init>()V

    .end local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    goto :goto_1

    .line 169
    .end local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    :cond_4
    if-eqz v6, :cond_0

    .line 170
    const-string v8, "o"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 171
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sAddr:Ljava/lang/String;

    move-object v5, v6

    .end local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    goto :goto_1

    .line 172
    .end local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    :cond_5
    const-string v8, "s"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 173
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    iput-object v8, v6, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sScore:Ljava/lang/Double;

    move-object v5, v6

    .end local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    goto :goto_1

    .line 174
    .end local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    :cond_6
    const-string v8, "c"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 175
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sCity:Ljava/lang/String;

    move-object v5, v6

    .end local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    goto/16 :goto_1

    .line 176
    .end local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    :cond_7
    const-string v8, "addr1c"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 177
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sAreaC:Ljava/lang/String;

    move-object v5, v6

    .end local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    goto/16 :goto_1

    .line 178
    .end local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    :cond_8
    const-string v8, "addr1e"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 179
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sAreaE:Ljava/lang/String;

    move-object v5, v6

    .end local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    goto/16 :goto_1

    .line 180
    .end local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    :cond_9
    const-string v8, "addr2c"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 181
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sDistrictC:Ljava/lang/String;

    move-object v5, v6

    .end local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    goto/16 :goto_1

    .line 182
    .end local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    :cond_a
    const-string v8, "addr2e"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 183
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sDistrictE:Ljava/lang/String;

    move-object v5, v6

    .end local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    goto/16 :goto_1

    .line 184
    .end local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    :cond_b
    const-string v8, "addr3c"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 185
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sStreetC:Ljava/lang/String;

    move-object v5, v6

    .end local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    goto/16 :goto_1

    .line 186
    .end local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    :cond_c
    const-string v8, "addr3e"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 187
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sStreetE:Ljava/lang/String;

    move-object v5, v6

    .end local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    goto/16 :goto_1

    .line 188
    .end local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    :cond_d
    const-string v8, "addr4c"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    move-object v5, v6

    .end local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    goto/16 :goto_1

    .line 189
    .end local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    :cond_e
    const-string v8, "addr4e"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    move-object v5, v6

    .end local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    goto/16 :goto_1

    .line 190
    .end local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    :cond_f
    const-string v8, "addr5"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 191
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sStreetLon:Ljava/lang/String;

    move-object v5, v6

    .end local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    goto/16 :goto_1

    .line 192
    .end local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    :cond_10
    const-string v8, "addr6"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 193
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sStreetFromNo:Ljava/lang/String;

    move-object v5, v6

    .end local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    goto/16 :goto_1

    .line 194
    .end local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    :cond_11
    const-string v8, "addr7"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 195
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sStreetFromCode:Ljava/lang/String;

    move-object v5, v6

    .end local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    goto/16 :goto_1

    .line 196
    .end local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    :cond_12
    const-string v8, "addr8"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 197
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sStreetToNo:Ljava/lang/String;

    move-object v5, v6

    .end local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    goto/16 :goto_1

    .line 198
    .end local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    :cond_13
    const-string v8, "addr9"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 199
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sStreetToCode:Ljava/lang/String;

    move-object v5, v6

    .end local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    goto/16 :goto_1

    .line 200
    .end local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    :cond_14
    const-string v8, "addr10c"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 201
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sEstateC:Ljava/lang/String;

    move-object v5, v6

    .end local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    goto/16 :goto_1

    .line 202
    .end local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    :cond_15
    const-string v8, "addr10e"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 203
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sEstateE:Ljava/lang/String;

    move-object v5, v6

    .end local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    goto/16 :goto_1

    .line 204
    .end local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    :cond_16
    const-string v8, "addr11"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 205
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sPhaseNo:Ljava/lang/String;

    move-object v5, v6

    .end local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    goto/16 :goto_1

    .line 206
    .end local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    :cond_17
    const-string v8, "addr12c"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 207
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sPhaseNameC:Ljava/lang/String;

    move-object v5, v6

    .end local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    goto/16 :goto_1

    .line 208
    .end local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    :cond_18
    const-string v8, "addr12e"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 209
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sPhaseNameE:Ljava/lang/String;

    move-object v5, v6

    .end local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    goto/16 :goto_1

    .line 210
    .end local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    :cond_19
    const-string v8, "addr13c"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 211
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sBldgC:Ljava/lang/String;

    move-object v5, v6

    .end local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    goto/16 :goto_1

    .line 212
    .end local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    :cond_1a
    const-string v8, "addr13e"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 213
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sBldgE:Ljava/lang/String;

    move-object v5, v6

    .end local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    goto/16 :goto_1

    .line 214
    .end local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    :cond_1b
    const-string v8, "addr14c"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 215
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sBlockC:Ljava/lang/String;

    move-object v5, v6

    .end local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    goto/16 :goto_1

    .line 216
    .end local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    :cond_1c
    const-string v8, "addr14e"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 217
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sBlockE:Ljava/lang/String;

    move-object v5, v6

    .end local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    goto/16 :goto_1

    .line 218
    .end local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    :cond_1d
    const-string v8, "addr15c"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 219
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sAddrRmkC:Ljava/lang/String;

    move-object v5, v6

    .end local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    goto/16 :goto_1

    .line 220
    .end local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    :cond_1e
    const-string v8, "addr15e"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 221
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sAddrRmkE:Ljava/lang/String;

    move-object v5, v6

    .end local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    goto/16 :goto_1

    .line 222
    .end local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    :cond_1f
    const-string v8, "hub1a"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 223
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sHub1:Ljava/lang/String;

    move-object v5, v6

    .end local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    goto/16 :goto_1

    .line 224
    .end local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    :cond_20
    const-string v8, "hub1b"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_21

    move-object v5, v6

    .end local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    goto/16 :goto_1

    .line 225
    .end local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    :cond_21
    const-string v8, "hub2a"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_22

    .line 226
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sHub2:Ljava/lang/String;

    move-object v5, v6

    .end local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    goto/16 :goto_1

    .line 227
    .end local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    :cond_22
    const-string v8, "hub2b"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_23

    move-object v5, v6

    .end local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    goto/16 :goto_1

    .line 228
    .end local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    :cond_23
    const-string v8, "hub3a"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_24

    .line 229
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sHub3:Ljava/lang/String;

    move-object v5, v6

    .end local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    goto/16 :goto_1

    .line 230
    .end local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    :cond_24
    const-string v8, "hub3b"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_25

    move-object v5, v6

    .end local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    goto/16 :goto_1

    .line 231
    .end local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    :cond_25
    const-string v8, "hub4a"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_26

    .line 232
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sHub4:Ljava/lang/String;

    move-object v5, v6

    .end local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    goto/16 :goto_1

    .line 233
    .end local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    :cond_26
    const-string v8, "hub4b"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_27

    move-object v5, v6

    .end local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    goto/16 :goto_1

    .line 234
    .end local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    :cond_27
    const-string v8, "addrc"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_28

    .line 235
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sAddrC:Ljava/lang/String;

    move-object v5, v6

    .end local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    goto/16 :goto_1

    .line 236
    .end local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    :cond_28
    const-string v8, "addre"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_29

    .line 237
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sAddrE:Ljava/lang/String;

    move-object v5, v6

    .end local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    goto/16 :goto_1

    .line 238
    .end local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    :cond_29
    const-string v8, "ubi"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2a

    .line 239
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sUBI:Ljava/lang/String;

    move-object v5, v6

    .end local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    goto/16 :goto_1

    .line 240
    .end local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    :cond_2a
    const-string v8, "lot"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 241
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sLot:Ljava/lang/String;

    move-object v5, v6

    .end local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    goto/16 :goto_1

    .line 246
    .end local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    :pswitch_3
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 247
    const-string v8, "result"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2b

    if-eqz v6, :cond_2b

    .line 248
    iget-object v8, v6, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sAddr:Ljava/lang/String;

    const-string v9, "@NEXT@"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 249
    iget-object v8, v7, Lhk/com/aisoft/easyaddrui/ResponseQK;->sResponseAddrs:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v5, v6

    .end local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    goto/16 :goto_1

    .line 251
    .end local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    :cond_2b
    const-string v8, "content"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v8

    if-eqz v8, :cond_0

    .line 252
    const/4 v0, 0x1

    move-object v5, v6

    .end local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    goto/16 :goto_1

    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    :cond_2c
    move-object v5, v6

    .line 265
    .end local v0    # "done":Z
    .end local v1    # "eventType":I
    .end local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    :cond_2d
    :goto_2
    return-object v7

    .line 258
    :catch_0
    move-exception v2

    .line 259
    .local v2, "ex":Ljava/lang/Exception;
    :goto_3
    :try_start_2
    sget-boolean v8, Lhk/com/aisoft/easyaddrui/BuildConfig;->DEBUG:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_2d

    goto :goto_2

    .line 262
    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :goto_4
    throw v8

    .end local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v0    # "done":Z
    .restart local v1    # "eventType":I
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    goto :goto_4

    .line 258
    .end local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    :catch_1
    move-exception v2

    move-object v5, v6

    .end local v6    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    .restart local v5    # "sResponseAddr":Lhk/com/aisoft/easyaddrui/ResponseAddr;
    goto :goto_3

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lhk/com/aisoft/easyaddrui/DownloadManualAddr;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lhk/com/aisoft/easyaddrui/DownloadManualAddr;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "DownloadManualAddr#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :goto_0
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lhk/com/aisoft/easyaddrui/DownloadManualAddr;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "DownloadManualAddr#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "urls"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x5

    .line 63
    invoke-static {v9}, Lhk/com/aisoft/easyaddrui/eaView;->random(I)Ljava/lang/String;

    move-result-object v7

    .line 64
    .local v7, "sPrefix":Ljava/lang/String;
    invoke-static {v9}, Lhk/com/aisoft/easyaddrui/eaView;->random(I)Ljava/lang/String;

    move-result-object v8

    .line 65
    .local v8, "sSuffix":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lhk/com/aisoft/easyaddrui/DownloadManualAddr;->sBundle:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 66
    .local v5, "sPayload":Ljava/lang/String;
    const-string v6, ""

    .line 67
    .local v6, "sPayloadEn":Ljava/lang/String;
    new-instance v1, Lhk/com/aisoft/easyaddrui/AES256JNCryptor;

    invoke-direct {v1}, Lhk/com/aisoft/easyaddrui/AES256JNCryptor;-><init>()V

    .line 68
    .local v1, "cryptor":Lhk/com/aisoft/easyaddrui/JNCryptor;
    sget-object v3, Lhk/com/aisoft/easyaddrui/eaView;->sSysHash:Ljava/lang/String;

    .line 70
    .local v3, "password":Ljava/lang/String;
    :try_start_0
    const-string v9, "UTF-8"

    invoke-virtual {v5, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 71
    .local v4, "plaintext":[B
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    invoke-interface {v1, v4, v9}, Lhk/com/aisoft/easyaddrui/JNCryptor;->encryptData([B[C)[B

    move-result-object v0

    .line 72
    .local v0, "ciphertext":[B
    const/4 v9, 0x0

    invoke-static {v0, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 79
    .end local v0    # "ciphertext":[B
    .end local v4    # "plaintext":[B
    :cond_0
    :goto_0
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "?l="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lhk/com/aisoft/easyaddrui/eaView;->sEALang:Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&a="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lhk/com/aisoft/easyaddrui/DownloadManualAddr;->sArea:Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&d="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lhk/com/aisoft/easyaddrui/DownloadManualAddr;->sDistrict:Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&s="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lhk/com/aisoft/easyaddrui/DownloadManualAddr;->sStreet:Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&sl="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lhk/com/aisoft/easyaddrui/DownloadManualAddr;->sStreetLon:Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&sn="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lhk/com/aisoft/easyaddrui/DownloadManualAddr;->sStreetNo:Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&est="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lhk/com/aisoft/easyaddrui/DownloadManualAddr;->sEstate:Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&b="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lhk/com/aisoft/easyaddrui/DownloadManualAddr;->sBldg:Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&bl="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lhk/com/aisoft/easyaddrui/DownloadManualAddr;->sBlock:Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&fl="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lhk/com/aisoft/easyaddrui/DownloadManualAddr;->sFloor:Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&rm="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lhk/com/aisoft/easyaddrui/DownloadManualAddr;->sFlat:Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&rks="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lhk/com/aisoft/easyaddrui/DownloadManualAddr;->sRemarks:Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&cc="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    const-string v11, ""

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lhk/com/aisoft/easyaddrui/DownloadManualAddr;->downloadUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    .line 81
    :goto_1
    return-object v9

    .line 73
    :catch_0
    move-exception v2

    .line 74
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v9, Lhk/com/aisoft/easyaddrui/BuildConfig;->DEBUG:Z

    if-eqz v9, :cond_0

    goto/16 :goto_0

    .line 80
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 81
    .local v2, "e":Ljava/io/IOException;
    const-string v9, "ERR"

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lhk/com/aisoft/easyaddrui/DownloadManualAddr;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "DownloadManualAddr#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :goto_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lhk/com/aisoft/easyaddrui/DownloadManualAddr;->onPostExecute(Ljava/lang/String;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "DownloadManualAddr#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 5
    .param p1, "sResult"    # Ljava/lang/String;

    .prologue
    .line 88
    :try_start_0
    const-string v2, "ERR"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 89
    sput-object p1, Lhk/com/aisoft/easyaddrui/eaView;->sResponse:Ljava/lang/String;

    .line 90
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sEALang:Ljava/lang/String;

    const-string v3, "zh-HK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sContext:Landroid/content/Context;

    sget-object v3, Lhk/com/aisoft/easyaddrui/eaView;->lbNetworkErrorC:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sContext:Landroid/content/Context;

    sget-object v3, Lhk/com/aisoft/easyaddrui/eaView;->lbNetworkErrorE:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "ex":Ljava/lang/Exception;
    sget-boolean v2, Lhk/com/aisoft/easyaddrui/BuildConfig;->DEBUG:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 96
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v2, "\"content\":\""

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "\"content\":\""

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 97
    const/4 v2, 0x0

    const-string v3, "\""

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 98
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->listResult:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v1

    .line 99
    .local v1, "sPosition":I
    invoke-static {p1}, Lhk/com/aisoft/easyaddrui/DownloadManualAddr;->getResponseQK(Ljava/lang/String;)Lhk/com/aisoft/easyaddrui/ResponseQK;

    move-result-object v2

    sput-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    .line 100
    const/4 v2, 0x1

    sput-boolean v2, Lhk/com/aisoft/easyaddrui/eaView;->sReqBack:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 58
    return-void
.end method