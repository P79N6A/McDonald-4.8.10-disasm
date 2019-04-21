.class public Lcom/alipay/sdk/tid/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/tid/b$a;
    }
.end annotation


# static fields
.field private static i:Landroid/content/Context;

.field private static o:Lcom/alipay/sdk/tid/b;


# instance fields
.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:J

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/sdk/tid/b;->i:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/sdk/tid/b;->p:Z

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/alipay/sdk/tid/b;
    .locals 3

    .prologue
    .line 48
    const-class v1, Lcom/alipay/sdk/tid/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/sdk/tid/b;->o:Lcom/alipay/sdk/tid/b;

    if-nez v0, :cond_0

    .line 49
    const-string v0, "TidStorage"

    const-string v2, "getInstance"

    invoke-static {v0, v2}, Lcom/alipay/sdk/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance v0, Lcom/alipay/sdk/tid/b;

    invoke-direct {v0}, Lcom/alipay/sdk/tid/b;-><init>()V

    sput-object v0, Lcom/alipay/sdk/tid/b;->o:Lcom/alipay/sdk/tid/b;

    .line 52
    :cond_0
    sget-object v0, Lcom/alipay/sdk/tid/b;->i:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 53
    sget-object v0, Lcom/alipay/sdk/tid/b;->o:Lcom/alipay/sdk/tid/b;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/tid/b;->b(Landroid/content/Context;)V

    .line 55
    :cond_1
    sget-object v0, Lcom/alipay/sdk/tid/b;->o:Lcom/alipay/sdk/tid/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 206
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 206
    :goto_0
    return v0

    .line 207
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 65
    if-eqz p1, :cond_0

    .line 66
    const-string v0, "TidStorage"

    const-string v1, "TidStorage.initialize context != null"

    invoke-static {v0, v1}, Lcom/alipay/sdk/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/alipay/sdk/tid/b;->i:Landroid/content/Context;

    .line 70
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/sdk/tid/b;->p:Z

    if-eqz v0, :cond_1

    .line 78
    :goto_0
    return-void

    .line 73
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/sdk/tid/b;->p:Z

    .line 75
    invoke-direct {p0}, Lcom/alipay/sdk/tid/b;->k()V

    .line 77
    invoke-direct {p0}, Lcom/alipay/sdk/tid/b;->l()V

    goto :goto_0
.end method

.method static synthetic j()Landroid/content/Context;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/alipay/sdk/tid/b;->i:Landroid/content/Context;

    return-object v0
.end method

.method private k()V
    .locals 7

    .prologue
    .line 86
    sget-object v3, Lcom/alipay/sdk/tid/b;->i:Landroid/content/Context;

    .line 88
    if-nez v3, :cond_0

    .line 135
    :goto_0
    return-void

    .line 93
    :cond_0
    const-string v0, "alipay_tid_storage"

    const-string/jumbo v1, "upgraded_from_db"

    invoke-static {v0, v1}, Lcom/alipay/sdk/tid/b$a;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    const-string v0, "TidStorage"

    const-string/jumbo v1, "transferTidFromOldDb: already migrated. returning"

    invoke-static {v0, v1}, Lcom/alipay/sdk/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_1
    const/4 v2, 0x0

    .line 102
    :try_start_0
    const-string v0, "TidStorage"

    const-string/jumbo v1, "transferTidFromOldDb: tid from db: "

    invoke-static {v0, v1}, Lcom/alipay/sdk/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance v1, Lcom/alipay/sdk/tid/a;

    invoke-direct {v1, v3}, Lcom/alipay/sdk/tid/a;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :try_start_1
    invoke-static {v3}, Lcom/alipay/sdk/util/a;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/util/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {v3}, Lcom/alipay/sdk/util/a;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/sdk/util/a;->a()Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-virtual {v1, v0, v2}, Lcom/alipay/sdk/tid/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 107
    invoke-virtual {v1, v0, v2}, Lcom/alipay/sdk/tid/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 109
    const-string v2, "TidStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "transferTidFromOldDb: tid from db is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/alipay/sdk/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0, v4, v0}, Lcom/alipay/sdk/tid/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 115
    :cond_2
    if-eqz v1, :cond_6

    .line 116
    invoke-virtual {v1}, Lcom/alipay/sdk/tid/a;->close()V

    move-object v2, v1

    .line 122
    :goto_1
    :try_start_2
    const-string v0, "TidStorage"

    const-string/jumbo v1, "transferTidFromOldDb: removing database table"

    invoke-static {v0, v1}, Lcom/alipay/sdk/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance v1, Lcom/alipay/sdk/tid/a;

    invoke-direct {v1, v3}, Lcom/alipay/sdk/tid/a;-><init>(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 124
    :try_start_3
    invoke-virtual {v1}, Lcom/alipay/sdk/tid/a;->a()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 128
    if-eqz v1, :cond_3

    .line 129
    invoke-virtual {v1}, Lcom/alipay/sdk/tid/a;->close()V

    .line 134
    :cond_3
    :goto_2
    const-string v0, "alipay_tid_storage"

    const-string/jumbo v1, "upgraded_from_db"

    const-string/jumbo v2, "updated"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/sdk/tid/b$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 112
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 113
    :goto_3
    :try_start_4
    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 115
    if-eqz v1, :cond_6

    .line 116
    invoke-virtual {v1}, Lcom/alipay/sdk/tid/a;->close()V

    move-object v2, v1

    goto :goto_1

    .line 115
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_4

    .line 116
    invoke-virtual {v1}, Lcom/alipay/sdk/tid/a;->close()V

    :cond_4
    throw v0

    .line 125
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 126
    :goto_5
    :try_start_5
    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 128
    if-eqz v1, :cond_3

    .line 129
    invoke-virtual {v1}, Lcom/alipay/sdk/tid/a;->close()V

    goto :goto_2

    .line 128
    :catchall_1
    move-exception v0

    :goto_6
    if-eqz v2, :cond_5

    .line 129
    invoke-virtual {v2}, Lcom/alipay/sdk/tid/a;->close()V

    :cond_5
    throw v0

    .line 128
    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v2, v1

    goto :goto_6

    .line 125
    :catch_2
    move-exception v0

    goto :goto_5

    .line 115
    :catchall_4
    move-exception v0

    goto :goto_4

    .line 112
    :catch_3
    move-exception v0

    goto :goto_3

    :cond_6
    move-object v2, v1

    goto :goto_1
.end method

.method private l()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 161
    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 168
    :try_start_0
    const-string v2, "alipay_tid_storage"

    const-string v3, "tidinfo"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/alipay/sdk/tid/b$a;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 171
    new-instance v3, Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 172
    const-string v2, "tid"

    const-string v3, ""

    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 173
    :try_start_1
    const-string v2, "client_key"

    const-string v3, ""

    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 174
    :try_start_2
    const-string v2, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v2, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    .line 175
    :try_start_3
    const-string/jumbo v1, "vimei"

    const-string v6, ""

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v1

    .line 176
    :try_start_4
    const-string/jumbo v6, "vimsi"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v0

    .line 182
    :goto_0
    const-string v5, "TidStorage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TidStorage.load "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/sdk/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-direct {p0, v4, v3, v1, v0}, Lcom/alipay/sdk/tid/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 186
    invoke-direct {p0}, Lcom/alipay/sdk/tid/b;->m()V

    .line 194
    :goto_1
    return-void

    .line 178
    :catch_0
    move-exception v2

    move-object v5, v2

    move-object v3, v0

    move-object v4, v0

    move-object v2, v1

    move-object v1, v0

    .line 179
    :goto_2
    invoke-static {v5}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 188
    :cond_0
    iput-object v4, p0, Lcom/alipay/sdk/tid/b;->j:Ljava/lang/String;

    .line 189
    iput-object v3, p0, Lcom/alipay/sdk/tid/b;->k:Ljava/lang/String;

    .line 190
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/sdk/tid/b;->l:J

    .line 191
    iput-object v1, p0, Lcom/alipay/sdk/tid/b;->m:Ljava/lang/String;

    .line 192
    iput-object v0, p0, Lcom/alipay/sdk/tid/b;->n:Ljava/lang/String;

    goto :goto_1

    .line 178
    :catch_1
    move-exception v2

    move-object v5, v2

    move-object v3, v0

    move-object v2, v1

    move-object v1, v0

    goto :goto_2

    :catch_2
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    goto :goto_2

    :catch_4
    move-exception v5

    goto :goto_2

    :cond_1
    move-object v2, v1

    move-object v3, v0

    move-object v4, v0

    move-object v1, v0

    goto :goto_0
.end method

.method private m()V
    .locals 2

    .prologue
    .line 216
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/sdk/tid/b;->j:Ljava/lang/String;

    .line 217
    invoke-virtual {p0}, Lcom/alipay/sdk/tid/b;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/tid/b;->k:Ljava/lang/String;

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/sdk/tid/b;->l:J

    .line 219
    invoke-direct {p0}, Lcom/alipay/sdk/tid/b;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/tid/b;->m:Ljava/lang/String;

    .line 220
    invoke-direct {p0}, Lcom/alipay/sdk/tid/b;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/tid/b;->n:Ljava/lang/String;

    .line 221
    const-string v0, "alipay_tid_storage"

    const-string v1, "tidinfo"

    invoke-static {v0, v1}, Lcom/alipay/sdk/tid/b$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method private n()Ljava/lang/String;
    .locals 3

    .prologue
    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 231
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 232
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x2328

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 234
    return-object v0
.end method

.method private o()V
    .locals 0

    .prologue
    .line 295
    return-void
.end method

.method private p()V
    .locals 4

    .prologue
    .line 316
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 317
    const-string v1, "tid"

    iget-object v2, p0, Lcom/alipay/sdk/tid/b;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 318
    const-string v1, "client_key"

    iget-object v2, p0, Lcom/alipay/sdk/tid/b;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 319
    const-string v1, "timestamp"

    iget-wide v2, p0, Lcom/alipay/sdk/tid/b;->l:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 320
    const-string/jumbo v1, "vimei"

    iget-object v2, p0, Lcom/alipay/sdk/tid/b;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 321
    const-string/jumbo v1, "vimsi"

    iget-object v2, p0, Lcom/alipay/sdk/tid/b;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 322
    const-string v1, "alipay_tid_storage"

    const-string v2, "tidinfo"

    .line 323
    instance-of v3, v0, Lorg/json/JSONObject;

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v3}, Lcom/alipay/sdk/tid/b$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 327
    :goto_1
    return-void

    .line 323
    :cond_0
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 324
    :catch_0
    move-exception v0

    .line 325
    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 138
    const-string v0, "TidStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TidStorage.getTid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/sdk/tid/b;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/sdk/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/alipay/sdk/tid/b;->j:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",clientKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 280
    const-string v1, "TidStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TidStorage.save "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/sdk/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    iput-object p1, p0, Lcom/alipay/sdk/tid/b;->j:Ljava/lang/String;

    .line 287
    iput-object p2, p0, Lcom/alipay/sdk/tid/b;->k:Ljava/lang/String;

    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/sdk/tid/b;->l:J

    .line 289
    invoke-direct {p0}, Lcom/alipay/sdk/tid/b;->p()V

    .line 290
    invoke-direct {p0}, Lcom/alipay/sdk/tid/b;->o()V

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 143
    const-string v0, "TidStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TidStorage.getClientKey "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/sdk/tid/b;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/sdk/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/alipay/sdk/tid/b;->k:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 3

    .prologue
    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    .line 245
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 247
    :cond_0
    return-object v0
.end method
