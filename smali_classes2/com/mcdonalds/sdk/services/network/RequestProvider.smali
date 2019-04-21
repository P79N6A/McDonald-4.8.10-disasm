.class public interface abstract Lcom/mcdonalds/sdk/services/network/RequestProvider;
.super Ljava/lang/Object;
.source "RequestProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;,
        Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getBody()Ljava/lang/String;
.end method

.method public abstract getCustomTypeAdapters()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMethodType()Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;
.end method

.method public abstract getRequestType()Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;
.end method

.method public abstract getResponseClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract getURLString()Ljava/lang/String;
.end method

.method public abstract setBody(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation
.end method

.method public abstract toString()Ljava/lang/String;
.end method
