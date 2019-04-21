.class Lcom/aps/r$a;
.super Ljava/io/FilterOutputStream;
.source "SimpleDiskCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aps/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/aps/h$a;

.field private b:Z


# direct methods
.method private constructor <init>(Ljava/io/OutputStream;Lcom/aps/h$a;)V
    .locals 1

    .prologue
    .line 183
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aps/r$a;->b:Z

    .line 184
    iput-object p2, p0, Lcom/aps/r$a;->a:Lcom/aps/h$a;

    .line 185
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/OutputStream;Lcom/aps/h$a;Lcom/aps/r$1;)V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0, p1, p2}, Lcom/aps/r$a;-><init>(Ljava/io/OutputStream;Lcom/aps/h$a;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    const/4 v0, 0x0

    .line 191
    :try_start_0
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    iget-boolean v1, p0, Lcom/aps/r$a;->b:Z

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/aps/r$a;->a:Lcom/aps/h$a;

    invoke-virtual {v1}, Lcom/aps/h$a;->b()V

    .line 202
    :goto_1
    if-eqz v0, :cond_1

    throw v0

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/aps/r$a;->a:Lcom/aps/h$a;

    invoke-virtual {v1}, Lcom/aps/h$a;->a()V

    goto :goto_1

    .line 192
    :catch_0
    move-exception v0

    goto :goto_0

    .line 203
    :cond_1
    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    :try_start_0
    invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/aps/r$a;->b:Z

    .line 211
    throw v0
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    :try_start_0
    invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/aps/r$a;->b:Z

    .line 221
    throw v0
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    :try_start_0
    invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 230
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/aps/r$a;->b:Z

    .line 231
    throw v0
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    return-void

    .line 239
    :catch_0
    move-exception v0

    .line 240
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/aps/r$a;->b:Z

    .line 241
    throw v0
.end method
