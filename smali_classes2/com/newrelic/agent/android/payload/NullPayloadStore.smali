.class public Lcom/newrelic/agent/android/payload/NullPayloadStore;
.super Ljava/lang/Object;
.source "NullPayloadStore.java"

# interfaces
.implements Lcom/newrelic/agent/android/payload/PayloadStore;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/newrelic/agent/android/payload/PayloadStore",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    .local p0, "this":Lcom/newrelic/agent/android/payload/NullPayloadStore;, "Lcom/newrelic/agent/android/payload/NullPayloadStore<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 24
    .local p0, "this":Lcom/newrelic/agent/android/payload/NullPayloadStore;, "Lcom/newrelic/agent/android/payload/NullPayloadStore<TT;>;"
    return-void
.end method

.method public count()I
    .locals 1

    .prologue
    .line 19
    .local p0, "this":Lcom/newrelic/agent/android/payload/NullPayloadStore;, "Lcom/newrelic/agent/android/payload/NullPayloadStore<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public delete(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lcom/newrelic/agent/android/payload/NullPayloadStore;, "Lcom/newrelic/agent/android/payload/NullPayloadStore<TT;>;"
    .local p1, "payload":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public fetchAll()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 14
    .local p0, "this":Lcom/newrelic/agent/android/payload/NullPayloadStore;, "Lcom/newrelic/agent/android/payload/NullPayloadStore<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public store(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 9
    .local p0, "this":Lcom/newrelic/agent/android/payload/NullPayloadStore;, "Lcom/newrelic/agent/android/payload/NullPayloadStore<TT;>;"
    .local p1, "payload":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    return v0
.end method
