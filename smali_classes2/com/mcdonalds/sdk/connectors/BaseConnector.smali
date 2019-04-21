.class public Lcom/mcdonalds/sdk/connectors/BaseConnector;
.super Ljava/lang/Object;
.source "BaseConnector.java"


# instance fields
.field private mConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/BaseConnector;->mContext:Landroid/content/Context;

    .line 19
    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/BaseConnector;->mConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/BaseConnector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/BaseConnector;->mConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    return-object v0
.end method

.method public setConnection(Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;)V
    .locals 0
    .param p1, "connection"    # Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/BaseConnector;->mConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    .line 32
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/BaseConnector;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method
