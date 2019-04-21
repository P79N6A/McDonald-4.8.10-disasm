.class public Lcom/mcdonalds/sdk/connectors/middleware/response/DCSGetProfileDetails;
.super Ljava/lang/Object;
.source "DCSGetProfileDetails.java"


# instance fields
.field public languageCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "languageCode"
    .end annotation
.end field

.field public marketCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "marketCode"
    .end annotation
.end field

.field public profile:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "profile"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
