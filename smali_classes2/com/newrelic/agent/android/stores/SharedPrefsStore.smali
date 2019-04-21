.class public abstract Lcom/newrelic/agent/android/stores/SharedPrefsStore;
.super Ljava/lang/Object;
.source "SharedPrefsStore.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field protected static final ENCODING:Ljava/nio/charset/Charset;

.field protected static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# instance fields
.field protected final sharedPrefs:Landroid/content/SharedPreferences;

.field protected final storeFilename:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/stores/SharedPrefsStore;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    .line 23
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    sput-object v0, Lcom/newrelic/agent/android/stores/SharedPrefsStore;->ENCODING:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storeFilename"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/stores/SharedPrefsStore;->sharedPrefs:Landroid/content/SharedPreferences;

    .line 30
    iput-object p2, p0, Lcom/newrelic/agent/android/stores/SharedPrefsStore;->storeFilename:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method protected applyOrCommitEditor(Landroid/content/SharedPreferences$Editor;)Z
    .locals 4
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    .line 178
    const/4 v1, 0x1

    .line 180
    .local v1, "result":Z
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-ge v2, v3, :cond_0

    .line 181
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    .line 189
    :goto_0
    return v1

    .line 183
    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/newrelic/agent/android/stores/SharedPrefsStore;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v3, "SharedPrefsStore.applyOrCommitEditor(SharedPreferences.Editor): "

    invoke-interface {v2, v3, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 118
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :try_start_1
    iget-object v2, p0, Lcom/newrelic/agent/android/stores/SharedPrefsStore;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 120
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 121
    invoke-virtual {p0, v1}, Lcom/newrelic/agent/android/stores/SharedPrefsStore;->applyOrCommitEditor(Landroid/content/SharedPreferences$Editor;)Z

    .line 122
    monitor-exit p0

    .line 126
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 122
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/newrelic/agent/android/stores/SharedPrefsStore;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v3, "SharedPrefsStore.clear(): "

    invoke-interface {v2, v3, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public count()I
    .locals 3

    .prologue
    .line 105
    :try_start_0
    iget-object v2, p0, Lcom/newrelic/agent/android/stores/SharedPrefsStore;->sharedPrefs:Landroid/content/SharedPreferences;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :try_start_1
    iget-object v1, p0, Lcom/newrelic/agent/android/stores/SharedPrefsStore;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    monitor-exit v2

    .line 113
    :goto_0
    return v1

    .line 107
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/newrelic/agent/android/stores/SharedPrefsStore;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "SharedPrefsStore.count(): "

    invoke-interface {v1, v2, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected decodeBytesToString([B)Ljava/lang/String;
    .locals 3
    .param p1, "decodedString"    # [B

    .prologue
    .line 162
    :try_start_0
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/newrelic/agent/android/stores/SharedPrefsStore;->ENCODING:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    return-object v1

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/newrelic/agent/android/stores/SharedPrefsStore;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "SharedPrefsStore.decodeBytesToString(byte[]): "

    invoke-interface {v1, v2, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected decodeStringToBytes(Ljava/lang/String;)[B
    .locals 3
    .param p1, "encodedString"    # Ljava/lang/String;

    .prologue
    .line 152
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 157
    :goto_0
    return-object v1

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/newrelic/agent/android/stores/SharedPrefsStore;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "SharedPrefsStore.decodeStringToBytes(String): "

    invoke-interface {v1, v2, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public delete(Ljava/lang/String;)V
    .locals 4
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 130
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :try_start_1
    iget-object v2, p0, Lcom/newrelic/agent/android/stores/SharedPrefsStore;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 132
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 133
    invoke-virtual {p0, v1}, Lcom/newrelic/agent/android/stores/SharedPrefsStore;->applyOrCommitEditor(Landroid/content/SharedPreferences$Editor;)Z

    .line 134
    monitor-exit p0

    .line 138
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 134
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/newrelic/agent/android/stores/SharedPrefsStore;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v3, "SharedPrefsStore.delete(): "

    invoke-interface {v2, v3, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected encodeBytes([B)Ljava/lang/String;
    .locals 3
    .param p1, "bytes"    # [B

    .prologue
    .line 142
    const/4 v1, 0x2

    :try_start_0
    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 147
    :goto_0
    return-object v1

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/newrelic/agent/android/stores/SharedPrefsStore;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "SharedPrefsStore.encodeBytes(byte[]): "

    invoke-interface {v1, v2, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public fetchAll()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v1, "objectList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :try_start_1
    iget-object v3, p0, Lcom/newrelic/agent/android/stores/SharedPrefsStore;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 94
    .local v2, "objectStrings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 95
    monitor-exit p0

    .line 100
    .end local v2    # "objectStrings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    :goto_0
    return-object v1

    .line 95
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/newrelic/agent/android/stores/SharedPrefsStore;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v4, "SharedPrefsStore.fetchAll(): "

    invoke-interface {v3, v4, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getAll()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 77
    .local v1, "objectList":Ljava/util/Map;
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :try_start_1
    iget-object v2, p0, Lcom/newrelic/agent/android/stores/SharedPrefsStore;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 79
    monitor-exit p0

    .line 84
    :goto_0
    return-object v1

    .line 79
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/newrelic/agent/android/stores/SharedPrefsStore;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v3, "SharedPrefsStore.fetchAll(): "

    invoke-interface {v2, v3, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getStoreFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/newrelic/agent/android/stores/SharedPrefsStore;->storeFilename:Ljava/lang/String;

    return-object v0
.end method

.method public store(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "string"    # Ljava/lang/String;

    .prologue
    .line 63
    :try_start_0
    iget-object v2, p0, Lcom/newrelic/agent/android/stores/SharedPrefsStore;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 64
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 65
    invoke-virtual {p0, v1}, Lcom/newrelic/agent/android/stores/SharedPrefsStore;->applyOrCommitEditor(Landroid/content/SharedPreferences$Editor;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 70
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v2

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/newrelic/agent/android/stores/SharedPrefsStore;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v3, "SharedPrefsStore.store(String, String): "

    invoke-interface {v2, v3, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public store(Ljava/lang/String;Ljava/util/Set;)Z
    .locals 4
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 51
    .local p2, "stringSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    iget-object v2, p0, Lcom/newrelic/agent/android/stores/SharedPrefsStore;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 52
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 53
    invoke-virtual {p0, v1}, Lcom/newrelic/agent/android/stores/SharedPrefsStore;->applyOrCommitEditor(Landroid/content/SharedPreferences$Editor;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 58
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v2

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/newrelic/agent/android/stores/SharedPrefsStore;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v3, "SharedPrefsStore.store(String, Set<String>): "

    invoke-interface {v2, v3, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public store(Ljava/lang/String;[B)Z
    .locals 4
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "bytes"    # [B

    .prologue
    .line 39
    :try_start_0
    iget-object v2, p0, Lcom/newrelic/agent/android/stores/SharedPrefsStore;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 40
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p0, p2}, Lcom/newrelic/agent/android/stores/SharedPrefsStore;->decodeBytesToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 41
    invoke-virtual {p0, v1}, Lcom/newrelic/agent/android/stores/SharedPrefsStore;->applyOrCommitEditor(Landroid/content/SharedPreferences$Editor;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 46
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v2

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/newrelic/agent/android/stores/SharedPrefsStore;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v3, "SharedPrefsStore.store(String, byte[]): "

    invoke-interface {v2, v3, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    const/4 v2, 0x0

    goto :goto_0
.end method
