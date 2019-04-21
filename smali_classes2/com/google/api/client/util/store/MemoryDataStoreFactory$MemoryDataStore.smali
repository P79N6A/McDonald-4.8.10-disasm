.class Lcom/google/api/client/util/store/MemoryDataStoreFactory$MemoryDataStore;
.super Lcom/google/api/client/util/store/AbstractMemoryDataStore;
.source "MemoryDataStoreFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/util/store/MemoryDataStoreFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MemoryDataStore"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Ljava/io/Serializable;",
        ">",
        "Lcom/google/api/client/util/store/AbstractMemoryDataStore",
        "<TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/api/client/util/store/MemoryDataStoreFactory;Ljava/lang/String;)V
    .locals 0
    .param p1, "dataStore"    # Lcom/google/api/client/util/store/MemoryDataStoreFactory;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 52
    .local p0, "this":Lcom/google/api/client/util/store/MemoryDataStoreFactory$MemoryDataStore;, "Lcom/google/api/client/util/store/MemoryDataStoreFactory$MemoryDataStore<TV;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/api/client/util/store/AbstractMemoryDataStore;-><init>(Lcom/google/api/client/util/store/DataStoreFactory;Ljava/lang/String;)V

    .line 53
    return-void
.end method
