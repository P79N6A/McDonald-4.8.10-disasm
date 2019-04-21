.class public Lcom/facebook/stetho/dumpapp/RawDumpappHandler;
.super Lcom/facebook/stetho/dumpapp/DumpappHandler;
.source "RawDumpappHandler.java"


# static fields
.field private static final RESPONSE_HEADER_EXIT_CODE:Ljava/lang/String; = "X-FAB-ExitCode"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/stetho/dumpapp/Dumper;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dumper"    # Lcom/facebook/stetho/dumpapp/Dumper;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/facebook/stetho/dumpapp/DumpappHandler;-><init>(Landroid/content/Context;Lcom/facebook/stetho/dumpapp/Dumper;)V

    .line 35
    return-void
.end method

.method private static createResponseEntity([B)Lorg/apache/http/HttpEntity;
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 71
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v0, p0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 72
    .local v0, "entity":Lorg/apache/http/entity/ByteArrayEntity;
    invoke-static {p0}, Lcom/facebook/stetho/dumpapp/RawDumpappHandler;->isProbablyBinaryData([B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    const-string v1, "application/octet-stream"

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 77
    :goto_0
    return-object v0

    .line 75
    :cond_0
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static isProbablyBinaryData([B)Z
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 81
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 82
    aget-byte v0, p0, v1

    .line 83
    .local v0, "b":B
    const/16 v2, 0x7f

    if-ge v0, v2, :cond_0

    const/16 v2, 0x20

    if-ge v0, v2, :cond_1

    const/16 v2, 0xd

    if-eq v0, v2, :cond_1

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    .line 85
    :cond_0
    const/4 v2, 0x1

    .line 88
    .end local v0    # "b":B
    :goto_1
    return v2

    .line 81
    .restart local v0    # "b":B
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    .end local v0    # "b":B
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected getResponseEntity(Lorg/apache/http/HttpRequest;Ljava/io/InputStream;Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpEntity;
    .locals 8
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "bufferedInput"    # Ljava/io/InputStream;
    .param p3, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 46
    .local v4, "stdoutBuffer":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/PrintStream;

    invoke-direct {v3, v4}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 48
    .local v3, "stdout":Ljava/io/PrintStream;
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 49
    .local v2, "stderrBuffer":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 52
    .local v1, "stderr":Ljava/io/PrintStream;
    :try_start_2
    invoke-virtual {p0}, Lcom/facebook/stetho/dumpapp/RawDumpappHandler;->getDumper()Lcom/facebook/stetho/dumpapp/Dumper;

    move-result-object v5

    invoke-static {p1}, Lcom/facebook/stetho/dumpapp/RawDumpappHandler;->getArgs(Lorg/apache/http/HttpRequest;)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p2, v3, v1, v6}, Lcom/facebook/stetho/dumpapp/Dumper;->dump(Ljava/io/InputStream;Ljava/io/PrintStream;Ljava/io/PrintStream;[Ljava/lang/String;)I

    move-result v0

    .line 53
    .local v0, "exitCode":I
    const-string v5, "X-FAB-ExitCode"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p3, v5, v6}, Lorg/apache/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    :try_start_3
    invoke-virtual {v1}, Ljava/io/PrintStream;->close()V

    .line 56
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 57
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 61
    :cond_0
    :try_start_4
    invoke-virtual {v3}, Ljava/io/PrintStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 64
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 67
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/stetho/dumpapp/RawDumpappHandler;->createResponseEntity([B)Lorg/apache/http/HttpEntity;

    move-result-object v5

    return-object v5

    .line 55
    .end local v0    # "exitCode":I
    :catchall_0
    move-exception v5

    :try_start_5
    invoke-virtual {v1}, Ljava/io/PrintStream;->close()V

    .line 56
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 57
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->write([B)V

    :cond_1
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 61
    .end local v1    # "stderr":Ljava/io/PrintStream;
    .end local v2    # "stderrBuffer":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v5

    :try_start_6
    invoke-virtual {v3}, Ljava/io/PrintStream;->close()V

    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 64
    .end local v3    # "stdout":Ljava/io/PrintStream;
    :catchall_2
    move-exception v5

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    throw v5
.end method
