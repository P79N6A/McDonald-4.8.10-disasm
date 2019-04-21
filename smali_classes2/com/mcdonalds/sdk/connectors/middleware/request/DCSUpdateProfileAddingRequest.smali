.class public Lcom/mcdonalds/sdk/connectors/middleware/request/DCSUpdateProfileAddingRequest;
.super Lcom/mcdonalds/sdk/connectors/middleware/request/DCSUpdateProfileRequest;
.source "DCSUpdateProfileAddingRequest.java"


# direct methods
.method public constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;)V
    .locals 0
    .param p1, "profile"    # Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/DCSUpdateProfileRequest;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;)V

    .line 13
    return-void
.end method


# virtual methods
.method public getMethodType()Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;->PUT:Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

    return-object v0
.end method
