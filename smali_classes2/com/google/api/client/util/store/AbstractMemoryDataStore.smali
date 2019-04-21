.class Lcom/google/api/client/util/store/AbstractMemoryDataStore;
.super Lcom/google/api/client/util/store/AbstractDataStore;
.source "AbstractMemoryDataStore.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Ljava/io/Serializable;",
        ">",
        "Lcom/google/api/client/util/store/AbstractDataStore",
        "<TV;>;"
    }
.end annotation


# instance fields
.field keyValueMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private final lock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method protected constructor <init>(Lcom/google/api/client/util/store/DataStoreFactory;Ljava/lang/String;)V
    .locals 1
    .param p1, "dataStoreFactory"    # Lcom/google/api/client/util/store/DataStoreFactory;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 53
    .local p0, "this":Lcom/google/api/client/util/store/AbstractMemoryDataStore;, "Lcom/google/api/client/util/store/AbstractMemoryDataStore<TV;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/api/client/util/store/AbstractDataStore;-><init>(Lcom/google/api/client/util/store/DataStoreFactory;Ljava/lang/String;)V

    .line 43
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/util/store/AbstractMemoryDataStore;->lock:Ljava/util/concurrent/locks/Lock;

    .line 46
    invoke-static {}, Lcom/google/api/client/util/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/util/store/AbstractMemoryDataStore;->keyValueMap:Ljava/util/HashMap;

    .line 54
    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/String;)Ljava/io/Serializable;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lcom/google/api/client/util/store/AbstractMemoryDataStore;, "Lcom/google/api/client/util/store/AbstractMemoryDataStore<TV;>;"
    if-nez p1, :cond_0

    .line 80
    const/4 v0, 0x0

    .line 86
    :goto_0
    return-object v0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/google/api/client/util/store/AbstractMemoryDataStore;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/google/api/client/util/store/AbstractMemoryDataStore;->keyValueMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/google/api/client/util/IOUtils;->deserialize([B)Ljava/io/Serializable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/google/api/client/util/store/AbstractMemoryDataStore;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/api/client/util/store/AbstractMemoryDataStore;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lcom/google/api/client/util/store/AbstractMemoryDataStore;, "Lcom/google/api/client/util/store/AbstractMemoryDataStore<TV;>;"
    iget-object v0, p0, Lcom/google/api/client/util/store/AbstractMemoryDataStore;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/google/api/client/util/store/AbstractMemoryDataStore;->keyValueMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/google/api/client/util/store/AbstractMemoryDataStore;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/api/client/util/store/AbstractMemoryDataStore;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method save()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    .local p0, "this":Lcom/google/api/client/util/store/AbstractMemoryDataStore;, "Lcom/google/api/client/util/store/AbstractMemoryDataStore<TV;>;"
    return-void
.end method

.method public final set(Ljava/lang/String;Ljava/io/Serializable;)Lcom/google/api/client/util/store/DataStore;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TV;)",
            "Lcom/google/api/client/util/store/DataStore",
            "<TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lcom/google/api/client/util/store/AbstractMemoryDataStore;, "Lcom/google/api/client/util/store/AbstractMemoryDataStore<TV;>;"
    .local p2, "value":Ljava/io/Serializable;, "TV;"
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-static {p2}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcom/google/api/client/util/store/AbstractMemoryDataStore;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/google/api/client/util/store/AbstractMemoryDataStore;->keyValueMap:Ljava/util/HashMap;

    invoke-static {p2}, Lcom/google/api/client/util/IOUtils;->serialize(Ljava/lang/Object;)[B

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-virtual {p0}, Lcom/google/api/client/util/store/AbstractMemoryDataStore;->save()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    iget-object v0, p0, Lcom/google/api/client/util/store/AbstractMemoryDataStore;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 100
    return-object p0

    .line 98
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/api/client/util/store/AbstractMemoryDataStore;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    .local p0, "this":Lcom/google/api/client/util/store/AbstractMemoryDataStore;, "Lcom/google/api/client/util/store/AbstractMemoryDataStore<TV;>;"
    invoke-static {p0}, Lcom/google/api/client/util/store/DataStoreUtils;->toString(Lcom/google/api/client/util/store/DataStore;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
