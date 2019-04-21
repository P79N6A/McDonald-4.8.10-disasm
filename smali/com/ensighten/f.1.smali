.class public final Lcom/ensighten/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ensighten/X$b;
.implements Lcom/ensighten/X$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ensighten/f$1;,
        Lcom/ensighten/f$a;
    }
.end annotation


# instance fields
.field public a:Lcom/ensighten/e;

.field public b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/ensighten/f$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ensighten/f;->b:Ljava/util/Set;

    .line 38
    new-instance v0, Lcom/ensighten/e;

    invoke-direct {v0, p1}, Lcom/ensighten/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ensighten/f;->a:Lcom/ensighten/e;

    .line 39
    return-void
.end method

.method private a(Lcom/ensighten/e;I)V
    .locals 3

    .prologue
    .line 149
    iget-object v1, p0, Lcom/ensighten/f;->b:Ljava/util/Set;

    monitor-enter v1

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/ensighten/f;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ensighten/f$a;

    .line 151
    invoke-interface {v0, p1}, Lcom/ensighten/f$a;->a(Lcom/ensighten/e;)V

    goto :goto_0

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 91
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const-string v0, "Loading the configuration"

    invoke-static {v0}, Lcom/ensighten/i;->b(Ljava/lang/String;)V

    .line 93
    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getStorageManager()Lcom/ensighten/N;

    .line 94
    const-string v0, "ensighten"

    invoke-static {v0}, Lcom/ensighten/N;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 95
    sget v1, Lcom/ensighten/g;->b:I

    invoke-virtual {p0, v0, v1}, Lcom/ensighten/f;->a(Lorg/json/JSONObject;I)V

    .line 96
    return-void
.end method

.method public final a(Lcom/ensighten/f$a;)V
    .locals 2

    .prologue
    .line 127
    iget-object v1, p0, Lcom/ensighten/f;->b:Ljava/util/Set;

    monitor-enter v1

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/ensighten/f;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 129
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 173
    iget-object v1, p0, Lcom/ensighten/f;->b:Ljava/util/Set;

    monitor-enter v1

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/ensighten/f;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ensighten/f$a;

    .line 175
    invoke-interface {v0, p1}, Lcom/ensighten/f$a;->a(Ljava/lang/Class;)V

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final a(Lorg/json/JSONObject;I)V
    .locals 14

    .prologue
    .line 58
    iget-object v13, p0, Lcom/ensighten/f;->a:Lcom/ensighten/e;

    .line 1201
    if-eqz p1, :cond_2

    .line 1206
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "isCurrent"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "isCurrent"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v3, v13, Lcom/ensighten/e;->c:Ljava/lang/String;

    instance-of v2, p1, Lorg/json/JSONObject;

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v2}, Lcom/ensighten/Utils;->sha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1209
    :cond_1
    invoke-static {}, Lcom/ensighten/i;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1210
    const-string v2, "The configuration was received but is the same as the cached one and was not processed."

    invoke-static {v2}, Lcom/ensighten/i;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/ensighten/f;->a:Lcom/ensighten/e;

    move/from16 v0, p2

    invoke-direct {p0, v2, v0}, Lcom/ensighten/f;->a(Lcom/ensighten/e;I)V

    .line 60
    return-void

    .line 1206
    :cond_3
    :try_start_1
    move-object v0, p1

    check-cast v0, Lorg/json/JSONObject;

    move-object v2, v0

    invoke-static {v2}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2188
    :cond_4
    iget-object v2, v13, Lcom/ensighten/e;->f:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 2189
    iget-object v2, v13, Lcom/ensighten/e;->g:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 2190
    iget-object v2, v13, Lcom/ensighten/e;->i:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 2191
    iget-object v2, v13, Lcom/ensighten/e;->j:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 2192
    const-string/jumbo v2, "unknown"

    iput-object v2, v13, Lcom/ensighten/e;->c:Ljava/lang/String;

    .line 1217
    iput-object p1, v13, Lcom/ensighten/e;->b:Lorg/json/JSONObject;

    .line 1218
    iget-object v2, v13, Lcom/ensighten/e;->b:Lorg/json/JSONObject;

    const-string/jumbo v3, "version"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v13, Lcom/ensighten/e;->b:Lorg/json/JSONObject;

    const-string/jumbo v3, "version"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    iput-object v2, v13, Lcom/ensighten/e;->d:Ljava/lang/String;

    .line 1219
    iget-object v2, v13, Lcom/ensighten/e;->b:Lorg/json/JSONObject;

    const-string v3, "refreshInterval"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, v13, Lcom/ensighten/e;->b:Lorg/json/JSONObject;

    const-string v3, "refreshInterval"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    :goto_3
    iput-wide v2, v13, Lcom/ensighten/e;->m:J

    .line 1220
    iget-object v2, v13, Lcom/ensighten/e;->b:Lorg/json/JSONObject;

    instance-of v3, v2, Lorg/json/JSONObject;

    if-nez v3, :cond_c

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-static {v2}, Lcom/ensighten/Utils;->sha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Lcom/ensighten/e;->c:Ljava/lang/String;

    .line 1221
    iget-object v2, v13, Lcom/ensighten/e;->b:Lorg/json/JSONObject;

    const-string v3, "maxQueue"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, v13, Lcom/ensighten/e;->b:Lorg/json/JSONObject;

    const-string v3, "maxQueue"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    :goto_5
    iput v2, v13, Lcom/ensighten/e;->k:I

    .line 1222
    iget-object v2, v13, Lcom/ensighten/e;->b:Lorg/json/JSONObject;

    const-string v3, "init"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, v13, Lcom/ensighten/e;->b:Lorg/json/JSONObject;

    const-string v3, "init"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    :goto_6
    iput-object v2, v13, Lcom/ensighten/e;->e:Lorg/json/JSONArray;

    .line 1223
    iget-object v2, v13, Lcom/ensighten/e;->b:Lorg/json/JSONObject;

    const-string v3, "queueDepth"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, v13, Lcom/ensighten/e;->b:Lorg/json/JSONObject;

    const-string v3, "queueDepth"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    :goto_7
    iput v2, v13, Lcom/ensighten/e;->l:I

    .line 1224
    iget-object v2, v13, Lcom/ensighten/e;->b:Lorg/json/JSONObject;

    const-string/jumbo v3, "uploadUrl"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, v13, Lcom/ensighten/e;->b:Lorg/json/JSONObject;

    const-string/jumbo v3, "uploadUrl"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_8
    invoke-static {v2}, Lcom/ensighten/Utils;->setUploadURL(Ljava/lang/String;)V

    .line 1227
    iget-boolean v3, v13, Lcom/ensighten/e;->s:Z

    .line 1228
    iget-object v2, v13, Lcom/ensighten/e;->b:Lorg/json/JSONObject;

    const-string v4, "persistentStoreEnabled"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, v13, Lcom/ensighten/e;->b:Lorg/json/JSONObject;

    const-string v4, "persistentStoreEnabled"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    :goto_9
    iput-boolean v2, v13, Lcom/ensighten/e;->s:Z

    .line 1229
    iget-boolean v2, v13, Lcom/ensighten/e;->s:Z

    if-nez v2, :cond_5

    iget-boolean v2, v13, Lcom/ensighten/e;->s:Z

    if-eq v3, v2, :cond_5

    .line 3387
    iget-object v2, v13, Lcom/ensighten/e;->a:Landroid/content/Context;

    const-string v3, "ensighten"

    invoke-virtual {v2, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v2

    .line 3388
    iget-object v3, v13, Lcom/ensighten/e;->a:Landroid/content/Context;

    const-string v4, "ensightenQ"

    invoke-virtual {v3, v4}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v3

    .line 3389
    iget-object v4, v13, Lcom/ensighten/e;->a:Landroid/content/Context;

    const-string v5, "ensightenOptimizationConfig"

    invoke-virtual {v4, v5}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v4

    .line 3390
    invoke-static {}, Lcom/ensighten/i;->b()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3391
    const-string v5, "Cleared persistent storage. Configuration file success: %s. Queue file success: %s. Optimization file success = %s."

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ensighten/i;->b(Ljava/lang/String;)V

    .line 1233
    :cond_5
    iget-object v2, v13, Lcom/ensighten/e;->b:Lorg/json/JSONObject;

    const-string v3, "privacyEnabled"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, v13, Lcom/ensighten/e;->b:Lorg/json/JSONObject;

    const-string v3, "privacyEnabled"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    :goto_a
    iput-boolean v2, v13, Lcom/ensighten/e;->t:Z

    .line 1234
    iget-object v2, v13, Lcom/ensighten/e;->b:Lorg/json/JSONObject;

    const-string v3, "privacyStatement"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, v13, Lcom/ensighten/e;->b:Lorg/json/JSONObject;

    const-string v3, "privacyStatement"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_b
    iput-object v2, v13, Lcom/ensighten/e;->q:Ljava/lang/String;

    .line 1236
    iget-object v2, v13, Lcom/ensighten/e;->q:Ljava/lang/String;

    invoke-static {v2}, Lcom/ensighten/Utils;->sha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1237
    iget-object v3, v13, Lcom/ensighten/e;->r:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1238
    const/4 v3, 0x0

    iput-boolean v3, v13, Lcom/ensighten/e;->o:Z

    .line 1239
    iput-object v2, v13, Lcom/ensighten/e;->r:Ljava/lang/String;

    .line 1241
    :cond_6
    iget-boolean v2, v13, Lcom/ensighten/e;->n:Z

    if-eqz v2, :cond_7

    iget-boolean v2, v13, Lcom/ensighten/e;->o:Z

    if-nez v2, :cond_7

    .line 1245
    invoke-static {}, Lcom/ensighten/Ensighten;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/ensighten/Utils;->showPrivacyDialog(Landroid/app/Activity;)V

    .line 1247
    :cond_7
    iget-object v2, v13, Lcom/ensighten/e;->b:Lorg/json/JSONObject;

    const-string/jumbo v3, "videoTracking"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, v13, Lcom/ensighten/e;->b:Lorg/json/JSONObject;

    const-string/jumbo v3, "videoTracking"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    :goto_c
    iput-boolean v2, v13, Lcom/ensighten/e;->w:Z

    .line 1248
    iget-object v2, v13, Lcom/ensighten/e;->b:Lorg/json/JSONObject;

    const-string v3, "adTracking"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, v13, Lcom/ensighten/e;->b:Lorg/json/JSONObject;

    const-string v3, "adTracking"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    :goto_d
    iput-boolean v2, v13, Lcom/ensighten/e;->x:Z

    .line 1249
    iget-object v2, v13, Lcom/ensighten/e;->b:Lorg/json/JSONObject;

    const-string v3, "batteryWatchEnabled"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, v13, Lcom/ensighten/e;->b:Lorg/json/JSONObject;

    const-string v3, "batteryWatchEnabled"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    :goto_e
    iput-boolean v2, v13, Lcom/ensighten/e;->z:Z

    .line 1250
    iget-object v2, v13, Lcom/ensighten/e;->b:Lorg/json/JSONObject;

    const-string v3, "batteryWatchLevelDefault"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, v13, Lcom/ensighten/e;->b:Lorg/json/JSONObject;

    const-string v3, "batteryWatchLevelDefault"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    :goto_f
    iput v2, v13, Lcom/ensighten/e;->A:I

    .line 1251
    iget-object v2, v13, Lcom/ensighten/e;->b:Lorg/json/JSONObject;

    const-string v3, "batteryWatchLevelClientPreferred"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, v13, Lcom/ensighten/e;->b:Lorg/json/JSONObject;

    const-string v3, "batteryWatchLevelClientPreferred"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    :goto_10
    iput v2, v13, Lcom/ensighten/e;->B:I

    .line 1254
    iget-object v2, v13, Lcom/ensighten/e;->b:Lorg/json/JSONObject;

    if-eqz v2, :cond_19

    iget-object v2, v13, Lcom/ensighten/e;->b:Lorg/json/JSONObject;

    const-string v3, "classes"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, v13, Lcom/ensighten/e;->b:Lorg/json/JSONObject;

    const-string v3, "classes"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object v4, v2

    .line 1255
    :goto_11
    if-eqz v4, :cond_1a

    .line 1256
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1257
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1258
    iget-object v3, v13, Lcom/ensighten/e;->f:Ljava/util/Map;

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-interface {v3, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1260
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    :goto_12
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1261
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1262
    iget-object v7, v13, Lcom/ensighten/e;->g:Ljava/util/Map;

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    invoke-interface {v7, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1263
    sget-object v7, Lcom/ensighten/a;->d:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, "onCrash"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1264
    invoke-static {}, Lcom/ensighten/Ensighten;->getExceptionManager()Lcom/ensighten/exception/ExceptionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ensighten/exception/ExceptionManager;->b()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_12

    .line 1326
    :catch_0
    move-exception v2

    .line 1327
    invoke-static {}, Lcom/ensighten/i;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1328
    invoke-static {v2}, Lcom/ensighten/i;->c(Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 1218
    :cond_a
    :try_start_2
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    invoke-static {}, Lcom/ensighten/Ensighten;->getStorageManager()Lcom/ensighten/N;

    move-result-object v2

    .line 2457
    iget-object v2, v2, Lcom/ensighten/N;->d:Lcom/ensighten/z;

    .line 3070
    iget-object v2, v2, Lcom/ensighten/z;->a:Ljava/lang/String;

    goto/16 :goto_2

    .line 1219
    :cond_b
    iget-wide v2, v13, Lcom/ensighten/e;->m:J

    goto/16 :goto_3

    .line 1220
    :cond_c
    check-cast v2, Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4

    .line 1221
    :cond_d
    iget v2, v13, Lcom/ensighten/e;->k:I

    goto/16 :goto_5

    .line 1222
    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1223
    :cond_f
    iget v2, v13, Lcom/ensighten/e;->l:I

    goto/16 :goto_7

    .line 1224
    :cond_10
    const-string v2, "api.ensighten.com"

    goto/16 :goto_8

    .line 1228
    :cond_11
    iget-boolean v2, v13, Lcom/ensighten/e;->s:Z

    goto/16 :goto_9

    .line 1233
    :cond_12
    iget-boolean v2, v13, Lcom/ensighten/e;->t:Z

    goto/16 :goto_a

    .line 1234
    :cond_13
    iget-object v2, v13, Lcom/ensighten/e;->q:Ljava/lang/String;

    goto/16 :goto_b

    .line 1247
    :cond_14
    iget-boolean v2, v13, Lcom/ensighten/e;->w:Z

    goto/16 :goto_c

    .line 1248
    :cond_15
    iget-boolean v2, v13, Lcom/ensighten/e;->x:Z

    goto/16 :goto_d

    .line 1249
    :cond_16
    iget-boolean v2, v13, Lcom/ensighten/e;->z:Z

    goto/16 :goto_e

    .line 1250
    :cond_17
    iget v2, v13, Lcom/ensighten/e;->A:I

    goto/16 :goto_f

    .line 1251
    :cond_18
    iget v2, v13, Lcom/ensighten/e;->B:I

    goto/16 :goto_10

    .line 1254
    :cond_19
    const/4 v2, 0x0

    move-object v4, v2

    goto/16 :goto_11

    .line 1271
    :cond_1a
    iget-object v2, v13, Lcom/ensighten/e;->b:Lorg/json/JSONObject;

    if-eqz v2, :cond_1c

    iget-object v2, v13, Lcom/ensighten/e;->b:Lorg/json/JSONObject;

    const-string v3, "notifications"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v2, v13, Lcom/ensighten/e;->b:Lorg/json/JSONObject;

    const-string v3, "notifications"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object v4, v2

    .line 1272
    :goto_13
    if-eqz v4, :cond_1e

    .line 1273
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    :goto_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1274
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1275
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1276
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 1277
    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    :cond_1b
    :goto_15
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1278
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1279
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    invoke-interface {v6, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1280
    const-string v9, "MoviePlayback"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 1282
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 1283
    const-string v10, "keyframe"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1b

    const-string v10, "keyframe"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "keyframe"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 1284
    const-string v10, "keyframe"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "keyframes"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 1285
    iget-object v10, v13, Lcom/ensighten/e;->j:Ljava/util/Map;

    invoke-interface {v10, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 1271
    :cond_1c
    const/4 v2, 0x0

    move-object v4, v2

    goto :goto_13

    .line 1290
    :cond_1d
    iget-object v3, v13, Lcom/ensighten/e;->i:Ljava/util/Map;

    invoke-interface {v3, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    .line 1295
    :cond_1e
    iget-object v2, v13, Lcom/ensighten/e;->b:Lorg/json/JSONObject;

    const-string v3, "modules"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, v13, Lcom/ensighten/e;->b:Lorg/json/JSONObject;

    const-string v3, "modules"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move-object v12, v2

    .line 1296
    :goto_16
    if-nez v12, :cond_21

    const/4 v2, 0x0

    move v11, v2

    .line 1297
    :goto_17
    if-nez v11, :cond_22

    const/4 v2, 0x1

    :goto_18
    iput-boolean v2, v13, Lcom/ensighten/e;->v:Z

    .line 1298
    const/4 v2, 0x0

    move v10, v2

    :goto_19
    if-ge v10, v11, :cond_23

    .line 1299
    invoke-virtual {v12, v10}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/json/JSONObject;

    move-object v9, v0

    .line 1300
    invoke-static {}, Lcom/ensighten/Ensighten;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/ensighten/Ensighten;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    invoke-static {}, Lcom/ensighten/Ensighten;->getStorageManager()Lcom/ensighten/N;

    move-result-object v4

    .line 3473
    iget-object v4, v4, Lcom/ensighten/N;->d:Lcom/ensighten/z;

    .line 4070
    iget-object v4, v4, Lcom/ensighten/z;->a:Ljava/lang/String;

    .line 1300
    const-string v5, "name"

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {}, Lcom/ensighten/Version;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/ensighten/Ensighten;->isAdminMode()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/ensighten/Ensighten;->isTestMode()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v2 .. v8}, Lcom/ensighten/Utils;->buildModuleURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1302
    invoke-static {}, Lcom/ensighten/i;->b()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1303
    const-string v3, "Requested module %s."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "name"

    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ensighten/i;->b(Ljava/lang/String;)V

    .line 1304
    :cond_1f
    new-instance v3, Lcom/ensighten/o;

    invoke-direct {v3}, Lcom/ensighten/o;-><init>()V

    .line 1305
    new-instance v4, Lcom/ensighten/e$1;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, ".*"

    aput-object v7, v5, v6

    invoke-direct {v4, v13, v5}, Lcom/ensighten/e$1;-><init>(Lcom/ensighten/e;[Ljava/lang/String;)V

    .line 1319
    iget-object v5, v13, Lcom/ensighten/e;->u:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1320
    iget-object v5, v13, Lcom/ensighten/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1321
    invoke-virtual {v3, v2, v4}, Lcom/ensighten/o;->a(Ljava/lang/String;Lcom/ensighten/q;)V

    .line 1298
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_19

    .line 1295
    :cond_20
    const/4 v2, 0x0

    move-object v12, v2

    goto/16 :goto_16

    .line 1296
    :cond_21
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v2

    move v11, v2

    goto/16 :goto_17

    .line 1297
    :cond_22
    const/4 v2, 0x0

    goto/16 :goto_18

    .line 1324
    :cond_23
    invoke-static {}, Lcom/ensighten/i;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1325
    const-string v2, "Set the configuration successfully."

    invoke-static {v2}, Lcom/ensighten/i;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 116
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/ensighten/f;->a:Lcom/ensighten/e;

    .line 7411
    iget-object v0, v0, Lcom/ensighten/e;->b:Lorg/json/JSONObject;

    .line 116
    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/ensighten/f;->a()V

    .line 119
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 160
    iget-object v1, p0, Lcom/ensighten/f;->b:Ljava/util/Set;

    monitor-enter v1

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/ensighten/f;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ensighten/f$a;

    .line 162
    invoke-interface {v0}, Lcom/ensighten/f$a;->b()V

    goto :goto_0

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final b(Lorg/json/JSONObject;I)V
    .locals 4

    .prologue
    .line 100
    sget-object v0, Lcom/ensighten/f$1;->a:[I

    add-int/lit8 v1, p2, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 5071
    :cond_0
    :goto_0
    return-void

    .line 102
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/ensighten/f;->a(Lorg/json/JSONObject;I)V

    goto :goto_0

    .line 105
    :pswitch_1
    invoke-virtual {p0}, Lcom/ensighten/f;->a()V

    goto :goto_0

    .line 108
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/ensighten/f;->a(Lorg/json/JSONObject;I)V

    .line 5066
    iget-object v0, p0, Lcom/ensighten/f;->a:Lcom/ensighten/e;

    .line 5438
    iget-boolean v0, v0, Lcom/ensighten/e;->s:Z

    .line 5066
    if-eqz v0, :cond_3

    .line 5067
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5068
    const-string v0, "Saving the configuration."

    invoke-static {v0}, Lcom/ensighten/i;->b(Ljava/lang/String;)V

    .line 5069
    :cond_1
    invoke-static {}, Lcom/ensighten/Ensighten;->getStorageManager()Lcom/ensighten/N;

    move-result-object v1

    .line 5070
    iget-object v0, p0, Lcom/ensighten/f;->a:Lcom/ensighten/e;

    .line 6411
    iget-object v2, v0, Lcom/ensighten/e;->b:Lorg/json/JSONObject;

    .line 5070
    const-string v3, "ensighten"

    .line 7139
    new-instance v0, Lcom/ensighten/N$1;

    invoke-direct {v0, v1, v2, v3}, Lcom/ensighten/N$1;-><init>(Lcom/ensighten/N;Lorg/json/JSONObject;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    instance-of v2, v0, Landroid/os/AsyncTask;

    if-nez v2, :cond_2

    invoke-virtual {v0, v1}, Lcom/ensighten/N$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_2
    check-cast v0, Landroid/os/AsyncTask;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 5072
    :cond_3
    invoke-static {}, Lcom/ensighten/i;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5073
    const-string v0, "Persistent storage is disabled. Failed to save configuration."

    invoke-static {v0}, Lcom/ensighten/i;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
