.class Lcom/mcdonalds/sdk/services/network/MCDImageRequest$MCDImageResponseSuccessListenerWrapper;
.super Ljava/lang/Object;
.source "MCDImageRequest.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/services/network/MCDImageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MCDImageResponseSuccessListenerWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final mListener:Lcom/mcdonalds/sdk/AsyncListener;


# direct methods
.method private constructor <init>(Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mcdonalds/sdk/AsyncListener;

    .prologue
    .line 43
    .local p0, "this":Lcom/mcdonalds/sdk/services/network/MCDImageRequest$MCDImageResponseSuccessListenerWrapper;, "Lcom/mcdonalds/sdk/services/network/MCDImageRequest$MCDImageResponseSuccessListenerWrapper<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/network/MCDImageRequest$MCDImageResponseSuccessListenerWrapper;->mListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/services/network/MCDImageRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mcdonalds/sdk/AsyncListener;
    .param p2, "x1"    # Lcom/mcdonalds/sdk/services/network/MCDImageRequest$1;

    .prologue
    .line 40
    .local p0, "this":Lcom/mcdonalds/sdk/services/network/MCDImageRequest$MCDImageResponseSuccessListenerWrapper;, "Lcom/mcdonalds/sdk/services/network/MCDImageRequest$MCDImageResponseSuccessListenerWrapper<TV;>;"
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/services/network/MCDImageRequest$MCDImageResponseSuccessListenerWrapper;-><init>(Lcom/mcdonalds/sdk/AsyncListener;)V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/mcdonalds/sdk/services/network/MCDImageRequest$MCDImageResponseSuccessListenerWrapper;, "Lcom/mcdonalds/sdk/services/network/MCDImageRequest$MCDImageResponseSuccessListenerWrapper<TV;>;"
    .local p1, "response":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    .line 49
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/network/MCDImageRequest$MCDImageResponseSuccessListenerWrapper;->mListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v0, p1, v1, v1}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 50
    return-void
.end method
