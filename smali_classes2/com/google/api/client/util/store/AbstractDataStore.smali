.class public abstract Lcom/google/api/client/util/store/AbstractDataStore;
.super Ljava/lang/Object;
.source "AbstractDataStore.java"

# interfaces
.implements Lcom/google/api/client/util/store/DataStore;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Ljava/io/Serializable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/api/client/util/store/DataStore",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final dataStoreFactory:Lcom/google/api/client/util/store/DataStoreFactory;

.field private final id:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/google/api/client/util/store/DataStoreFactory;Ljava/lang/String;)V
    .locals 1
    .param p1, "dataStoreFactory"    # Lcom/google/api/client/util/store/DataStoreFactory;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 44
    .local p0, "this":Lcom/google/api/client/util/store/AbstractDataStore;, "Lcom/google/api/client/util/store/AbstractDataStore<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/util/store/DataStoreFactory;

    iput-object v0, p0, Lcom/google/api/client/util/store/AbstractDataStore;->dataStoreFactory:Lcom/google/api/client/util/store/DataStoreFactory;

    .line 46
    invoke-static {p2}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/util/store/AbstractDataStore;->id:Ljava/lang/String;

    .line 47
    return-void
.end method
