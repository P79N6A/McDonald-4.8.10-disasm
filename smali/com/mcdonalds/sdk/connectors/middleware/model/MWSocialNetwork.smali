.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialNetwork;
.super Ljava/lang/Object;
.source "MWSocialNetwork.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public customData:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CustomData"
    .end annotation
.end field

.field public isValid:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsValid"
    .end annotation
.end field

.field public socialNetworkID:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SocialNetworkID"
    .end annotation
.end field

.field public socialNetworkName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SocialNetworkName"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toSocialNetwork(Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialNetwork;)Lcom/mcdonalds/sdk/modules/models/SocialNetwork;
    .locals 1
    .param p0, "socialNetwork"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialNetwork;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialNetwork;->toSocialNetwork()Lcom/mcdonalds/sdk/modules/models/SocialNetwork;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public toSocialNetwork()Lcom/mcdonalds/sdk/modules/models/SocialNetwork;
    .locals 4

    .prologue
    .line 27
    const/4 v0, 0x0

    .line 28
    .local v0, "socialNetwork":Lcom/mcdonalds/sdk/modules/models/SocialNetwork;
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialNetwork;->socialNetworkID:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    .line 29
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialNetwork;->socialNetworkID:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialNetwork;->socialNetworkID:Ljava/lang/Integer;

    .line 30
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 33
    .local v1, "type":I
    :goto_0
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;

    .end local v0    # "socialNetwork":Lcom/mcdonalds/sdk/modules/models/SocialNetwork;
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialNetwork;->socialNetworkID:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v2, v1}, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;-><init>(II)V

    .line 34
    .restart local v0    # "socialNetwork":Lcom/mcdonalds/sdk/modules/models/SocialNetwork;
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialNetwork;->socialNetworkName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->setSocialNetworkName(Ljava/lang/String;)V

    .line 35
    iget-boolean v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialNetwork;->isValid:Z

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->setValid(Z)V

    .line 37
    .end local v1    # "type":I
    :cond_0
    return-object v0

    .line 30
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method
