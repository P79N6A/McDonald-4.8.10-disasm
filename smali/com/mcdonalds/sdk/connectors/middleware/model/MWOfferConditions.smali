.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions;
.super Ljava/lang/Object;
.source "MWOfferConditions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions$MWSaleAmountCondition;,
        Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions$MWHourOfDayCondition;,
        Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions$MWAndCondition;,
        Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions$MWOrCondition;
    }
.end annotation


# instance fields
.field public andConditions:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AndConditions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions$MWAndCondition;",
            ">;"
        }
    .end annotation
.end field

.field public orConditions:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OrConditions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions$MWOrCondition;",
            ">;"
        }
    .end annotation
.end field

.field public podConditions:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PodConditions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public saleAmountConditions:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SaleAmountConditions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions$MWSaleAmountCondition;",
            ">;"
        }
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
