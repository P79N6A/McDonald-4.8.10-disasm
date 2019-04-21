.class public Lcom/facebook/stetho/dumpapp/StreamingDumpappHandler;
.super Lcom/facebook/stetho/dumpapp/DumpappHandler;
.source "StreamingDumpappHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/stetho/dumpapp/StreamingDumpappHandler$DumpappHttpEntity;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/stetho/dumpapp/Dumper;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dumper"    # Lcom/facebook/stetho/dumpapp/Dumper;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/facebook/stetho/dumpapp/DumpappHandler;-><init>(Landroid/content/Context;Lcom/facebook/stetho/dumpapp/Dumper;)V

    .line 28
    return-void
.end method

.method static synthetic access$000(Lorg/apache/http/HttpRequest;Lcom/facebook/stetho/dumpapp/Dumper;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/http/HttpRequest;
    .param p1, "x1"    # Lcom/facebook/stetho/dumpapp/Dumper;
    .param p2, "x2"    # Ljava/io/InputStream;
    .param p3, "x3"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/stetho/dumpapp/StreamingDumpappHandler;->writeTo(Lorg/apache/http/HttpRequest;Lcom/facebook/stetho/dumpapp/Dumper;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method private static writeTo(Lorg/apache/http/HttpRequest;Lcom/facebook/stetho/dumpapp/Dumper;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5
    .param p0, "request"    # Lorg/apache/http/HttpRequest;
    .param p1, "dumper"    # Lcom/facebook/stetho/dumpapp/Dumper;
    .param p2, "input"    # Ljava/io/InputStream;
    .param p3, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    new-instance v2, Lcom/facebook/stetho/dumpapp/StreamFramer;

    invoke-direct {v2, p3}, Lcom/facebook/stetho/dumpapp/StreamFramer;-><init>(Ljava/io/OutputStream;)V

    .line 49
    .local v2, "framer":Lcom/facebook/stetho/dumpapp/StreamFramer;
    invoke-static {p0}, Lcom/facebook/stetho/dumpapp/StreamingDumpappHandler;->getArgs(Lorg/apache/http/HttpRequest;)[Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "args":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {v2}, Lcom/facebook/stetho/dumpapp/StreamFramer;->getStdout()Ljava/io/PrintStream;

    move-result-object v3

    invoke-virtual {v2}, Lcom/facebook/stetho/dumpapp/StreamFramer;->getStderr()Ljava/io/PrintStream;

    move-result-object v4

    invoke-virtual {p1, p2, v3, v4, v0}, Lcom/facebook/stetho/dumpapp/Dumper;->dump(Ljava/io/InputStream;Ljava/io/PrintStream;Ljava/io/PrintStream;[Ljava/lang/String;)I

    move-result v1

    .line 67
    .local v1, "exitCode":I
    invoke-virtual {v2, v1}, Lcom/facebook/stetho/dumpapp/StreamFramer;->writeExitCode(I)V
    :try_end_0
    .catch Lcom/facebook/stetho/dumpapp/DumpappOutputBrokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-virtual {v2}, Lcom/facebook/stetho/dumpapp/StreamFramer;->close()V

    .line 74
    .end local v1    # "exitCode":I
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v3

    .line 72
    invoke-virtual {v2}, Lcom/facebook/stetho/dumpapp/StreamFramer;->close()V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Lcom/facebook/stetho/dumpapp/StreamFramer;->close()V

    throw v3
.end method


# virtual methods
.method protected getResponseEntity(Lorg/apache/http/HttpRequest;Ljava/io/InputStream;Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpEntity;
    .locals 2
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "bufferedInput"    # Ljava/io/InputStream;
    .param p3, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lcom/facebook/stetho/dumpapp/StreamingDumpappHandler$DumpappHttpEntity;

    invoke-virtual {p0}, Lcom/facebook/stetho/dumpapp/StreamingDumpappHandler;->getDumper()Lcom/facebook/stetho/dumpapp/Dumper;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/facebook/stetho/dumpapp/StreamingDumpappHandler$DumpappHttpEntity;-><init>(Lcom/facebook/stetho/dumpapp/StreamingDumpappHandler;Lorg/apache/http/HttpRequest;Lcom/facebook/stetho/dumpapp/Dumper;Ljava/io/InputStream;)V

    .line 37
    .local v0, "entity":Lcom/facebook/stetho/dumpapp/StreamingDumpappHandler$DumpappHttpEntity;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/stetho/dumpapp/StreamingDumpappHandler$DumpappHttpEntity;->setChunked(Z)V

    .line 38
    const-string v1, "application/octet-stream"

    invoke-virtual {v0, v1}, Lcom/facebook/stetho/dumpapp/StreamingDumpappHandler$DumpappHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 39
    return-object v0
.end method
