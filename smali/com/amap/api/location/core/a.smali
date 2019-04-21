.class public Lcom/amap/api/location/core/a;
.super Ljava/lang/Object;
.source "AuthManager.java"


# static fields
.field static a:Ljava/lang/String;

.field private static b:I

.field private static c:Landroid/content/Context;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Landroid/content/SharedPreferences;

.field private static m:Landroid/content/SharedPreferences$Editor;

.field private static n:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    const/4 v0, -0x1

    sput v0, Lcom/amap/api/location/core/a;->b:I

    .line 26
    const-string v0, ""

    sput-object v0, Lcom/amap/api/location/core/a;->a:Ljava/lang/String;

    .line 79
    const-string/jumbo v0, "\u63d0\u793a\u4fe1\u606f"

    sput-object v0, Lcom/amap/api/location/core/a;->d:Ljava/lang/String;

    .line 80
    const-string/jumbo v0, "\u786e\u8ba4"

    sput-object v0, Lcom/amap/api/location/core/a;->e:Ljava/lang/String;

    .line 81
    const-string/jumbo v0, "\u53d6\u6d88"

    sput-object v0, Lcom/amap/api/location/core/a;->f:Ljava/lang/String;

    .line 82
    const-string v0, ""

    sput-object v0, Lcom/amap/api/location/core/a;->g:Ljava/lang/String;

    .line 83
    const-string v0, ""

    sput-object v0, Lcom/amap/api/location/core/a;->h:Ljava/lang/String;

    .line 84
    const-string v0, ""

    sput-object v0, Lcom/amap/api/location/core/a;->i:Ljava/lang/String;

    .line 190
    const-string v0, "1"

    sput-object v0, Lcom/amap/api/location/core/a;->j:Ljava/lang/String;

    .line 271
    const-string v0, "0"

    sput-object v0, Lcom/amap/api/location/core/a;->k:Ljava/lang/String;

    .line 278
    sput-object v1, Lcom/amap/api/location/core/a;->l:Landroid/content/SharedPreferences;

    .line 279
    sput-object v1, Lcom/amap/api/location/core/a;->m:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 31
    sget v0, Lcom/amap/api/location/core/a;->b:I

    return v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 247
    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 248
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 249
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 250
    array-length v4, v2

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v2, v0

    .line 251
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    const-string v5, "&"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 250
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 256
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 259
    :goto_1
    return-object v0

    :cond_1
    move-object v0, p0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;J)V
    .locals 3

    .prologue
    .line 285
    :try_start_0
    sget-object v0, Lcom/amap/api/location/core/a;->l:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 286
    const-string v0, "abcd"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/amap/api/location/core/a;->l:Landroid/content/SharedPreferences;

    .line 289
    :cond_0
    sget-object v0, Lcom/amap/api/location/core/a;->m:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_1

    .line 290
    sget-object v0, Lcom/amap/api/location/core/a;->l:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/amap/api/location/core/a;->m:Landroid/content/SharedPreferences$Editor;

    .line 292
    :cond_1
    sget-object v0, Lcom/amap/api/location/core/a;->m:Landroid/content/SharedPreferences$Editor;

    const-string v1, "abc"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 293
    sget-object v0, Lcom/amap/api/location/core/a;->m:Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/amap/api/location/core/a;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :goto_0
    return-void

    .line 294
    :catch_0
    move-exception v0

    .line 298
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static a(Landroid/content/SharedPreferences$Editor;)V
    .locals 3

    .prologue
    .line 317
    if-nez p0, :cond_0

    .line 337
    :goto_0
    return-void

    .line 320
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_2

    .line 322
    :try_start_0
    sget-object v0, Lcom/amap/api/location/core/a;->n:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 323
    const-class v0, Landroid/content/SharedPreferences$Editor;

    .line 324
    const-string v1, "apply"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/amap/api/location/core/a;->n:Ljava/lang/reflect/Method;

    .line 326
    :cond_1
    sget-object v0, Lcom/amap/api/location/core/a;->n:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 327
    :catch_0
    move-exception v0

    .line 331
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 332
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 335
    :cond_2
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 35
    const-class v2, Lcom/amap/api/location/core/a;

    monitor-enter v2

    .line 39
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resType=json&encode=UTF-8&key="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/amap/api/location/core/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/location/core/a;->f(Ljava/lang/String;)[B

    move-result-object v0

    .line 40
    invoke-static {}, Lcom/amap/api/location/core/a;->j()Ljava/lang/String;

    move-result-object v3

    .line 41
    invoke-static {}, Lcom/aps/n;->a()Lcom/aps/n;

    move-result-object v4

    const-string v5, "loc"

    invoke-virtual {v4, p0, v3, v0, v5}, Lcom/aps/n;->a(Landroid/content/Context;Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    invoke-static {v0}, Lcom/amap/api/location/core/a;->e(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 52
    :goto_0
    :try_start_1
    sget v3, Lcom/amap/api/location/core/a;->b:I

    if-eq v3, v1, :cond_0

    .line 53
    const/4 v1, 0x0

    sput v1, Lcom/amap/api/location/core/a;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 56
    :cond_0
    :goto_1
    monitor-exit v2

    return v0

    .line 46
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    sput v0, Lcom/amap/api/location/core/a;->b:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    const/4 v3, 0x0

    :try_start_3
    sput v3, Lcom/amap/api/location/core/a;->b:I

    .line 50
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 52
    :try_start_4
    sget v0, Lcom/amap/api/location/core/a;->b:I

    if-eq v0, v1, :cond_2

    .line 53
    const/4 v0, 0x0

    sput v0, Lcom/amap/api/location/core/a;->b:I

    :cond_2
    move v0, v1

    .line 55
    goto :goto_1

    .line 52
    :catchall_0
    move-exception v0

    sget v3, Lcom/amap/api/location/core/a;->b:I

    if-eq v3, v1, :cond_3

    .line 53
    const/4 v1, 0x0

    sput v1, Lcom/amap/api/location/core/a;->b:I

    .line 52
    :cond_3
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 35
    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/amap/api/location/core/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 263
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 264
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 265
    invoke-static {}, Lcom/amap/api/location/core/d;->a()Ljava/lang/String;

    move-result-object v1

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&ts="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&scode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, p0}, Lcom/amap/api/location/core/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 268
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Z
    .locals 6

    .prologue
    .line 60
    const-class v2, Lcom/amap/api/location/core/a;

    monitor-enter v2

    .line 62
    :try_start_0
    sput-object p0, Lcom/amap/api/location/core/a;->c:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 63
    const/4 v0, 0x1

    .line 65
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resType=json&encode=UTF-8&opertype=callamap;fast&output=json&key="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/amap/api/location/core/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/location/core/a;->f(Ljava/lang/String;)[B

    move-result-object v1

    .line 67
    invoke-static {}, Lcom/amap/api/location/core/a;->k()Ljava/lang/String;

    move-result-object v3

    .line 68
    invoke-static {}, Lcom/aps/n;->a()Lcom/aps/n;

    move-result-object v4

    const-string v5, "lswu"

    invoke-virtual {v4, p0, v3, v1, v5}, Lcom/aps/n;->a(Landroid/content/Context;Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    if-eqz v1, :cond_0

    .line 71
    invoke-static {v1}, Lcom/amap/api/location/core/a;->d(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 77
    :cond_0
    :goto_0
    monitor-exit v2

    return v0

    .line 73
    :catch_0
    move-exception v1

    .line 74
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 60
    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static c(Landroid/content/Context;)J
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 304
    :try_start_0
    const-string v2, "abcd"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 306
    const-string v3, "abc"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 312
    :goto_0
    return-wide v0

    .line 308
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/amap/api/location/core/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 276
    sput-object p0, Lcom/amap/api/location/core/a;->k:Ljava/lang/String;

    .line 277
    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/amap/api/location/core/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 10

    .prologue
    const-wide/32 v8, 0x36ee80

    .line 105
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 106
    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 107
    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 108
    const-string v1, "callamap"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    const-string v1, "callamap"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 110
    const-string v2, "callamapflag"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    const-string v2, "callamapflag"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amap/api/location/core/a;->j:Ljava/lang/String;

    .line 114
    :cond_0
    const-string v1, "ca"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 115
    const-string v1, "ca"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 116
    const-string v1, "f"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 117
    const-string v1, "f"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amap/api/location/core/a;->k:Ljava/lang/String;

    .line 118
    const-string v1, "1"

    sget-object v2, Lcom/amap/api/location/core/a;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 119
    sget-object v1, Lcom/amap/api/location/core/a;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/location/core/a;->c(Landroid/content/Context;)J

    move-result-wide v2

    .line 120
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 121
    sub-long v6, v4, v2

    cmp-long v1, v6, v8

    if-lez v1, :cond_1

    .line 122
    sget-object v1, Lcom/amap/api/location/core/a;->c:Landroid/content/Context;

    invoke-static {v1, v4, v5}, Lcom/amap/api/location/core/a;->a(Landroid/content/Context;J)V

    .line 124
    :cond_1
    cmp-long v1, v4, v2

    if-lez v1, :cond_2

    sub-long v6, v4, v2

    cmp-long v1, v6, v8

    if-gez v1, :cond_2

    .line 125
    const-string v1, "0"

    sput-object v1, Lcom/amap/api/location/core/a;->k:Ljava/lang/String;

    .line 127
    :cond_2
    cmp-long v1, v4, v2

    if-gez v1, :cond_3

    .line 128
    const-string v1, "0"

    sput-object v1, Lcom/amap/api/location/core/a;->k:Ljava/lang/String;

    .line 129
    sget-object v1, Lcom/amap/api/location/core/a;->c:Landroid/content/Context;

    invoke-static {v1, v4, v5}, Lcom/amap/api/location/core/a;->a(Landroid/content/Context;J)V

    .line 135
    :cond_3
    :goto_0
    const-string v1, "a"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 136
    const-string v1, "a"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amap/api/location/core/a;->d:Ljava/lang/String;

    .line 138
    :cond_4
    const-string v1, "o"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 139
    const-string v1, "o"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amap/api/location/core/a;->e:Ljava/lang/String;

    .line 141
    :cond_5
    const-string v1, "c"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 142
    const-string v1, "c"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amap/api/location/core/a;->f:Ljava/lang/String;

    .line 144
    :cond_6
    const-string v1, "i"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 145
    const-string v1, "i"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amap/api/location/core/a;->g:Ljava/lang/String;

    .line 147
    :cond_7
    const-string/jumbo v1, "u"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 148
    const-string/jumbo v1, "u"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amap/api/location/core/a;->h:Ljava/lang/String;

    .line 150
    :cond_8
    const-string v1, "t"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 151
    const-string v1, "t"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/location/core/a;->i:Ljava/lang/String;

    .line 153
    :cond_9
    const-string v0, ""

    sget-object v1, Lcom/amap/api/location/core/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/amap/api/location/core/a;->g:Ljava/lang/String;

    if-nez v0, :cond_c

    :cond_a
    const-string v0, ""

    sget-object v1, Lcom/amap/api/location/core/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/amap/api/location/core/a;->h:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 154
    :cond_b
    const-string v0, "0"

    sput-object v0, Lcom/amap/api/location/core/a;->k:Ljava/lang/String;

    .line 167
    :cond_c
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 132
    :cond_d
    const-string v1, "0"

    sput-object v1, Lcom/amap/api/location/core/a;->k:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 163
    const-string v1, "0"

    sput-object v1, Lcom/amap/api/location/core/a;->k:Ljava/lang/String;

    .line 164
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 165
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/amap/api/location/core/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method private static e(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 195
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 196
    const-string v3, "status"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 197
    const-string v3, "status"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 198
    if-ne v3, v0, :cond_3

    .line 199
    const/4 v3, 0x1

    sput v3, Lcom/amap/api/location/core/a;->b:I

    .line 204
    :cond_0
    :goto_0
    const-string v3, "info"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 205
    const-string v3, "info"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/amap/api/location/core/a;->a:Ljava/lang/String;

    .line 207
    :cond_1
    sget v2, Lcom/amap/api/location/core/a;->b:I

    if-nez v2, :cond_2

    .line 208
    const-string v2, "AuthFailure"

    sget-object v3, Lcom/amap/api/location/core/a;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :cond_2
    :goto_1
    sget v2, Lcom/amap/api/location/core/a;->b:I

    if-ne v2, v0, :cond_4

    .line 220
    :goto_2
    return v0

    .line 200
    :cond_3
    if-nez v3, :cond_0

    .line 201
    const/4 v3, 0x0

    :try_start_1
    sput v3, Lcom/amap/api/location/core/a;->b:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 210
    :catch_0
    move-exception v2

    .line 214
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 215
    sput v1, Lcom/amap/api/location/core/a;->b:I

    goto :goto_1

    :cond_4
    move v0, v1

    .line 220
    goto :goto_2
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/amap/api/location/core/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method private static f(Ljava/lang/String;)[B
    .locals 2

    .prologue
    .line 230
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 231
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 233
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/location/core/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    invoke-static {v0}, Lcom/amap/api/location/core/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 242
    :goto_0
    return-object v0

    .line 237
    :catch_0
    move-exception v0

    .line 241
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 242
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/amap/api/location/core/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static h()Z
    .locals 2

    .prologue
    .line 225
    const-string v0, "1"

    sget-object v1, Lcom/amap/api/location/core/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static i()Z
    .locals 2

    .prologue
    .line 273
    const-string v0, "1"

    sget-object v1, Lcom/amap/api/location/core/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    const-string v0, "http://apiinit.amap.com/v3/log/init"

    return-object v0
.end method

.method private static k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    const-string v0, "http://restapi.amap.com/v3/fastconnect?"

    return-object v0
.end method
