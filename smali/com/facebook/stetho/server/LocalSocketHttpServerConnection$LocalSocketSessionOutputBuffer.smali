.class Lcom/facebook/stetho/server/LocalSocketHttpServerConnection$LocalSocketSessionOutputBuffer;
.super Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;
.source "LocalSocketHttpServerConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/stetho/server/LocalSocketHttpServerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalSocketSessionOutputBuffer"
.end annotation


# direct methods
.method public constructor <init>(Landroid/net/LocalSocket;ILorg/apache/http/params/HttpParams;)V
    .locals 1
    .param p1, "socket"    # Landroid/net/LocalSocket;
    .param p2, "bufferSize"    # I
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-direct {p0}, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;-><init>()V

    .line 146
    invoke-virtual {p1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/facebook/stetho/server/LocalSocketHttpServerConnection$LocalSocketSessionOutputBuffer;->init(Ljava/io/OutputStream;ILorg/apache/http/params/HttpParams;)V

    .line 147
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/facebook/stetho/server/LocalSocketHttpServerConnection$LocalSocketSessionOutputBuffer;->flushBuffer()V

    .line 157
    return-void
.end method
