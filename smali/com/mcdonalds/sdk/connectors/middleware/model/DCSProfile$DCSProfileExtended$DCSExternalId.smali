.class public Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSExternalId;
.super Ljava/lang/Object;
.source "DCSProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DCSExternalId"
.end annotation


# instance fields
.field public activeInd:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "activeInd"
    .end annotation
.end field

.field public appId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "appId"
    .end annotation
.end field

.field public appName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "appName"
    .end annotation
.end field

.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    .prologue
    .line 673
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSExternalId;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
