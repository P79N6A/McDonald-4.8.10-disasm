.class public Lcom/amap/api/location/core/SocketService;
.super Landroid/app/Service;
.source "SocketService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/location/core/SocketService$a;
    }
.end annotation


# instance fields
.field a:Lcom/aps/l;

.field b:Ljava/lang/String;

.field c:Lcom/amap/api/location/core/SocketService$a;

.field d:Ljava/net/ServerSocket;

.field e:Z

.field f:Ljava/net/Socket;

.field g:Lcom/aps/c;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/amap/api/location/core/SocketService;->b:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/amap/api/location/core/SocketService;->c:Lcom/amap/api/location/core/SocketService$a;

    .line 68
    iput-object v0, p0, Lcom/amap/api/location/core/SocketService;->d:Ljava/net/ServerSocket;

    .line 69
    iput-boolean v1, p0, Lcom/amap/api/location/core/SocketService;->e:Z

    .line 70
    iput-object v0, p0, Lcom/amap/api/location/core/SocketService;->f:Ljava/net/Socket;

    .line 222
    iput-boolean v1, p0, Lcom/amap/api/location/core/SocketService;->h:Z

    return-void
.end method

.method static synthetic a(Lcom/amap/api/location/core/SocketService;Ljava/net/Socket;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/amap/api/location/core/SocketService;->a(Ljava/net/Socket;)V

    return-void
.end method

.method private a(Ljava/net/Socket;)V
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 130
    if-nez p1, :cond_0

    .line 221
    :goto_0
    return-void

    .line 137
    :cond_0
    const/16 v0, 0x7530

    .line 139
    const-string v1, "jsonp1"

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 142
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 144
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 145
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    .line 146
    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 150
    if-eqz v5, :cond_5

    array-length v6, v5

    if-le v6, v9, :cond_5

    .line 151
    const/4 v6, 0x1

    aget-object v5, v5, v6

    .line 152
    const-string v6, "\\?"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 153
    if-eqz v5, :cond_5

    array-length v6, v5

    if-le v6, v9, :cond_5

    .line 154
    const/4 v6, 0x1

    aget-object v5, v5, v6

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 155
    if-eqz v5, :cond_5

    array-length v6, v5
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v6, :cond_5

    move-object v10, v1

    move v1, v0

    move-object v0, v10

    .line 156
    :goto_1
    :try_start_2
    array-length v6, v5

    if-ge v4, v6, :cond_4

    .line 157
    aget-object v6, v5, v4

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 158
    if-eqz v6, :cond_3

    array-length v7, v6

    if-le v7, v9, :cond_3

    .line 159
    const-string v7, "to"

    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 160
    const/4 v1, 0x1

    aget-object v1, v6, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 162
    :cond_1
    const-string v7, "callback"

    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 163
    const/4 v7, 0x1

    aget-object v0, v6, v7

    .line 165
    :cond_2
    const-string v7, "_"

    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 166
    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    move-object v10, v0

    move v0, v1

    move-object v1, v10

    .line 174
    :cond_5
    :try_start_3
    sget v4, Lcom/aps/g;->g:I

    .line 175
    sput v0, Lcom/aps/g;->g:I

    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 177
    iget-object v0, p0, Lcom/amap/api/location/core/SocketService;->g:Lcom/aps/c;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/location/core/SocketService;->g:Lcom/aps/c;

    invoke-virtual {v0}, Lcom/aps/c;->j()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1388

    cmp-long v0, v6, v8

    if-lez v0, :cond_7

    :cond_6
    invoke-static {p0}, Lcom/amap/api/location/core/d;->c(Landroid/content/Context;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-nez v0, :cond_7

    .line 179
    :try_start_4
    iget-object v0, p0, Lcom/amap/api/location/core/SocketService;->a:Lcom/aps/l;

    invoke-interface {v0}, Lcom/aps/l;->a()Lcom/aps/c;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/location/core/SocketService;->g:Lcom/aps/c;
    :try_end_4
    .catch Lcom/amap/api/location/core/AMapLocException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 185
    :try_start_5
    iget-object v0, p0, Lcom/amap/api/location/core/SocketService;->a:Lcom/aps/l;

    invoke-interface {v0}, Lcom/aps/l;->b()V

    .line 186
    sput v4, Lcom/aps/g;->g:I

    .line 189
    :cond_7
    :goto_2
    if-nez v3, :cond_8

    .line 190
    iget-object v0, p0, Lcom/amap/api/location/core/SocketService;->g:Lcom/aps/c;

    if-nez v0, :cond_9

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "&&"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "({\'package\':\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/amap/api/location/core/SocketService;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\',\'error_code\':31,\'error\':\'unknown error\'})"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 196
    :goto_3
    invoke-static {p0}, Lcom/amap/api/location/core/d;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "&&"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "({\'package\':\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/amap/api/location/core/SocketService;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\',\'error_code\':36,\'error\':\'app is background\'})"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v3

    .line 205
    :cond_8
    :try_start_6
    new-instance v0, Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;Z)V

    .line 207
    const-string v1, "HTTP/1.0 200 OK"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Content-Length:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 211
    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 216
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 217
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 218
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 180
    :catch_1
    move-exception v0

    .line 181
    :try_start_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "({\'package\':\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/amap/api/location/core/SocketService;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\',\'error_code\':"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/amap/api/location/core/AMapLocException;->getErrorCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",\'error\':\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/amap/api/location/core/AMapLocException;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\'})"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v3

    .line 185
    :try_start_9
    iget-object v0, p0, Lcom/amap/api/location/core/SocketService;->a:Lcom/aps/l;

    invoke-interface {v0}, Lcom/aps/l;->b()V

    .line 186
    sput v4, Lcom/aps/g;->g:I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    .line 200
    :catch_2
    move-exception v0

    .line 201
    :goto_4
    :try_start_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "({\'package\':\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/amap/api/location/core/SocketService;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\',\'error_code\':35,\'error\':\'params error\'})"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 202
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 205
    :try_start_b
    new-instance v0, Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;Z)V

    .line 207
    const-string v1, "HTTP/1.0 200 OK"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Content-Length:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 211
    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 216
    :try_start_c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 217
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_0

    .line 182
    :catch_3
    move-exception v0

    .line 183
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 185
    :try_start_e
    iget-object v0, p0, Lcom/amap/api/location/core/SocketService;->a:Lcom/aps/l;

    invoke-interface {v0}, Lcom/aps/l;->b()V

    .line 186
    sput v4, Lcom/aps/g;->g:I
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_2

    .line 204
    :catchall_0
    move-exception v0

    .line 205
    :goto_5
    :try_start_f
    new-instance v1, Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;Z)V

    .line 207
    const-string v4, "HTTP/1.0 200 OK"

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 208
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Content-Length:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    .line 211
    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v1}, Ljava/io/PrintStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 216
    :try_start_10
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 217
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5

    .line 204
    :goto_6
    throw v0

    .line 185
    :catchall_1
    move-exception v0

    :try_start_11
    iget-object v5, p0, Lcom/amap/api/location/core/SocketService;->a:Lcom/aps/l;

    invoke-interface {v5}, Lcom/aps/l;->b()V

    .line 186
    sput v4, Lcom/aps/g;->g:I

    .line 185
    throw v0

    .line 193
    :cond_9
    iget-object v0, p0, Lcom/amap/api/location/core/SocketService;->g:Lcom/aps/c;

    .line 194
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "({\'package\':\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/amap/api/location/core/SocketService;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\',\'error_code\':0,\'error\':\'\',\'location\':{\'y\':"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/aps/c;->h()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",\'precision\':"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/aps/c;->i()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",\'x\':"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/aps/c;->g()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "},\'version_code\':\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "1.4.1"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\',\'version\':\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "1.4.1"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\'})"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    move-result-object v3

    goto/16 :goto_3

    .line 213
    :catch_4
    move-exception v1

    .line 216
    :try_start_12
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 217
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_5

    goto/16 :goto_6

    .line 218
    :catch_5
    move-exception v1

    goto/16 :goto_6

    .line 215
    :catchall_2
    move-exception v0

    .line 216
    :try_start_13
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 217
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_a

    .line 215
    :goto_7
    throw v0

    .line 213
    :catch_6
    move-exception v0

    .line 216
    :try_start_14
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 217
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0

    goto/16 :goto_0

    .line 215
    :catchall_3
    move-exception v0

    .line 216
    :try_start_15
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 217
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_9

    .line 215
    :goto_8
    throw v0

    .line 213
    :catch_7
    move-exception v0

    .line 216
    :try_start_16
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 217
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0

    goto/16 :goto_0

    .line 215
    :catchall_4
    move-exception v0

    .line 216
    :try_start_17
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 217
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_8

    .line 215
    :goto_9
    throw v0

    .line 218
    :catch_8
    move-exception v1

    goto :goto_9

    :catch_9
    move-exception v1

    goto :goto_8

    :catch_a
    move-exception v1

    goto :goto_7

    .line 204
    :catchall_5
    move-exception v0

    move-object v2, v3

    goto/16 :goto_5

    .line 200
    :catch_b
    move-exception v0

    move-object v2, v3

    goto/16 :goto_4

    :catch_c
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto/16 :goto_4
.end method


# virtual methods
.method public apsInit()V
    .locals 5

    .prologue
    .line 225
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/location/core/SocketService;->h:Z

    if-eqz v0, :cond_0

    .line 277
    :goto_0
    return-void

    .line 228
    :cond_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 229
    invoke-static {p0}, Lcom/amap/api/location/core/c;->a(Landroid/content/Context;)Lcom/amap/api/location/core/c;

    .line 230
    iget-object v0, p0, Lcom/amap/api/location/core/SocketService;->a:Lcom/aps/l;

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/amap/api/location/core/SocketService;->a:Lcom/aps/l;

    invoke-interface {v0, p0}, Lcom/aps/l;->a(Landroid/content/Context;)V

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/amap/api/location/core/SocketService;->a:Lcom/aps/l;

    if-eqz v0, :cond_2

    .line 234
    iget-object v0, p0, Lcom/amap/api/location/core/SocketService;->a:Lcom/aps/l;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "api_serverSDK_130905##S128DF1572465B890OE3F7A13167KLEI##"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/amap/api/location/core/c;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/amap/api/location/core/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/aps/l;->a(Ljava/lang/String;)V

    .line 238
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 239
    const-string v0, "key"

    invoke-static {p0}, Lcom/amap/api/location/core/c;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 241
    :try_start_1
    const-string v0, "X-INFO"

    invoke-static {p0}, Lcom/amap/api/location/core/c;->a(Landroid/content/Context;)Lcom/amap/api/location/core/c;

    move-result-object v2

    const-string v3, "loc"

    invoke-virtual {v2, v3}, Lcom/amap/api/location/core/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 249
    :goto_1
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 250
    invoke-static {p0}, Lcom/amap/api/location/core/c;->a(Landroid/content/Context;)Lcom/amap/api/location/core/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/location/core/c;->c()Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 253
    :try_start_3
    const-string v3, "ex"

    const-string v4, "UTF-8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/location/core/b;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 260
    :goto_2
    :try_start_4
    const-string v0, "X-BIZ"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    const-string v0, "User-Agent"

    const-string v2, "AMAP_Location_SDK_Android 1.4.1"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    iget-object v0, p0, Lcom/amap/api/location/core/SocketService;->a:Lcom/aps/l;

    if-eqz v0, :cond_3

    .line 263
    iget-object v0, p0, Lcom/amap/api/location/core/SocketService;->a:Lcom/aps/l;

    invoke-interface {v0, v1}, Lcom/aps/l;->a(Lorg/json/JSONObject;)V

    .line 265
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/location/core/SocketService;->h:Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 266
    :catch_0
    move-exception v0

    .line 270
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 243
    :catch_1
    move-exception v0

    .line 247
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 271
    :catch_2
    move-exception v0

    .line 275
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 254
    :catch_3
    move-exception v0

    .line 258
    :try_start_6
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 48
    new-instance v0, Lcom/aps/b;

    invoke-direct {v0}, Lcom/aps/b;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/core/SocketService;->a:Lcom/aps/l;

    .line 49
    invoke-virtual {p0}, Lcom/amap/api/location/core/SocketService;->startSocket()V

    .line 50
    invoke-virtual {p0}, Lcom/amap/api/location/core/SocketService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/location/core/SocketService;->b:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/amap/api/location/core/SocketService;->stopScocket()V

    .line 62
    iget-object v0, p0, Lcom/amap/api/location/core/SocketService;->a:Lcom/aps/l;

    invoke-interface {v0}, Lcom/aps/l;->c()V

    .line 63
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 64
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .prologue
    .line 55
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public startSocket()V
    .locals 1

    .prologue
    .line 73
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/location/core/SocketService;->e:Z

    if-nez v0, :cond_1

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/location/core/SocketService;->e:Z

    .line 75
    iget-object v0, p0, Lcom/amap/api/location/core/SocketService;->c:Lcom/amap/api/location/core/SocketService$a;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/amap/api/location/core/SocketService$a;

    invoke-direct {v0, p0, p0}, Lcom/amap/api/location/core/SocketService$a;-><init>(Lcom/amap/api/location/core/SocketService;Lcom/amap/api/location/core/SocketService;)V

    iput-object v0, p0, Lcom/amap/api/location/core/SocketService;->c:Lcom/amap/api/location/core/SocketService$a;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/core/SocketService;->c:Lcom/amap/api/location/core/SocketService$a;

    invoke-virtual {v0}, Lcom/amap/api/location/core/SocketService$a;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :cond_1
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public stopScocket()V
    .locals 1

    .prologue
    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/core/SocketService;->d:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/amap/api/location/core/SocketService;->d:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/core/SocketService;->f:Ljava/net/Socket;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/amap/api/location/core/SocketService;->f:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_1
    :goto_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/amap/api/location/core/SocketService;->c:Lcom/amap/api/location/core/SocketService$a;

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/location/core/SocketService;->e:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 103
    :goto_1
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 94
    :catch_1
    move-exception v0

    goto :goto_0
.end method
