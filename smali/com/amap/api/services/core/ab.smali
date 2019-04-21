.class public Lcom/amap/api/services/core/ab;
.super Ljava/lang/Object;
.source "ProxyUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 182
    :try_start_0
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 189
    :goto_0
    if-nez v0, :cond_0

    .line 190
    const-string v0, "null"

    .line 192
    :cond_0
    return-object v0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 186
    const-string v1, "ProxyUtil"

    const-string v2, "getDefHost"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lorg/apache/http/HttpHost;
    .locals 4

    .prologue
    .line 23
    const/4 v0, 0x0

    .line 26
    :try_start_0
    new-instance v1, Ljava/net/URI;

    const-string v2, "http://restapi.amap.com"

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    :try_start_1
    invoke-static {p0}, Lcom/amap/api/services/core/ab;->b(Landroid/content/Context;)Lorg/apache/http/HttpHost;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 45
    :goto_1
    return-object v0

    .line 27
    :catch_0
    move-exception v1

    .line 29
    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0

    .line 38
    :catch_1
    move-exception v1

    .line 39
    const-string v2, "ProxyUtil"

    const-string v3, "getProxy"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 170
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b()I
    .locals 4

    .prologue
    .line 196
    const/4 v0, -0x1

    .line 198
    :try_start_0
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 203
    :goto_0
    return v0

    .line 199
    :catch_0
    move-exception v1

    .line 200
    const-string v2, "ProxyUtil"

    const-string v3, "getDefPort"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Lorg/apache/http/HttpHost;
    .locals 12

    .prologue
    const/4 v10, 0x0

    const/16 v6, 0x50

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 49
    .line 51
    invoke-static {p0}, Lcom/amap/api/services/core/y;->g(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_d

    .line 52
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 56
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 57
    if-eqz v2, :cond_14

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 58
    const-string v0, "apn"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 59
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 64
    :cond_0
    if-eqz v0, :cond_3

    const-string v1, "ctwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 65
    invoke-static {}, Lcom/amap/api/services/core/ab;->a()Ljava/lang/String;

    move-result-object v3

    .line 66
    invoke-static {}, Lcom/amap/api/services/core/ab;->b()I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 69
    :try_start_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 70
    const-string v1, "null"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v1

    if-nez v1, :cond_16

    move v1, v9

    .line 75
    :goto_0
    if-nez v1, :cond_15

    .line 76
    :try_start_3
    const-string v1, "10.0.0.200"
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 78
    :goto_1
    if-ne v0, v8, :cond_1

    move v0, v6

    .line 139
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    .line 141
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 153
    :cond_2
    :goto_3
    invoke-static {v1, v0}, Lcom/amap/api/services/core/ab;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 154
    const-string v3, "http"

    .line 155
    new-instance v2, Lorg/apache/http/HttpHost;

    invoke-direct {v2, v1, v0, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v0, v2

    .line 159
    :goto_4
    return-object v0

    .line 81
    :cond_3
    if-eqz v0, :cond_14

    :try_start_5
    const-string/jumbo v1, "wap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 82
    invoke-static {}, Lcom/amap/api/services/core/ab;->a()Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-static {}, Lcom/amap/api/services/core/ab;->b()I
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v1

    .line 86
    :try_start_6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 87
    const-string v0, "null"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v0

    if-nez v0, :cond_13

    move v0, v9

    .line 92
    :goto_5
    if-nez v0, :cond_12

    .line 93
    :try_start_7
    const-string v0, "10.0.0.172"
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 95
    :goto_6
    if-ne v1, v8, :cond_11

    move-object v1, v0

    move v0, v6

    .line 96
    goto :goto_2

    .line 142
    :catch_0
    move-exception v2

    .line 143
    invoke-static {}, Lcom/amap/api/services/core/ax;->b()Lcom/amap/api/services/core/ax;

    move-result-object v3

    .line 145
    if-eqz v3, :cond_4

    .line 146
    const-string v4, "ProxyUtil"

    const-string v5, "getHostProxy2"

    invoke-virtual {v3, v2, v4, v5}, Lcom/amap/api/services/core/ax;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 100
    :catch_1
    move-exception v0

    move-object v2, v7

    move v1, v8

    move-object v3, v7

    .line 101
    :goto_7
    :try_start_8
    const-string v4, "ProxyUtil"

    const-string v5, "getHostProxy"

    invoke-static {v0, v4, v5}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {p0}, Lcom/amap/api/services/core/y;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_10

    .line 104
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 107
    invoke-static {}, Lcom/amap/api/services/core/ab;->a()Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-static {}, Lcom/amap/api/services/core/ab;->b()I

    move-result v0

    .line 109
    const-string v5, "ctwap"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v8, :cond_8

    .line 110
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 111
    const-string v4, "null"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    move v10, v9

    move-object v3, v1

    .line 116
    :cond_5
    if-nez v10, :cond_6

    .line 117
    const-string v3, "10.0.0.200"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 119
    :cond_6
    if-ne v0, v8, :cond_f

    move v0, v6

    move-object v1, v3

    .line 139
    :goto_8
    if-eqz v2, :cond_2

    .line 141
    :try_start_9
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_3

    .line 142
    :catch_2
    move-exception v2

    .line 143
    invoke-static {}, Lcom/amap/api/services/core/ax;->b()Lcom/amap/api/services/core/ax;

    move-result-object v3

    .line 145
    if-eqz v3, :cond_7

    .line 146
    const-string v4, "ProxyUtil"

    const-string v5, "getHostProxy2"

    invoke-virtual {v3, v2, v4, v5}, Lcom/amap/api/services/core/ax;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    .line 122
    :cond_8
    :try_start_a
    const-string/jumbo v5, "wap"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v8, :cond_f

    .line 123
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 124
    const-string v0, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    move-object v0, v1

    move v1, v9

    .line 129
    :goto_9
    if-nez v1, :cond_9

    .line 130
    const-string v0, "10.0.0.200"
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :cond_9
    move-object v1, v0

    move v0, v6

    .line 132
    goto :goto_8

    .line 135
    :catch_3
    move-exception v0

    move-object v2, v0

    move-object v3, v7

    move-object v1, v7

    move v0, v8

    .line 136
    :goto_a
    :try_start_b
    const-string v4, "ProxyUtil"

    const-string v5, "getHostProxy1"

    invoke-static {v2, v4, v5}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 139
    if-eqz v3, :cond_2

    .line 141
    :try_start_c
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4

    goto/16 :goto_3

    .line 142
    :catch_4
    move-exception v2

    .line 143
    invoke-static {}, Lcom/amap/api/services/core/ax;->b()Lcom/amap/api/services/core/ax;

    move-result-object v3

    .line 145
    if-eqz v3, :cond_a

    .line 146
    const-string v4, "ProxyUtil"

    const-string v5, "getHostProxy2"

    invoke-virtual {v3, v2, v4, v5}, Lcom/amap/api/services/core/ax;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_a
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    .line 139
    :catchall_0
    move-exception v0

    move-object v2, v7

    :goto_b
    if-eqz v2, :cond_b

    .line 141
    :try_start_d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_5

    .line 150
    :cond_b
    :goto_c
    throw v0

    .line 142
    :catch_5
    move-exception v1

    .line 143
    invoke-static {}, Lcom/amap/api/services/core/ax;->b()Lcom/amap/api/services/core/ax;

    move-result-object v2

    .line 145
    if-eqz v2, :cond_c

    .line 146
    const-string v3, "ProxyUtil"

    const-string v4, "getHostProxy2"

    invoke-virtual {v2, v1, v3, v4}, Lcom/amap/api/services/core/ax;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_c
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_c

    :cond_d
    move-object v0, v7

    .line 159
    goto/16 :goto_4

    .line 139
    :catchall_1
    move-exception v0

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_b

    .line 135
    :catch_6
    move-exception v0

    move-object v3, v2

    move-object v1, v7

    move-object v2, v0

    move v0, v8

    goto :goto_a

    :catch_7
    move-exception v1

    move-object v3, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_a

    :catch_8
    move-exception v1

    move-object v11, v1

    move-object v1, v3

    move-object v3, v2

    move-object v2, v11

    goto :goto_a

    :catch_9
    move-exception v0

    move-object v3, v2

    move-object v2, v0

    move v0, v1

    move-object v1, v7

    goto :goto_a

    :catch_a
    move-exception v0

    move-object v11, v0

    move v0, v1

    move-object v1, v3

    move-object v3, v2

    move-object v2, v11

    goto :goto_a

    .line 100
    :catch_b
    move-exception v0

    move v1, v8

    move-object v3, v7

    goto/16 :goto_7

    :catch_c
    move-exception v1

    move-object v3, v7

    move v11, v0

    move-object v0, v1

    move v1, v11

    goto/16 :goto_7

    :catch_d
    move-exception v1

    move-object v11, v1

    move v1, v0

    move-object v0, v11

    goto/16 :goto_7

    :catch_e
    move-exception v0

    move-object v3, v7

    goto/16 :goto_7

    :catch_f
    move-exception v0

    goto/16 :goto_7

    :cond_e
    move v1, v10

    move-object v0, v3

    goto/16 :goto_9

    :cond_f
    move-object v1, v3

    goto/16 :goto_8

    :cond_10
    move v0, v1

    move-object v1, v3

    goto/16 :goto_8

    :cond_11
    move v11, v1

    move-object v1, v0

    move v0, v11

    goto/16 :goto_2

    :cond_12
    move-object v0, v3

    goto/16 :goto_6

    :cond_13
    move v0, v10

    move-object v3, v7

    goto/16 :goto_5

    :cond_14
    move v0, v8

    move-object v1, v7

    goto/16 :goto_2

    :cond_15
    move-object v1, v3

    goto/16 :goto_1

    :cond_16
    move v1, v10

    move-object v3, v7

    goto/16 :goto_0
.end method
