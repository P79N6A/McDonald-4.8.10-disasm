.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWWechatInfoData;
.super Ljava/lang/Object;
.source "MWWechatInfoData.java"


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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
