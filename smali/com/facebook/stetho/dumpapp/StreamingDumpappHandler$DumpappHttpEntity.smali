.class Lcom/facebook/stetho/dumpapp/StreamingDumpappHandler$DumpappHttpEntity;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "StreamingDumpappHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/stetho/dumpapp/StreamingDumpappHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DumpappHttpEntity"
.end annotation


# instance fields
.field private final mDumper:Lcom/facebook/stetho/dumpapp/Dumper;

.field private final mInput:Ljava/io/InputStream;

.field private final mRequest:Lorg/apache/http/HttpRequest;

.field final synthetic this$0:Lcom/facebook/stetho/dumpapp/StreamingDumpappHandler;


# direct methods
.method constructor <init>(Lcom/facebook/stetho/dumpapp/StreamingDumpappHandler;Lorg/apache/http/HttpRequest;Lcom/facebook/stetho/dumpapp/Dumper;Ljava/io/InputStream;)V
    .locals 0
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "dumper"    # Lcom/facebook/stetho/dumpapp/Dumper;
    .param p4, "input"    # Ljava/io/InputStream;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/facebook/stetho/dumpapp/StreamingDumpappHandler$DumpappHttpEntity;->this$0:Lcom/facebook/stetho/dumpapp/StreamingDumpappHandler;

    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    .line 83
    iput-object p2, p0, Lcom/facebook/stetho/dumpapp/StreamingDumpappHandler$DumpappHttpEntity;->mRequest:Lorg/apache/http/HttpRequest;

    .line 84
    iput-object p3, p0, Lcom/facebook/stetho/dumpapp/StreamingDumpappHandler$DumpappHttpEntity;->mDumper:Lcom/facebook/stetho/dumpapp/Dumper;

    .line 85
    iput-object p4, p0, Lcom/facebook/stetho/dumpapp/StreamingDumpappHandler$DumpappHttpEntity;->mInput:Ljava/io/InputStream;

    .line 86
    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 100
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 95
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/facebook/stetho/dumpapp/StreamingDumpappHandler$DumpappHttpEntity;->mRequest:Lorg/apache/http/HttpRequest;

    iget-object v1, p0, Lcom/facebook/stetho/dumpapp/StreamingDumpappHandler$DumpappHttpEntity;->mDumper:Lcom/facebook/stetho/dumpapp/Dumper;

    iget-object v2, p0, Lcom/facebook/stetho/dumpapp/StreamingDumpappHandler$DumpappHttpEntity;->mInput:Ljava/io/InputStream;

    invoke-static {v0, v1, v2, p1}, Lcom/facebook/stetho/dumpapp/StreamingDumpappHandler;->access$000(Lorg/apache/http/HttpRequest;Lcom/facebook/stetho/dumpapp/Dumper;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 111
    return-void
.end method
