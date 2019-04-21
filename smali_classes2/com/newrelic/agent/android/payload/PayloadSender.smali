.class public abstract Lcom/newrelic/agent/android/payload/PayloadSender;
.super Ljava/lang/Object;
.source "PayloadSender.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newrelic/agent/android/payload/PayloadSender$CompletionHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/newrelic/agent/android/payload/PayloadSender;",
        ">;"
    }
.end annotation


# static fields
.field protected static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# instance fields
.field protected final agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

.field protected payload:Lcom/newrelic/agent/android/payload/Payload;

.field protected responseCode:I

.field protected final timer:Lcom/newrelic/agent/android/stats/TicToc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/payload/PayloadSender;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method public constructor <init>(Lcom/newrelic/agent/android/AgentConfiguration;)V
    .locals 1
    .param p1, "agentConfiguration"    # Lcom/newrelic/agent/android/AgentConfiguration;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/newrelic/agent/android/payload/PayloadSender;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    .line 30
    new-instance v0, Lcom/newrelic/agent/android/stats/TicToc;

    invoke-direct {v0}, Lcom/newrelic/agent/android/stats/TicToc;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/payload/PayloadSender;->timer:Lcom/newrelic/agent/android/stats/TicToc;

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/newrelic/agent/android/payload/PayloadSender;->responseCode:I

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/newrelic/agent/android/payload/Payload;Lcom/newrelic/agent/android/AgentConfiguration;)V
    .locals 0
    .param p1, "payload"    # Lcom/newrelic/agent/android/payload/Payload;
    .param p2, "agentConfiguration"    # Lcom/newrelic/agent/android/AgentConfiguration;

    .prologue
    .line 35
    invoke-direct {p0, p2}, Lcom/newrelic/agent/android/payload/PayloadSender;-><init>(Lcom/newrelic/agent/android/AgentConfiguration;)V

    .line 36
    iput-object p1, p0, Lcom/newrelic/agent/android/payload/PayloadSender;->payload:Lcom/newrelic/agent/android/payload/Payload;

    .line 37
    return-void
.end method

.method public constructor <init>([BLcom/newrelic/agent/android/AgentConfiguration;)V
    .locals 1
    .param p1, "payloadBytes"    # [B
    .param p2, "agentConfiguration"    # Lcom/newrelic/agent/android/AgentConfiguration;

    .prologue
    .line 40
    invoke-direct {p0, p2}, Lcom/newrelic/agent/android/payload/PayloadSender;-><init>(Lcom/newrelic/agent/android/AgentConfiguration;)V

    .line 41
    new-instance v0, Lcom/newrelic/agent/android/payload/Payload;

    invoke-direct {v0, p1}, Lcom/newrelic/agent/android/payload/Payload;-><init>([B)V

    iput-object v0, p0, Lcom/newrelic/agent/android/payload/PayloadSender;->payload:Lcom/newrelic/agent/android/payload/Payload;

    .line 42
    return-void
.end method


# virtual methods
.method public call()Lcom/newrelic/agent/android/payload/PayloadSender;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 93
    :try_start_0
    iget-object v3, p0, Lcom/newrelic/agent/android/payload/PayloadSender;->timer:Lcom/newrelic/agent/android/stats/TicToc;

    invoke-virtual {v3}, Lcom/newrelic/agent/android/stats/TicToc;->tic()V

    .line 94
    invoke-virtual {p0}, Lcom/newrelic/agent/android/payload/PayloadSender;->getConnection()Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 96
    .local v0, "connection":Ljava/net/HttpURLConnection;
    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 97
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 100
    .local v2, "out":Ljava/io/OutputStream;
    :try_start_2
    iget-object v3, p0, Lcom/newrelic/agent/android/payload/PayloadSender;->payload:Lcom/newrelic/agent/android/payload/Payload;

    invoke-virtual {v3}, Lcom/newrelic/agent/android/payload/Payload;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 105
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    iput v3, p0, Lcom/newrelic/agent/android/payload/PayloadSender;->responseCode:I

    .line 106
    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/payload/PayloadSender;->onRequestResponse(Ljava/net/HttpURLConnection;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 111
    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 121
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v2    # "out":Ljava/io/OutputStream;
    :goto_0
    return-object p0

    .line 102
    .restart local v0    # "connection":Ljava/net/HttpURLConnection;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catchall_0
    move-exception v3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 108
    .end local v2    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {p0, v1}, Lcom/newrelic/agent/android/payload/PayloadSender;->onRequestException(Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 111
    :try_start_7
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0

    .line 117
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 118
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to upload data to New Relic, will try again later. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/newrelic/agent/android/payload/PayloadSender;->onFailedUpload(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "connection":Ljava/net/HttpURLConnection;
    :catchall_1
    move-exception v3

    :try_start_8
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/newrelic/agent/android/payload/PayloadSender;->call()Lcom/newrelic/agent/android/payload/PayloadSender;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 176
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/newrelic/agent/android/payload/PayloadSender;

    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/newrelic/agent/android/payload/PayloadSender;->getPayload()Lcom/newrelic/agent/android/payload/Payload;

    move-result-object v1

    check-cast p1, Lcom/newrelic/agent/android/payload/PayloadSender;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/newrelic/agent/android/payload/PayloadSender;->getPayload()Lcom/newrelic/agent/android/payload/Payload;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 179
    :cond_0
    return v0
.end method

.method protected abstract getConnection()Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getPayload()Lcom/newrelic/agent/android/payload/Payload;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/newrelic/agent/android/payload/PayloadSender;->payload:Lcom/newrelic/agent/android/payload/Payload;

    return-object v0
.end method

.method protected getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/newrelic/agent/android/payload/PayloadSender;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/AgentConfiguration;->useSsl()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "http://"

    goto :goto_0
.end method

.method public getResponseCode()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/newrelic/agent/android/payload/PayloadSender;->responseCode:I

    return v0
.end method

.method public isSuccessfulResponse()Z
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/newrelic/agent/android/payload/PayloadSender;->responseCode:I

    sparse-switch v0, :sswitch_data_0

    .line 171
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 168
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 165
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x1f4 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onFailedUpload(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 87
    sget-object v0, Lcom/newrelic/agent/android/payload/PayloadSender;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    invoke-interface {v0, p1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method protected onRequestContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "responseString"    # Ljava/lang/String;

    .prologue
    .line 80
    return-void
.end method

.method protected onRequestException(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data upload failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/payload/PayloadSender;->onFailedUpload(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method protected onRequestResponse(Ljava/net/HttpURLConnection;)V
    .locals 8
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 57
    .local v0, "responseCode":I
    sparse-switch v0, :sswitch_data_0

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Something went wrong while submitting the data payload (will try again later) - Response code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/newrelic/agent/android/payload/PayloadSender;->onFailedUpload(Ljava/lang/String;)V

    .line 76
    :cond_0
    :goto_0
    sget-object v3, Lcom/newrelic/agent/android/payload/PayloadSender;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Payload delivery took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/newrelic/agent/android/payload/PayloadSender;->timer:Lcom/newrelic/agent/android/stats/TicToc;

    invoke-virtual {v5}, Lcom/newrelic/agent/android/stats/TicToc;->toc()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 77
    return-void

    .line 59
    :sswitch_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 60
    .local v1, "responseInputStream":Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/newrelic/agent/android/payload/PayloadSender;->readStream(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "responseString":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/newrelic/agent/android/payload/PayloadSender;->onRequestContent(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    .end local v1    # "responseInputStream":Ljava/io/InputStream;
    .end local v2    # "responseString":Ljava/lang/String;
    :sswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The data payload was rejected and will be deleted - Response code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/newrelic/agent/android/payload/PayloadSender;->onFailedUpload(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x1f4 -> :sswitch_1
    .end sparse-switch
.end method

.method protected readStream(Ljava/io/InputStream;I)Ljava/lang/String;
    .locals 7
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "maxLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 136
    const/4 v4, 0x0

    .line 139
    .local v4, "result":Ljava/lang/String;
    new-instance v3, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v3, p1, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 142
    .local v3, "reader":Ljava/io/InputStreamReader;
    new-array v0, p2, [C

    .line 145
    .local v0, "buffer":[C
    const/4 v1, 0x0

    .line 146
    .local v1, "numChars":I
    const/4 v2, 0x0

    .line 148
    .local v2, "readSize":I
    :goto_0
    if-ge v1, p2, :cond_0

    if-eq v2, v6, :cond_0

    .line 149
    add-int/2addr v1, v2

    .line 150
    array-length v5, v0

    sub-int/2addr v5, v1

    invoke-virtual {v3, v0, v1, v5}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v2

    goto :goto_0

    .line 153
    :cond_0
    if-eq v1, v6, :cond_1

    .line 157
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 158
    new-instance v4, Ljava/lang/String;

    .end local v4    # "result":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-direct {v4, v0, v5, v1}, Ljava/lang/String;-><init>([CII)V

    .line 161
    .restart local v4    # "result":Ljava/lang/String;
    :cond_1
    return-object v4
.end method

.method public setPayload([B)V
    .locals 1
    .param p1, "payloadBytes"    # [B

    .prologue
    .line 49
    iget-object v0, p0, Lcom/newrelic/agent/android/payload/PayloadSender;->payload:Lcom/newrelic/agent/android/payload/Payload;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/payload/Payload;->putBytes([B)V

    .line 50
    return-void
.end method

.method public shouldRetry()Z
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldUploadOpportunistically()Z
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/newrelic/agent/android/Agent;->hasReachableNetworkConnection(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
