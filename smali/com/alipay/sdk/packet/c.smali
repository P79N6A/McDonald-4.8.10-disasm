.class public final Lcom/alipay/sdk/packet/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean p1, p0, Lcom/alipay/sdk/packet/c;->a:Z

    .line 44
    const/16 v0, 0x18

    invoke-static {v0}, Lcom/alipay/sdk/util/m;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/packet/c;->b:Ljava/lang/String;

    .line 45
    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 197
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 193
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%05d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 140
    invoke-static {p0, p1}, Lcom/alipay/sdk/encrypt/d;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;[B)[B
    .locals 1

    .prologue
    .line 144
    invoke-static {p0, p1}, Lcom/alipay/sdk/encrypt/e;->a(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static varargs a([[B)[B
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 155
    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-object v0

    .line 163
    :cond_1
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :try_start_1
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 166
    :try_start_2
    array-length v4, p0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_2

    aget-object v5, p0, v1

    .line 167
    array-length v6, v5

    invoke-static {v6}, Lcom/alipay/sdk/packet/c;->a(I)Ljava/lang/String;

    move-result-object v6

    .line 168
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 169
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 172
    :cond_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 173
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    .line 177
    if-eqz v3, :cond_3

    .line 179
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 182
    :cond_3
    :goto_2
    if-eqz v2, :cond_0

    .line 184
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v1

    goto :goto_0

    .line 174
    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    .line 175
    :goto_3
    :try_start_5
    invoke-static {v1}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 177
    if-eqz v3, :cond_4

    .line 179
    :try_start_6
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 182
    :cond_4
    :goto_4
    if-eqz v2, :cond_0

    .line 184
    :try_start_7
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_0

    .line 185
    :catch_2
    move-exception v1

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_5
    if-eqz v3, :cond_5

    .line 179
    :try_start_8
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 182
    :cond_5
    :goto_6
    if-eqz v2, :cond_6

    .line 184
    :try_start_9
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 185
    :cond_6
    :goto_7
    throw v0

    .line 180
    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_6

    .line 185
    :catch_6
    move-exception v1

    goto :goto_7

    .line 177
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_5

    .line 174
    :catch_7
    move-exception v1

    move-object v2, v0

    goto :goto_3

    :catch_8
    move-exception v1

    goto :goto_3
.end method

.method private static b(Ljava/lang/String;[B)[B
    .locals 1

    .prologue
    .line 148
    invoke-static {p0, p1}, Lcom/alipay/sdk/encrypt/e;->b(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/alipay/sdk/packet/d;)Lcom/alipay/sdk/packet/b;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 90
    .line 95
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Lcom/alipay/sdk/packet/d;->b()[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    const/4 v1, 0x5

    :try_start_1
    new-array v1, v1, [B

    .line 98
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 99
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v3}, Lcom/alipay/sdk/packet/c;->a(Ljava/lang/String;)I

    move-result v1

    .line 100
    new-array v1, v1, [B

    .line 101
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 102
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 104
    const/4 v1, 0x5

    :try_start_2
    new-array v1, v1, [B

    .line 105
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 106
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v4}, Lcom/alipay/sdk/packet/c;->a(Ljava/lang/String;)I

    move-result v1

    .line 108
    if-lez v1, :cond_6

    .line 109
    new-array v1, v1, [B

    .line 110
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 112
    iget-boolean v4, p0, Lcom/alipay/sdk/packet/c;->a:Z

    if-eqz v4, :cond_0

    .line 113
    iget-object v4, p0, Lcom/alipay/sdk/packet/c;->b:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/alipay/sdk/packet/c;->b(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 115
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/sdk/packet/d;->a()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 116
    invoke-static {v1}, Lcom/alipay/sdk/encrypt/c;->b([B)[B

    move-result-object v1

    move-object v4, v1

    .line 118
    :goto_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 123
    :goto_1
    if-eqz v2, :cond_1

    .line 125
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 131
    :cond_1
    :goto_2
    if-nez v3, :cond_3

    if-nez v1, :cond_3

    .line 134
    :goto_3
    return-object v0

    .line 120
    :catch_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    .line 121
    :goto_4
    :try_start_4
    invoke-static {v1}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 123
    if-eqz v2, :cond_4

    .line 125
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-object v1, v0

    .line 127
    goto :goto_2

    .line 126
    :catch_1
    move-exception v1

    move-object v1, v0

    .line 127
    goto :goto_2

    .line 123
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_5
    if-eqz v2, :cond_2

    .line 125
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 127
    :cond_2
    :goto_6
    throw v0

    .line 134
    :cond_3
    new-instance v0, Lcom/alipay/sdk/packet/b;

    invoke-direct {v0, v3, v1}, Lcom/alipay/sdk/packet/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 126
    :catch_2
    move-exception v2

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_6

    .line 123
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 120
    :catch_4
    move-exception v1

    move-object v3, v0

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_4

    :cond_4
    move-object v1, v0

    goto :goto_2

    :cond_5
    move-object v4, v1

    goto :goto_0

    :cond_6
    move-object v1, v0

    goto :goto_1
.end method

.method public a(Lcom/alipay/sdk/packet/b;Z)Lcom/alipay/sdk/packet/d;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 57
    if-nez p1, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 83
    :goto_0
    return-object v0

    .line 62
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/sdk/packet/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 63
    invoke-virtual {p1}, Lcom/alipay/sdk/packet/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 66
    if-eqz p2, :cond_1

    .line 68
    :try_start_0
    invoke-static {v0}, Lcom/alipay/sdk/encrypt/c;->a([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 76
    :cond_1
    :goto_1
    iget-boolean v3, p0, Lcom/alipay/sdk/packet/c;->a:Z

    if-eqz v3, :cond_2

    .line 77
    iget-object v3, p0, Lcom/alipay/sdk/packet/c;->b:Ljava/lang/String;

    sget-object v4, Lcom/alipay/sdk/cons/a;->c:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/alipay/sdk/packet/c;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    .line 78
    iget-object v4, p0, Lcom/alipay/sdk/packet/c;->b:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/alipay/sdk/packet/c;->a(Ljava/lang/String;[B)[B

    move-result-object v0

    .line 79
    const/4 v4, 0x3

    new-array v4, v4, [[B

    aput-object v2, v4, v1

    aput-object v3, v4, v5

    aput-object v0, v4, v6

    invoke-static {v4}, Lcom/alipay/sdk/packet/c;->a([[B)[B

    move-result-object v0

    .line 83
    :goto_2
    new-instance v1, Lcom/alipay/sdk/packet/d;

    invoke-direct {v1, p2, v0}, Lcom/alipay/sdk/packet/d;-><init>(Z[B)V

    move-object v0, v1

    goto :goto_0

    .line 69
    :catch_0
    move-exception v3

    move p2, v1

    .line 70
    goto :goto_1

    .line 81
    :cond_2
    new-array v3, v6, [[B

    aput-object v2, v3, v1

    aput-object v0, v3, v5

    invoke-static {v3}, Lcom/alipay/sdk/packet/c;->a([[B)[B

    move-result-object v0

    goto :goto_2
.end method
