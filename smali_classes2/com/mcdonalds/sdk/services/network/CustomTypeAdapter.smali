.class public interface abstract Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;
.super Ljava/lang/Object;
.source "CustomTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getDeserializer()Ljava/lang/Object;
.end method

.method public abstract getSerializer()Ljava/lang/Object;
.end method

.method public abstract getType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end method
