.class Lcom/facebook/stetho/dumpapp/StreamFramer$FramingOutputStream;
.super Ljava/io/OutputStream;
.source "StreamFramer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/stetho/dumpapp/StreamFramer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FramingOutputStream"
.end annotation


# instance fields
.field private mIsClosed:Z

.field private final mOut:Ljava/io/OutputStream;

.field private final mPrefix:B

.field final synthetic this$0:Lcom/facebook/stetho/dumpapp/StreamFramer;


# direct methods
.method constructor <init>(Lcom/facebook/stetho/dumpapp/StreamFramer;Ljava/io/OutputStream;B)V
    .locals 1
    .param p2, "innerStream"    # Ljava/io/OutputStream;
    .param p3, "prefix"    # B

    .prologue
    .line 100
    iput-object p1, p0, Lcom/facebook/stetho/dumpapp/StreamFramer$FramingOutputStream;->this$0:Lcom/facebook/stetho/dumpapp/StreamFramer;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 101
    iput-object p2, p0, Lcom/facebook/stetho/dumpapp/StreamFramer$FramingOutputStream;->mOut:Ljava/io/OutputStream;

    .line 102
    iput-byte p3, p0, Lcom/facebook/stetho/dumpapp/StreamFramer$FramingOutputStream;->mPrefix:B

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/stetho/dumpapp/StreamFramer$FramingOutputStream;->mIsClosed:Z

    .line 104
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/stetho/dumpapp/StreamFramer$FramingOutputStream;->mIsClosed:Z

    .line 140
    return-void
.end method

.method public write(I)V
    .locals 3
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 128
    const/4 v1, 0x1

    new-array v0, v1, [B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 129
    .local v0, "buffer":[B
    array-length v1, v0

    invoke-virtual {p0, v0, v2, v1}, Lcom/facebook/stetho/dumpapp/StreamFramer$FramingOutputStream;->write([BII)V

    .line 130
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/stetho/dumpapp/StreamFramer$FramingOutputStream;->write([BII)V

    .line 135
    return-void
.end method

.method public write([BII)V
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    iget-boolean v1, p0, Lcom/facebook/stetho/dumpapp/StreamFramer$FramingOutputStream;->mIsClosed:Z

    if-eqz v1, :cond_0

    .line 109
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Stream is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    :cond_0
    if-lez p3, :cond_1

    .line 113
    :try_start_0
    iget-object v2, p0, Lcom/facebook/stetho/dumpapp/StreamFramer$FramingOutputStream;->this$0:Lcom/facebook/stetho/dumpapp/StreamFramer;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :try_start_1
    iget-object v1, p0, Lcom/facebook/stetho/dumpapp/StreamFramer$FramingOutputStream;->this$0:Lcom/facebook/stetho/dumpapp/StreamFramer;

    iget-byte v3, p0, Lcom/facebook/stetho/dumpapp/StreamFramer$FramingOutputStream;->mPrefix:B

    invoke-static {v1, v3, p3}, Lcom/facebook/stetho/dumpapp/StreamFramer;->access$000(Lcom/facebook/stetho/dumpapp/StreamFramer;BI)V

    .line 115
    iget-object v1, p0, Lcom/facebook/stetho/dumpapp/StreamFramer$FramingOutputStream;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 116
    iget-object v1, p0, Lcom/facebook/stetho/dumpapp/StreamFramer$FramingOutputStream;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 117
    monitor-exit v2

    .line 124
    :cond_1
    return-void

    .line 117
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 118
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/facebook/stetho/dumpapp/DumpappOutputBrokenException;

    invoke-direct {v1, v0}, Lcom/facebook/stetho/dumpapp/DumpappOutputBrokenException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
