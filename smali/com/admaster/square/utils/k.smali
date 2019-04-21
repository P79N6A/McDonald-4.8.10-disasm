.class public Lcom/admaster/square/utils/k;
.super Ljava/io/FilterOutputStream;
.source "EncryptionUtil.java"


# instance fields
.field private a:Z

.field private b:I

.field private c:[B

.field private d:I

.field private e:I

.field private f:Z

.field private g:[B

.field private h:Z

.field private i:I

.field private j:[B


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1207
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1208
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/admaster/square/utils/k;->f:Z

    .line 1209
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/admaster/square/utils/k;->a:Z

    .line 1210
    iget-boolean v0, p0, Lcom/admaster/square/utils/k;->a:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    :goto_2
    iput v0, p0, Lcom/admaster/square/utils/k;->d:I

    .line 1211
    iget v0, p0, Lcom/admaster/square/utils/k;->d:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/admaster/square/utils/k;->c:[B

    .line 1212
    iput v2, p0, Lcom/admaster/square/utils/k;->b:I

    .line 1213
    iput v2, p0, Lcom/admaster/square/utils/k;->e:I

    .line 1214
    iput-boolean v2, p0, Lcom/admaster/square/utils/k;->h:Z

    .line 1215
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/admaster/square/utils/k;->g:[B

    .line 1216
    iput p2, p0, Lcom/admaster/square/utils/k;->i:I

    .line 1217
    invoke-static {p2}, Lcom/admaster/square/utils/j;->a(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/admaster/square/utils/k;->j:[B

    .line 1218
    return-void

    :cond_0
    move v0, v2

    .line 1208
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1209
    goto :goto_1

    :cond_2
    move v0, v3

    .line 1210
    goto :goto_2
.end method


# virtual methods
.method public a()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1288
    iget v0, p0, Lcom/admaster/square/utils/k;->b:I

    if-lez v0, :cond_0

    .line 1289
    iget-boolean v0, p0, Lcom/admaster/square/utils/k;->a:Z

    if-eqz v0, :cond_1

    .line 1290
    iget-object v0, p0, Lcom/admaster/square/utils/k;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/admaster/square/utils/k;->g:[B

    iget-object v2, p0, Lcom/admaster/square/utils/k;->c:[B

    iget v3, p0, Lcom/admaster/square/utils/k;->b:I

    iget v4, p0, Lcom/admaster/square/utils/k;->i:I

    invoke-static {v1, v2, v3, v4}, Lcom/admaster/square/utils/j;->a([B[BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1291
    const/4 v0, 0x0

    iput v0, p0, Lcom/admaster/square/utils/k;->b:I

    .line 1298
    :cond_0
    return-void

    .line 1294
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Base64 input not properly padded."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1305
    invoke-virtual {p0}, Lcom/admaster/square/utils/k;->a()V

    .line 1309
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 1311
    iput-object v0, p0, Lcom/admaster/square/utils/k;->c:[B

    .line 1312
    iput-object v0, p0, Lcom/admaster/square/utils/k;->out:Ljava/io/OutputStream;

    .line 1313
    return-void
.end method

.method public write(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x5

    const/4 v5, 0x0

    .line 1226
    iget-boolean v0, p0, Lcom/admaster/square/utils/k;->h:Z

    if-eqz v0, :cond_1

    .line 1227
    iget-object v0, p0, Lcom/admaster/square/utils/k;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 1264
    :cond_0
    :goto_0
    return-void

    .line 1232
    :cond_1
    iget-boolean v0, p0, Lcom/admaster/square/utils/k;->a:Z

    if-eqz v0, :cond_3

    .line 1233
    iget-object v0, p0, Lcom/admaster/square/utils/k;->c:[B

    iget v1, p0, Lcom/admaster/square/utils/k;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/admaster/square/utils/k;->b:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 1234
    iget v0, p0, Lcom/admaster/square/utils/k;->b:I

    iget v1, p0, Lcom/admaster/square/utils/k;->d:I

    if-lt v0, v1, :cond_0

    .line 1236
    iget-object v0, p0, Lcom/admaster/square/utils/k;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/admaster/square/utils/k;->g:[B

    iget-object v2, p0, Lcom/admaster/square/utils/k;->c:[B

    iget v3, p0, Lcom/admaster/square/utils/k;->d:I

    iget v4, p0, Lcom/admaster/square/utils/k;->i:I

    invoke-static {v1, v2, v3, v4}, Lcom/admaster/square/utils/j;->a([B[BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1238
    iget v0, p0, Lcom/admaster/square/utils/k;->e:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/admaster/square/utils/k;->e:I

    .line 1239
    iget-boolean v0, p0, Lcom/admaster/square/utils/k;->f:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/admaster/square/utils/k;->e:I

    const/16 v1, 0x4c

    if-lt v0, v1, :cond_2

    .line 1240
    iget-object v0, p0, Lcom/admaster/square/utils/k;->out:Ljava/io/OutputStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1241
    iput v5, p0, Lcom/admaster/square/utils/k;->e:I

    .line 1244
    :cond_2
    iput v5, p0, Lcom/admaster/square/utils/k;->b:I

    goto :goto_0

    .line 1251
    :cond_3
    iget-object v0, p0, Lcom/admaster/square/utils/k;->j:[B

    and-int/lit8 v1, p1, 0x7f

    aget-byte v0, v0, v1

    if-le v0, v2, :cond_4

    .line 1252
    iget-object v0, p0, Lcom/admaster/square/utils/k;->c:[B

    iget v1, p0, Lcom/admaster/square/utils/k;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/admaster/square/utils/k;->b:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 1253
    iget v0, p0, Lcom/admaster/square/utils/k;->b:I

    iget v1, p0, Lcom/admaster/square/utils/k;->d:I

    if-lt v0, v1, :cond_0

    .line 1255
    iget-object v0, p0, Lcom/admaster/square/utils/k;->c:[B

    iget-object v1, p0, Lcom/admaster/square/utils/k;->g:[B

    iget v2, p0, Lcom/admaster/square/utils/k;->i:I

    invoke-static {v0, v5, v1, v5, v2}, Lcom/admaster/square/utils/j;->a([BI[BII)I

    move-result v0

    .line 1256
    iget-object v1, p0, Lcom/admaster/square/utils/k;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/admaster/square/utils/k;->g:[B

    invoke-virtual {v1, v2, v5, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 1257
    iput v5, p0, Lcom/admaster/square/utils/k;->b:I

    goto :goto_0

    .line 1260
    :cond_4
    iget-object v0, p0, Lcom/admaster/square/utils/k;->j:[B

    and-int/lit8 v1, p1, 0x7f

    aget-byte v0, v0, v1

    if-eq v0, v2, :cond_0

    .line 1261
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid character in Base64 data."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

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
    .line 1273
    iget-boolean v0, p0, Lcom/admaster/square/utils/k;->h:Z

    if-eqz v0, :cond_1

    .line 1274
    iget-object v0, p0, Lcom/admaster/square/utils/k;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 1282
    :cond_0
    return-void

    .line 1278
    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 1279
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/admaster/square/utils/k;->write(I)V

    .line 1278
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
