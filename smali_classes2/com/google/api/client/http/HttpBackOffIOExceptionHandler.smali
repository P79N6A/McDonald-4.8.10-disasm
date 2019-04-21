.class public Lcom/google/api/client/http/HttpBackOffIOExceptionHandler;
.super Ljava/lang/Object;
.source "HttpBackOffIOExceptionHandler.java"

# interfaces
.implements Lcom/google/api/client/http/HttpIOExceptionHandler;


# annotations
.annotation build Lcom/google/api/client/util/Beta;
.end annotation


# instance fields
.field private final backOff:Lcom/google/api/client/util/BackOff;

.field private sleeper:Lcom/google/api/client/util/Sleeper;


# virtual methods
.method public handleIOException(Lcom/google/api/client/http/HttpRequest;Z)Z
    .locals 4
    .param p1, "request"    # Lcom/google/api/client/http/HttpRequest;
    .param p2, "supportsRetry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 109
    if-nez p2, :cond_0

    .line 115
    :goto_0
    return v1

    .line 113
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/google/api/client/http/HttpBackOffIOExceptionHandler;->sleeper:Lcom/google/api/client/util/Sleeper;

    iget-object v3, p0, Lcom/google/api/client/http/HttpBackOffIOExceptionHandler;->backOff:Lcom/google/api/client/util/BackOff;

    invoke-static {v2, v3}, Lcom/google/api/client/util/BackOffUtils;->next(Lcom/google/api/client/util/Sleeper;Lcom/google/api/client/util/BackOff;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "exception":Ljava/lang/InterruptedException;
    goto :goto_0
.end method
