.class public Lhk/com/aisoft/easyaddrui/DownloadLogSearch;
.super Landroid/os/AsyncTask;
.source "DownloadLogSearch.java"

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


# static fields
.field protected static sBundle:Ljava/lang/String;

.field protected static sCity:Ljava/lang/String;

.field protected static sGPSX:Ljava/lang/String;

.field protected static sGPSY:Ljava/lang/String;

.field protected static sKey:Ljava/lang/String;


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, ""

    sput-object v0, Lhk/com/aisoft/easyaddrui/DownloadLogSearch;->sGPSX:Ljava/lang/String;

    .line 19
    const-string v0, ""

    sput-object v0, Lhk/com/aisoft/easyaddrui/DownloadLogSearch;->sGPSY:Ljava/lang/String;

    .line 20
    const-string v0, ""

    sput-object v0, Lhk/com/aisoft/easyaddrui/DownloadLogSearch;->sCity:Ljava/lang/String;

    .line 21
    const-string v0, ""

    sput-object v0, Lhk/com/aisoft/easyaddrui/DownloadLogSearch;->sKey:Ljava/lang/String;

    .line 22
    const-string v0, ""

    sput-object v0, Lhk/com/aisoft/easyaddrui/DownloadLogSearch;->sBundle:Ljava/lang/String;

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
    .line 67
    const/4 v1, 0x0

    .line 68
    .local v1, "is":Ljava/io/InputStream;
    const-string v5, ""

    .line 70
    .local v5, "sData":Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 71
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    invoke-static {v8}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->openConnection(Ljava/net/URLConnection;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 72
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const/16 v8, 0x2710

    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 73
    const/16 v8, 0x3a98

    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 74
    const-string v8, "GET"

    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 75
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 77
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 78
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 79
    .local v4, "response":I
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 82
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 83
    .local v3, "r":Ljava/io/BufferedReader;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .local v6, "total":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 86
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 90
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "r":Ljava/io/BufferedReader;
    .end local v4    # "response":I
    .end local v6    # "total":Ljava/lang/StringBuilder;
    .end local v7    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v8

    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_0
    throw v8

    .line 88
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

    .line 90
    if-eqz v1, :cond_2

    .line 91
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 94
    :cond_2
    return-object v5
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lhk/com/aisoft/easyaddrui/DownloadLogSearch;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
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
    iget-object v0, p0, Lhk/com/aisoft/easyaddrui/DownloadLogSearch;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "DownloadLogSearch#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :goto_0
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lhk/com/aisoft/easyaddrui/DownloadLogSearch;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "DownloadLogSearch#doInBackground"

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

    .line 39
    invoke-static {v9}, Lhk/com/aisoft/easyaddrui/eaView;->random(I)Ljava/lang/String;

    move-result-object v7

    .line 40
    .local v7, "sPrefix":Ljava/lang/String;
    invoke-static {v9}, Lhk/com/aisoft/easyaddrui/eaView;->random(I)Ljava/lang/String;

    move-result-object v8

    .line 41
    .local v8, "sSuffix":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lhk/com/aisoft/easyaddrui/DownloadLogSearch;->sBundle:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lhk/com/aisoft/easyaddrui/DownloadLogSearch;->sGPSX:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lhk/com/aisoft/easyaddrui/DownloadLogSearch;->sGPSY:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 42
    .local v5, "sPayload":Ljava/lang/String;
    const-string v6, ""

    .line 43
    .local v6, "sPayloadEn":Ljava/lang/String;
    new-instance v1, Lhk/com/aisoft/easyaddrui/AES256JNCryptor;

    invoke-direct {v1}, Lhk/com/aisoft/easyaddrui/AES256JNCryptor;-><init>()V

    .line 44
    .local v1, "cryptor":Lhk/com/aisoft/easyaddrui/JNCryptor;
    sget-object v3, Lhk/com/aisoft/easyaddrui/eaView;->sSysHash:Ljava/lang/String;

    .line 46
    .local v3, "password":Ljava/lang/String;
    :try_start_0
    const-string v9, "UTF-8"

    invoke-virtual {v5, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 47
    .local v4, "plaintext":[B
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    invoke-interface {v1, v4, v9}, Lhk/com/aisoft/easyaddrui/JNCryptor;->encryptData([B[C)[B

    move-result-object v0

    .line 48
    .local v0, "ciphertext":[B
    const/4 v9, 0x0

    invoke-static {v0, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 55
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

    const-string v10, "?keywords="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lhk/com/aisoft/easyaddrui/DownloadLogSearch;->sKey:Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&city="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lhk/com/aisoft/easyaddrui/DownloadLogSearch;->sCity:Ljava/lang/String;

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

    invoke-direct {p0, v9}, Lhk/com/aisoft/easyaddrui/DownloadLogSearch;->downloadUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    .line 57
    :goto_1
    return-object v9

    .line 49
    :catch_0
    move-exception v2

    .line 50
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v9, Lhk/com/aisoft/easyaddrui/BuildConfig;->DEBUG:Z

    if-eqz v9, :cond_0

    goto :goto_0

    .line 56
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 57
    .local v2, "e":Ljava/io/IOException;
    const-string v9, "ERR"

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lhk/com/aisoft/easyaddrui/DownloadLogSearch;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "DownloadLogSearch#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :goto_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lhk/com/aisoft/easyaddrui/DownloadLogSearch;->onPostExecute(Ljava/lang/String;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "DownloadLogSearch#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0
    .param p1, "sResult"    # Ljava/lang/String;

    .prologue
    .line 64
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 33
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 34
    return-void
.end method
