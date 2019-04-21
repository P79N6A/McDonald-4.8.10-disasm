.class public final Lcom/mcdonalds/sdk/services/network/RequestManagerBinder;
.super Landroid/os/Binder;
.source "RequestManagerBinder.java"


# instance fields
.field private final mManager:Lcom/mcdonalds/sdk/services/network/RequestManager;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/sdk/services/network/RequestManager;)V
    .locals 0
    .param p1, "manager"    # Lcom/mcdonalds/sdk/services/network/RequestManager;

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerBinder;->mManager:Lcom/mcdonalds/sdk/services/network/RequestManager;

    .line 23
    return-void
.end method


# virtual methods
.method public getManager()Lcom/mcdonalds/sdk/services/network/RequestManager;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerBinder;->mManager:Lcom/mcdonalds/sdk/services/network/RequestManager;

    return-object v0
.end method
