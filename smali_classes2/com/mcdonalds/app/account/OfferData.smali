.class public Lcom/mcdonalds/app/account/OfferData;
.super Ljava/lang/Object;
.source "OfferData.java"


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mId:Ljava/lang/Integer;

.field private mState:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getDescription"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    iget-object v0, p0, Lcom/mcdonalds/app/account/OfferData;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 2

    .prologue
    const-string v0, "getId"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    iget-object v0, p0, Lcom/mcdonalds/app/account/OfferData;->mId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getState()Ljava/lang/Boolean;
    .locals 2

    .prologue
    const-string v0, "getState"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lcom/mcdonalds/app/account/OfferData;->mState:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 3
    .param p1, "mDescription"    # Ljava/lang/String;

    .prologue
    const-string v0, "setDescription"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    iput-object p1, p0, Lcom/mcdonalds/app/account/OfferData;->mDescription:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "mId"    # Ljava/lang/Integer;

    .prologue
    const-string v0, "setId"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    iput-object p1, p0, Lcom/mcdonalds/app/account/OfferData;->mId:Ljava/lang/Integer;

    .line 24
    return-void
.end method

.method public setState(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "mState"    # Ljava/lang/Boolean;

    .prologue
    const-string v0, "setState"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    iput-object p1, p0, Lcom/mcdonalds/app/account/OfferData;->mState:Ljava/lang/Boolean;

    .line 40
    return-void
.end method
