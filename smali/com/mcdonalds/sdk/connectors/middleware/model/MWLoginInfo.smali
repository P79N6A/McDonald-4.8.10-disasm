.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWLoginInfo;
.super Ljava/lang/Object;
.source "MWLoginInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public accessToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AccessToken"
    .end annotation
.end field

.field public internalID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "InternalID"
    .end annotation
.end field

.field public loginType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "LoginType"
    .end annotation
.end field

.field public password:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Password"
    .end annotation
.end field

.field public socialNetworkId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SocialNetworkID"
    .end annotation
.end field

.field public username:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UserName"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
