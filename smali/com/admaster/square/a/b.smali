.class public Lcom/admaster/square/a/b;
.super Ljava/lang/Object;
.source "AdMasterDetect.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/admaster/square/a/b;

.field private static final e:[Ljava/lang/String;

.field private static final f:[Ljava/lang/String;

.field private static final g:[Ljava/lang/String;

.field private static final h:[Ljava/lang/String;

.field private static final i:[Ljava/lang/String;


# instance fields
.field private c:Landroid/content/Context;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    const-class v0, Lcom/admaster/square/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/admaster/square/a/b;->a:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/admaster/square/a/b;->b:Lcom/admaster/square/a/b;

    .line 51
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    .line 53
    const-string v1, "15555215554"

    aput-object v1, v0, v3

    const-string v1, "15555215556"

    aput-object v1, v0, v4

    const-string v1, "15555215558"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "15555215560"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 54
    const-string v2, "15555215562"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "15555215564"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "15555215566"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "15555215568"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 55
    const-string v2, "15555215570"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "15555215572"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "15555215574"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "15555215576"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 56
    const-string v2, "15555215578"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "15555215580"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "15555215582"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "15555215584"

    aput-object v2, v0, v1

    .line 51
    sput-object v0, Lcom/admaster/square/a/b;->e:[Ljava/lang/String;

    .line 59
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "000000000000000"

    aput-object v1, v0, v3

    sput-object v0, Lcom/admaster/square/a/b;->f:[Ljava/lang/String;

    .line 62
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "310260000000000"

    aput-object v1, v0, v3

    sput-object v0, Lcom/admaster/square/a/b;->g:[Ljava/lang/String;

    .line 65
    new-array v0, v5, [Ljava/lang/String;

    .line 66
    const-string v1, "/dev/socket/qemud"

    aput-object v1, v0, v3

    const-string v1, "/dev/qemu_pipe"

    aput-object v1, v0, v4

    .line 65
    sput-object v0, Lcom/admaster/square/a/b;->h:[Ljava/lang/String;

    .line 69
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "goldfish"

    aput-object v1, v0, v3

    sput-object v0, Lcom/admaster/square/a/b;->i:[Ljava/lang/String;

    .line 71
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v0, p0, Lcom/admaster/square/a/b;->d:I

    .line 74
    iput-object p1, p0, Lcom/admaster/square/a/b;->c:Landroid/content/Context;

    .line 75
    iput v0, p0, Lcom/admaster/square/a/b;->d:I

    .line 76
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/admaster/square/a/b;
    .locals 2

    .prologue
    .line 80
    if-nez p0, :cond_0

    .line 81
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    sget-object v0, Lcom/admaster/square/a/b;->b:Lcom/admaster/square/a/b;

    if-nez v0, :cond_1

    .line 84
    new-instance v0, Lcom/admaster/square/a/b;

    invoke-direct {v0, p0}, Lcom/admaster/square/a/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/admaster/square/a/b;->b:Lcom/admaster/square/a/b;

    .line 87
    :cond_1
    sget-object v0, Lcom/admaster/square/a/b;->b:Lcom/admaster/square/a/b;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 106
    const-string v0, "0"

    .line 111
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v3, "getprop ro.product.brand"

    invoke-virtual {v1, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 113
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    .line 114
    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    const-string v6, "GBK"

    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 113
    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 115
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    .line 116
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 117
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "brt:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/admaster/square/a/b;->a(Ljava/lang/String;)V

    .line 118
    if-eqz v2, :cond_0

    const-string v4, "generic"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    const-string v0, "1"

    .line 120
    iget v2, p0, Lcom/admaster/square/a/b;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/admaster/square/a/b;->d:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 127
    :cond_0
    if-eqz v3, :cond_1

    .line 128
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    .line 130
    :cond_1
    if-eqz v1, :cond_2

    .line 132
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 140
    :cond_2
    :goto_0
    return-object v0

    .line 123
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v3, v2

    .line 124
    :goto_1
    :try_start_4
    const-string v0, "E"

    .line 125
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 127
    if-eqz v3, :cond_3

    .line 128
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    .line 130
    :cond_3
    if-eqz v2, :cond_2

    .line 132
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 133
    :catch_1
    move-exception v1

    .line 134
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 126
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 127
    :goto_2
    if-eqz v3, :cond_4

    .line 128
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    .line 130
    :cond_4
    if-eqz v1, :cond_5

    .line 132
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 138
    :cond_5
    :goto_3
    throw v0

    .line 133
    :catch_2
    move-exception v1

    .line 134
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 133
    :catch_3
    move-exception v1

    .line 134
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 126
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_2

    .line 123
    :catch_4
    move-exception v0

    move-object v1, v0

    goto :goto_1

    :catch_5
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    goto :goto_1
.end method

.method public b()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 150
    const-string v0, "0"

    .line 155
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v3, "getprop ro.product.model"

    invoke-virtual {v1, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 157
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    .line 158
    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    const-string v6, "GBK"

    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 157
    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 159
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    .line 160
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 161
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mrt :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/admaster/square/a/b;->a(Ljava/lang/String;)V

    .line 162
    if-eqz v2, :cond_0

    const-string v4, "sdk"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    const-string v0, "1"

    .line 164
    iget v2, p0, Lcom/admaster/square/a/b;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/admaster/square/a/b;->d:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 171
    :cond_0
    if-eqz v3, :cond_1

    .line 172
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    .line 174
    :cond_1
    if-eqz v1, :cond_2

    .line 176
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 185
    :cond_2
    :goto_0
    return-object v0

    .line 167
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v3, v2

    .line 168
    :goto_1
    :try_start_4
    const-string v0, "E"

    .line 169
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 171
    if-eqz v3, :cond_3

    .line 172
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    .line 174
    :cond_3
    if-eqz v2, :cond_2

    .line 176
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 177
    :catch_1
    move-exception v1

    .line 178
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 170
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 171
    :goto_2
    if-eqz v3, :cond_4

    .line 172
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    .line 174
    :cond_4
    if-eqz v1, :cond_5

    .line 176
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 183
    :cond_5
    :goto_3
    throw v0

    .line 177
    :catch_2
    move-exception v1

    .line 178
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 177
    :catch_3
    move-exception v1

    .line 178
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 170
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_2

    .line 167
    :catch_4
    move-exception v0

    move-object v1, v0

    goto :goto_1

    :catch_5
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    goto :goto_1
.end method

.method public c()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 197
    const-string v0, "0"

    .line 202
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v3, "getprop ro.kernel.qemu"

    invoke-virtual {v1, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 204
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    .line 205
    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    const-string v6, "GBK"

    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 204
    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 206
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 207
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "qrt:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/admaster/square/a/b;->a(Ljava/lang/String;)V

    .line 208
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v0, v2

    .line 211
    :cond_0
    if-eqz v2, :cond_1

    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 212
    const-string v0, "1"

    .line 213
    iget v2, p0, Lcom/admaster/square/a/b;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/admaster/square/a/b;->d:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 220
    :cond_1
    if-eqz v3, :cond_2

    .line 221
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    .line 223
    :cond_2
    if-eqz v1, :cond_3

    .line 225
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 234
    :cond_3
    :goto_0
    return-object v0

    .line 216
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v3, v2

    .line 217
    :goto_1
    :try_start_4
    const-string v0, "E"

    .line 218
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 220
    if-eqz v3, :cond_4

    .line 221
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    .line 223
    :cond_4
    if-eqz v2, :cond_3

    .line 225
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 226
    :catch_1
    move-exception v1

    .line 227
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 219
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 220
    :goto_2
    if-eqz v3, :cond_5

    .line 221
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    .line 223
    :cond_5
    if-eqz v1, :cond_6

    .line 225
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 232
    :cond_6
    :goto_3
    throw v0

    .line 226
    :catch_2
    move-exception v1

    .line 227
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 226
    :catch_3
    move-exception v1

    .line 227
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 219
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_2

    .line 216
    :catch_4
    move-exception v0

    move-object v1, v0

    goto :goto_1

    :catch_5
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    goto :goto_1
.end method

.method public d()Ljava/lang/String;
    .locals 7

    .prologue
    .line 245
    :try_start_0
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 247
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 248
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 249
    sget-object v3, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 250
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 251
    sget-object v5, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 256
    const-string/jumbo v6, "unknown"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 257
    iget v0, p0, Lcom/admaster/square/a/b;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/admaster/square/a/b;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    const-string v0, "1"

    .line 276
    :goto_0
    return-object v0

    .line 260
    :cond_0
    :try_start_1
    const-string v6, "goldfish"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "goldfish"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 261
    :cond_1
    iget v0, p0, Lcom/admaster/square/a/b;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/admaster/square/a/b;->d:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 262
    const-string v0, "1"

    goto :goto_0

    .line 264
    :cond_2
    :try_start_2
    const-string v0, "generic"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "generic"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 265
    :cond_3
    iget v0, p0, Lcom/admaster/square/a/b;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/admaster/square/a/b;->d:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 266
    const-string v0, "1"

    goto :goto_0

    .line 268
    :cond_4
    :try_start_3
    const-string v0, "sdk"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "sdk"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 269
    :cond_5
    iget v0, p0, Lcom/admaster/square/a/b;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/admaster/square/a/b;->d:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 270
    const-string v0, "1"

    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 276
    :cond_6
    const-string v0, "0"

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/admaster/square/a/b;->c:Landroid/content/Context;

    .line 290
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 289
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 291
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "non:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/admaster/square/a/b;->a(Ljava/lang/String;)V

    .line 293
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iget v0, p0, Lcom/admaster/square/a/b;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/admaster/square/a/b;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    const-string v0, "1"

    .line 300
    :goto_0
    return-object v0

    .line 297
    :catch_0
    move-exception v0

    .line 298
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 300
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 312
    :try_start_0
    iget-object v0, p0, Lcom/admaster/square/a/b;->c:Landroid/content/Context;

    .line 313
    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 312
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 314
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    .line 316
    if-eqz v3, :cond_0

    .line 317
    sget-object v4, Lcom/admaster/square/a/b;->e:[Ljava/lang/String;

    array-length v5, v4

    move v2, v1

    :goto_0
    if-lt v2, v5, :cond_3

    .line 326
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 328
    if-eqz v3, :cond_1

    .line 329
    sget-object v4, Lcom/admaster/square/a/b;->f:[Ljava/lang/String;

    array-length v5, v4

    move v2, v1

    :goto_1
    if-lt v2, v5, :cond_5

    .line 338
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 340
    if-eqz v2, :cond_2

    .line 341
    sget-object v3, Lcom/admaster/square/a/b;->g:[Ljava/lang/String;

    array-length v4, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_2
    if-lt v0, v4, :cond_7

    .line 353
    :cond_2
    :goto_3
    const-string v0, "0"

    :goto_4
    return-object v0

    .line 317
    :cond_3
    :try_start_1
    aget-object v6, v4, v2

    .line 318
    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 320
    iget v0, p0, Lcom/admaster/square/a/b;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/admaster/square/a/b;->d:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 321
    const-string v0, "1"

    goto :goto_4

    .line 317
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 329
    :cond_5
    :try_start_2
    aget-object v6, v4, v2

    .line 330
    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 332
    iget v0, p0, Lcom/admaster/square/a/b;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/admaster/square/a/b;->d:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 333
    const-string v0, "1"

    goto :goto_4

    .line 329
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 341
    :cond_7
    :try_start_3
    aget-object v1, v3, v0

    .line 342
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 344
    iget v0, p0, Lcom/admaster/square/a/b;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/admaster/square/a/b;->d:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 345
    const-string v0, "1"

    goto :goto_4

    .line 341
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 349
    :catch_0
    move-exception v0

    .line 350
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public g()Ljava/lang/String;
    .locals 5

    .prologue
    .line 364
    :try_start_0
    sget-object v1, Lcom/admaster/square/a/b;->h:[Ljava/lang/String;

    array-length v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 377
    :goto_1
    const-string v0, "0"

    :goto_2
    return-object v0

    .line 364
    :cond_0
    :try_start_1
    aget-object v3, v1, v0

    .line 365
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 367
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dpf:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admaster/square/a/b;->a(Ljava/lang/String;)V

    .line 369
    iget v0, p0, Lcom/admaster/square/a/b;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/admaster/square/a/b;->d:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 370
    const-string v0, "1"

    goto :goto_2

    .line 364
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 373
    :catch_0
    move-exception v0

    .line 374
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public h()Ljava/lang/String;
    .locals 7

    .prologue
    .line 387
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/tty/drivers"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 388
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v1, v2

    new-array v1, v1, [B

    .line 390
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 391
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    .line 392
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 393
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 394
    sget-object v1, Lcom/admaster/square/a/b;->i:[Ljava/lang/String;

    array-length v3, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_1

    .line 406
    :cond_0
    :goto_1
    const-string v0, "0"

    :goto_2
    return-object v0

    .line 394
    :cond_1
    :try_start_1
    aget-object v4, v1, v0

    .line 395
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "qd:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admaster/square/a/b;->a(Ljava/lang/String;)V

    .line 397
    iget v0, p0, Lcom/admaster/square/a/b;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/admaster/square/a/b;->d:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 398
    const-string v0, "1"

    goto :goto_2

    .line 394
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 402
    :catch_0
    move-exception v0

    .line 403
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public i()Ljava/lang/String;
    .locals 5

    .prologue
    .line 415
    const-string v1, "0"

    .line 417
    :try_start_0
    iget-object v0, p0, Lcom/admaster/square/a/b;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 418
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 420
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    .line 429
    :goto_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "xp:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/admaster/square/a/b;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 434
    :goto_1
    return-object v0

    .line 420
    :cond_1
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 421
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 422
    if-eqz v0, :cond_0

    const-string v3, "de.robv.android.xposed.installer"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    const-string v1, "1"

    .line 424
    iget v0, p0, Lcom/admaster/square/a/b;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/admaster/square/a/b;->d:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 425
    goto :goto_0

    .line 430
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 431
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 430
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public j()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 445
    :try_start_0
    iget-object v0, p0, Lcom/admaster/square/a/b;->c:Landroid/content/Context;

    .line 446
    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 445
    check-cast v0, Landroid/os/Vibrator;

    .line 448
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    .line 449
    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "vib:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/admaster/square/a/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    if-eqz v0, :cond_0

    .line 452
    const-string v0, "0"

    .line 465
    :goto_0
    return-object v0

    .line 454
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/admaster/square/a/b;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/admaster/square/a/b;->d:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 455
    const-string v0, "1"

    goto :goto_0

    .line 458
    :cond_1
    const-string v0, "0"

    goto :goto_0

    .line 461
    :catch_0
    move-exception v0

    .line 462
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 465
    const-string v0, "0"

    goto :goto_0
.end method

.method public k()Ljava/lang/String;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 478
    :try_start_0
    iget-object v0, p0, Lcom/admaster/square/a/b;->c:Landroid/content/Context;

    .line 479
    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 478
    check-cast v0, Landroid/hardware/SensorManager;

    .line 480
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 482
    const/4 v0, 0x0

    .line 483
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 506
    if-nez v1, :cond_4

    .line 507
    iget v0, p0, Lcom/admaster/square/a/b;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/admaster/square/a/b;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    const-string v0, "1"

    .line 513
    :goto_1
    return-object v0

    .line 483
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 484
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    .line 485
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    .line 486
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v0

    .line 488
    if-eqz v3, :cond_2

    .line 489
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v5, "goldfish"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 491
    iget v0, p0, Lcom/admaster/square/a/b;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/admaster/square/a/b;->d:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 492
    const-string v0, "1"

    goto :goto_1

    .line 494
    :cond_2
    if-eqz v0, :cond_3

    .line 495
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "goldfish"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 497
    iget v0, p0, Lcom/admaster/square/a/b;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/admaster/square/a/b;->d:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 498
    const-string v0, "1"

    goto :goto_1

    .line 501
    :cond_3
    const/4 v0, 0x5

    if-ne v4, v0, :cond_0

    .line 502
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    .line 510
    :catch_0
    move-exception v0

    .line 511
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 513
    :cond_4
    const-string v0, "0"

    goto :goto_1
.end method
