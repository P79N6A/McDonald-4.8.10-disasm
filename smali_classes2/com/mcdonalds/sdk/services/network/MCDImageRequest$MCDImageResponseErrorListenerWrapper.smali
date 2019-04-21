.class Lcom/mcdonalds/sdk/services/network/MCDImageRequest$MCDImageResponseErrorListenerWrapper;
.super Ljava/lang/Object;
.source "MCDImageRequest.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/services/network/MCDImageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MCDImageResponseErrorListenerWrapper"
.end annotation


# instance fields
.field private final mListener:Lcom/mcdonalds/sdk/AsyncListener;


# direct methods
.method private constructor <init>(Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mcdonalds/sdk/AsyncListener;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/network/MCDImageRequest$MCDImageResponseErrorListenerWrapper;->mListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 58
    return-void
.end method

.method synthetic constructor <init>(Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/services/network/MCDImageRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mcdonalds/sdk/AsyncListener;
    .param p2, "x1"    # Lcom/mcdonalds/sdk/services/network/MCDImageRequest$1;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/services/network/MCDImageRequest$MCDImageResponseErrorListenerWrapper;-><init>(Lcom/mcdonalds/sdk/AsyncListener;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 4
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .prologue
    const/4 v3, 0x0

    .line 62
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/network/MCDImageRequest$MCDImageResponseErrorListenerWrapper;->mListener:Lcom/mcdonalds/sdk/AsyncListener;

    new-instance v1, Lcom/mcdonalds/sdk/AsyncException;

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3, v3, v1}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 63
    return-void
.end method
