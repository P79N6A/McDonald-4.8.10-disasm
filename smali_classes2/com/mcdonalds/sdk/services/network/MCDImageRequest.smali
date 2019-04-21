.class public Lcom/mcdonalds/sdk/services/network/MCDImageRequest;
.super Lcom/android/volley/toolbox/ImageRequest;
.source "MCDImageRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/sdk/services/network/MCDImageRequest$MCDImageResponseErrorListenerWrapper;,
        Lcom/mcdonalds/sdk/services/network/MCDImageRequest$MCDImageResponseSuccessListenerWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/volley/toolbox/ImageRequest;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/services/network/RequestProvider",
            "<TV;TE;>;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/mcdonalds/sdk/services/network/MCDImageRequest;, "Lcom/mcdonalds/sdk/services/network/MCDImageRequest<TV;TE;>;"
    .local p1, "provider":Lcom/mcdonalds/sdk/services/network/RequestProvider;, "Lcom/mcdonalds/sdk/services/network/RequestProvider<TV;TE;>;"
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<TV;>;"
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 30
    invoke-interface {p1}, Lcom/mcdonalds/sdk/services/network/RequestProvider;->getURLString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/sdk/services/network/MCDImageRequest$MCDImageResponseSuccessListenerWrapper;

    invoke-direct {v2, p2, v5}, Lcom/mcdonalds/sdk/services/network/MCDImageRequest$MCDImageResponseSuccessListenerWrapper;-><init>(Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/services/network/MCDImageRequest$1;)V

    new-instance v6, Lcom/mcdonalds/sdk/services/network/MCDImageRequest$MCDImageResponseErrorListenerWrapper;

    invoke-direct {v6, p2, v5}, Lcom/mcdonalds/sdk/services/network/MCDImageRequest$MCDImageResponseErrorListenerWrapper;-><init>(Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/services/network/MCDImageRequest$1;)V

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/volley/toolbox/ImageRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;IILandroid/graphics/Bitmap$Config;Lcom/android/volley/Response$ErrorListener;)V

    .line 38
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;IILandroid/graphics/Bitmap$Config;Lcom/android/volley/Response$ErrorListener;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "maxWidth"    # I
    .param p4, "maxHeight"    # I
    .param p5, "decodeConfig"    # Landroid/graphics/Bitmap$Config;
    .param p6, "errorListener"    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap$Config;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "this":Lcom/mcdonalds/sdk/services/network/MCDImageRequest;, "Lcom/mcdonalds/sdk/services/network/MCDImageRequest<TV;TE;>;"
    .local p2, "listener":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Landroid/graphics/Bitmap;>;"
    invoke-direct/range {p0 .. p6}, Lcom/android/volley/toolbox/ImageRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;IILandroid/graphics/Bitmap$Config;Lcom/android/volley/Response$ErrorListener;)V

    .line 20
    return-void
.end method
