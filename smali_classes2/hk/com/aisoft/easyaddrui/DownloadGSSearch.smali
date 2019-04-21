.class public Lhk/com/aisoft/easyaddrui/DownloadGSSearch;
.super Landroid/os/AsyncTask;
.source "DownloadGSSearch.java"

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

.field sAddress:Lhk/com/aisoft/easyaddrui/Address;

.field sBundle:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lhk/com/aisoft/easyaddrui/Address;)V
    .locals 1
    .param p1, "mAddress"    # Lhk/com/aisoft/easyaddrui/Address;

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/DownloadGSSearch;->sBundle:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lhk/com/aisoft/easyaddrui/DownloadGSSearch;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    .line 25
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sEABundle:Ljava/lang/String;

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/DownloadGSSearch;->sBundle:Ljava/lang/String;

    .line 26
    return-void
.end method

.method private downloadUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "sUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    const/4 v2, 0x0

    .line 106
    .local v2, "is":Ljava/io/InputStream;
    const-string v6, ""

    .line 108
    .local v6, "sData":Ljava/lang/String;
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 109
    .local v8, "url":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    invoke-static {v9}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->openConnection(Ljava/net/URLConnection;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 110
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const/16 v9, 0x2710

    invoke-virtual {v0, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 111
    const/16 v9, 0x3a98

    invoke-virtual {v0, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 112
    const-string v9, "GET"

    invoke-virtual {v0, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 113
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 115
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 116
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 117
    .local v5, "response":I
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 120
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 121
    .local v4, "r":Ljava/io/BufferedReader;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .local v7, "total":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 124
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 127
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "r":Ljava/io/BufferedReader;
    .end local v5    # "response":I
    .end local v7    # "total":Ljava/lang/StringBuilder;
    .end local v8    # "url":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 128
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v6, "ERR"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    if-eqz v2, :cond_0

    .line 131
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 134
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-object v6

    .line 126
    .restart local v0    # "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v4    # "r":Ljava/io/BufferedReader;
    .restart local v5    # "response":I
    .restart local v7    # "total":Ljava/lang/StringBuilder;
    .restart local v8    # "url":Ljava/net/URL;
    :cond_1
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .line 130
    if-eqz v2, :cond_0

    .line 131
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_1

    .line 130
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "r":Ljava/io/BufferedReader;
    .end local v5    # "response":I
    .end local v7    # "total":Ljava/lang/StringBuilder;
    .end local v8    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v9

    if-eqz v2, :cond_2

    .line 131
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_2
    throw v9
.end method

.method private static getPayload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "mArea"    # Ljava/lang/String;
    .param p1, "mDistrict"    # Ljava/lang/String;
    .param p2, "mStreet"    # Ljava/lang/String;
    .param p3, "mStreetLon"    # Ljava/lang/String;
    .param p4, "mStreetNo"    # Ljava/lang/String;
    .param p5, "mEstate"    # Ljava/lang/String;
    .param p6, "mBldg"    # Ljava/lang/String;
    .param p7, "mBlk"    # Ljava/lang/String;
    .param p8, "mBlock"    # Ljava/lang/String;
    .param p9, "mFloor"    # Ljava/lang/String;
    .param p10, "mFlat"    # Ljava/lang/String;
    .param p11, "mRemarks"    # Ljava/lang/String;
    .param p12, "sGSMarket"    # Ljava/lang/String;
    .param p13, "sGSApplication"    # Ljava/lang/String;
    .param p14, "sGSLanguage"    # Ljava/lang/String;

    .prologue
    .line 29
    const-string v1, ""

    .line 30
    .local v1, "ret":Ljava/lang/String;
    const-string v2, ""

    .line 31
    .local v2, "sBody":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "{\\\"AddressElements\\\":["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "{\\\"AddressElementTypeCode\\\":1,\\\"Value\\\":[{\\\"AliasTypeCode\\\":1,\\\"Alias\\\":\\\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\\\"}]},"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "{\\\"AddressElementTypeCode\\\":6,\\\"Value\\\":[{\\\"AliasTypeCode\\\":1,\\\"Alias\\\":\\\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\\\"}]},"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "{\\\"AddressElementTypeCode\\\":9,\\\"Value\\\":[{\\\"AliasTypeCode\\\":1,\\\"Alias\\\":\\\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\\\"}]},"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "{\\\"AddressElementTypeCode\\\":20,\\\"Value\\\":[{\\\"AliasTypeCode\\\":1,\\\"Alias\\\":\\\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\\\"}]},"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "{\\\"AddressElementTypeCode\\\":16,\\\"Value\\\":[{\\\"AliasTypeCode\\\":1,\\\"Alias\\\":\\\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\\\"}]},"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "{\\\"AddressElementTypeCode\\\":7,\\\"Value\\\":[{\\\"AliasTypeCode\\\":1,\\\"Alias\\\":\\\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\\\"}]},"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "{\\\"AddressElementTypeCode\\\":2,\\\"Value\\\":[{\\\"AliasTypeCode\\\":1,\\\"Alias\\\":\\\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\\\"}]},"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "{\\\"AddressElementTypeCode\\\":13,\\\"Value\\\":[{\\\"AliasTypeCode\\\":1,\\\"Alias\\\":\\\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\\\"}]},"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "{\\\"AddressElementTypeCode\\\":14,\\\"Value\\\":[{\\\"AliasTypeCode\\\":1,\\\"Alias\\\":\\\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\\\"}]},"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "{\\\"AddressElementTypeCode\\\":15,\\\"Value\\\":[{\\\"AliasTypeCode\\\":1,\\\"Alias\\\":\\\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\\\"}]},"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "{\\\"AddressElementTypeCode\\\":21,\\\"Value\\\":[{\\\"AliasTypeCode\\\":1,\\\"Alias\\\":\\\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p11

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\\\"}]}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "],\\\"DeliveryTime\\\":\\\"2015-10-22T05:25:42.499Z\\\"}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "{\"RequestID\":-99,\"MessageType\":2,\"Body\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\",\"ExternalMarketCode\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p12

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\",\"Application\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p13

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\",\"Language\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p14

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    return-object v1
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lhk/com/aisoft/easyaddrui/DownloadGSSearch;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
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
    iget-object v0, p0, Lhk/com/aisoft/easyaddrui/DownloadGSSearch;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "DownloadGSSearch#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :goto_0
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lhk/com/aisoft/easyaddrui/DownloadGSSearch;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "DownloadGSSearch#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 28
    .param p1, "urls"    # [Ljava/lang/String;

    .prologue
    .line 57
    const/4 v2, 0x5

    invoke-static {v2}, Lhk/com/aisoft/easyaddrui/eaView;->random(I)Ljava/lang/String;

    move-result-object v26

    .line 58
    .local v26, "sPrefix":Ljava/lang/String;
    const/4 v2, 0x5

    invoke-static {v2}, Lhk/com/aisoft/easyaddrui/eaView;->random(I)Ljava/lang/String;

    move-result-object v27

    .line 59
    .local v27, "sSuffix":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lhk/com/aisoft/easyaddrui/DownloadGSSearch;->sBundle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 60
    .local v24, "sPayload":Ljava/lang/String;
    const-string v25, ""

    .line 61
    .local v25, "sPayloadEn":Ljava/lang/String;
    new-instance v18, Lhk/com/aisoft/easyaddrui/AES256JNCryptor;

    invoke-direct/range {v18 .. v18}, Lhk/com/aisoft/easyaddrui/AES256JNCryptor;-><init>()V

    .line 62
    .local v18, "cryptor":Lhk/com/aisoft/easyaddrui/JNCryptor;
    sget-object v20, Lhk/com/aisoft/easyaddrui/eaView;->sSysHash:Ljava/lang/String;

    .line 64
    .local v20, "password":Ljava/lang/String;
    :try_start_0
    const-string v2, "UTF-8"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v21

    .line 65
    .local v21, "plaintext":[B
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v2}, Lhk/com/aisoft/easyaddrui/JNCryptor;->encryptData([B[C)[B

    move-result-object v17

    .line 66
    .local v17, "ciphertext":[B
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v25

    .line 73
    .end local v17    # "ciphertext":[B
    .end local v21    # "plaintext":[B
    :cond_0
    :goto_0
    :try_start_1
    const-string v22, "YUFDBHAMQJWD673242ST"

    .line 74
    .local v22, "sGSToken":Ljava/lang/String;
    const-string v14, "HK"

    .line 75
    .local v14, "sGSMarket":Ljava/lang/String;
    const-string v15, "IBA"

    .line 76
    .local v15, "sGSApplication":Ljava/lang/String;
    sget-object v16, Lhk/com/aisoft/easyaddrui/eaView;->sEALang:Ljava/lang/String;

    .line 78
    .local v16, "sGSLanguage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lhk/com/aisoft/easyaddrui/DownloadGSSearch;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v2, v2, Lhk/com/aisoft/easyaddrui/Address;->sAreaC:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lhk/com/aisoft/easyaddrui/DownloadGSSearch;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v3, v3, Lhk/com/aisoft/easyaddrui/Address;->sDistrictC:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lhk/com/aisoft/easyaddrui/DownloadGSSearch;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v4, v4, Lhk/com/aisoft/easyaddrui/Address;->sStreetC:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lhk/com/aisoft/easyaddrui/DownloadGSSearch;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v5, v5, Lhk/com/aisoft/easyaddrui/Address;->sStreetLon:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lhk/com/aisoft/easyaddrui/DownloadGSSearch;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v6, v6, Lhk/com/aisoft/easyaddrui/Address;->sStreetNo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lhk/com/aisoft/easyaddrui/DownloadGSSearch;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v7, v7, Lhk/com/aisoft/easyaddrui/Address;->sEstateC:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lhk/com/aisoft/easyaddrui/DownloadGSSearch;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v8, v8, Lhk/com/aisoft/easyaddrui/Address;->sBldgC:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lhk/com/aisoft/easyaddrui/DownloadGSSearch;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v9, v9, Lhk/com/aisoft/easyaddrui/Address;->sBlockC:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lhk/com/aisoft/easyaddrui/DownloadGSSearch;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v10, v10, Lhk/com/aisoft/easyaddrui/Address;->sBlock:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lhk/com/aisoft/easyaddrui/DownloadGSSearch;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v11, v11, Lhk/com/aisoft/easyaddrui/Address;->sFloor:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lhk/com/aisoft/easyaddrui/DownloadGSSearch;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v12, v12, Lhk/com/aisoft/easyaddrui/Address;->sFlat:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lhk/com/aisoft/easyaddrui/DownloadGSSearch;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v13, v13, Lhk/com/aisoft/easyaddrui/Address;->sRemarks:Ljava/lang/String;

    invoke-static/range {v2 .. v16}, Lhk/com/aisoft/easyaddrui/DownloadGSSearch;->getPayload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 80
    .local v23, "sPayLoad":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?access_token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "UTF-8"

    move-object/from16 v0, v22

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "UTF-8"

    move-object/from16 v0, v23

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&cc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    const-string v4, ""

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lhk/com/aisoft/easyaddrui/DownloadGSSearch;->downloadUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 83
    .end local v14    # "sGSMarket":Ljava/lang/String;
    .end local v15    # "sGSApplication":Ljava/lang/String;
    .end local v16    # "sGSLanguage":Ljava/lang/String;
    .end local v22    # "sGSToken":Ljava/lang/String;
    .end local v23    # "sPayLoad":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 67
    :catch_0
    move-exception v19

    .line 68
    .local v19, "e":Ljava/lang/Exception;
    sget-boolean v2, Lhk/com/aisoft/easyaddrui/BuildConfig;->DEBUG:Z

    if-eqz v2, :cond_0

    goto/16 :goto_0

    .line 81
    .end local v19    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v19

    .line 82
    .local v19, "e":Ljava/io/IOException;
    invoke-virtual/range {v19 .. v19}, Ljava/io/IOException;->printStackTrace()V

    .line 83
    const-string v2, "ERR"

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lhk/com/aisoft/easyaddrui/DownloadGSSearch;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "DownloadGSSearch#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :goto_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lhk/com/aisoft/easyaddrui/DownloadGSSearch;->onPostExecute(Ljava/lang/String;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "DownloadGSSearch#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4
    .param p1, "sResult"    # Ljava/lang/String;

    .prologue
    .line 89
    const/4 v1, 0x0

    .line 91
    .local v1, "sStoreReturn":Lhk/com/aisoft/easyaddrui/StoreReturn;
    :try_start_0
    const-string v3, "ERR"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    new-instance v2, Lhk/com/aisoft/easyaddrui/StoreReturn;

    const-string v3, "-5005"

    invoke-direct {v2, v3}, Lhk/com/aisoft/easyaddrui/StoreReturn;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "sStoreReturn":Lhk/com/aisoft/easyaddrui/StoreReturn;
    .local v2, "sStoreReturn":Lhk/com/aisoft/easyaddrui/StoreReturn;
    move-object v1, v2

    .line 100
    .end local v2    # "sStoreReturn":Lhk/com/aisoft/easyaddrui/StoreReturn;
    .restart local v1    # "sStoreReturn":Lhk/com/aisoft/easyaddrui/StoreReturn;
    :goto_0
    sget-object v3, Lhk/com/aisoft/easyaddrui/eaView;->sGetStoreCallbackInterface:Lhk/com/aisoft/easyaddrui/GetStoreCallbackInterface;

    invoke-interface {v3, v1}, Lhk/com/aisoft/easyaddrui/GetStoreCallbackInterface;->onGetStoreReturn(Lhk/com/aisoft/easyaddrui/StoreReturn;)V

    .line 102
    return-void

    .line 94
    :cond_0
    :try_start_1
    new-instance v2, Lhk/com/aisoft/easyaddrui/StoreReturn;

    const-string v3, "1"

    invoke-direct {v2, v3}, Lhk/com/aisoft/easyaddrui/StoreReturn;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 95
    .end local v1    # "sStoreReturn":Lhk/com/aisoft/easyaddrui/StoreReturn;
    .restart local v2    # "sStoreReturn":Lhk/com/aisoft/easyaddrui/StoreReturn;
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhk/com/aisoft/easyaddrui/StoreReturn;->setHub(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v1, v2

    .end local v2    # "sStoreReturn":Lhk/com/aisoft/easyaddrui/StoreReturn;
    .restart local v1    # "sStoreReturn":Lhk/com/aisoft/easyaddrui/StoreReturn;
    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    new-instance v1, Lhk/com/aisoft/easyaddrui/StoreReturn;

    .end local v1    # "sStoreReturn":Lhk/com/aisoft/easyaddrui/StoreReturn;
    const-string v3, "-5005"

    invoke-direct {v1, v3}, Lhk/com/aisoft/easyaddrui/StoreReturn;-><init>(Ljava/lang/String;)V

    .restart local v1    # "sStoreReturn":Lhk/com/aisoft/easyaddrui/StoreReturn;
    goto :goto_0

    .line 97
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "sStoreReturn":Lhk/com/aisoft/easyaddrui/StoreReturn;
    .restart local v2    # "sStoreReturn":Lhk/com/aisoft/easyaddrui/StoreReturn;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "sStoreReturn":Lhk/com/aisoft/easyaddrui/StoreReturn;
    .restart local v1    # "sStoreReturn":Lhk/com/aisoft/easyaddrui/StoreReturn;
    goto :goto_1
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 52
    return-void
.end method
