.class public Lcom/mcdonalds/sdk/modules/customer/OptIn;
.super Lcom/mcdonalds/sdk/modules/AppModel;
.source "OptIn.java"


# instance fields
.field private mAcceptanceTimestamp:Ljava/lang/String;

.field private mStatus:Ljava/lang/Boolean;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getAcceptanceTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/OptIn;->mAcceptanceTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/OptIn;->mStatus:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/OptIn;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public setAcceptanceTimestamp(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAcceptanceTimestamp"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/OptIn;->mAcceptanceTimestamp:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setStatus(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/Boolean;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/OptIn;->mStatus:Ljava/lang/Boolean;

    .line 28
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/OptIn;->mType:Ljava/lang/String;

    .line 20
    return-void
.end method
