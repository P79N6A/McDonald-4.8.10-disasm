.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions$MWHourOfDayCondition;
.super Ljava/lang/Object;
.source "MWOfferConditions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MWHourOfDayCondition"
.end annotation


# instance fields
.field public from:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "from"
    .end annotation
.end field

.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions;

.field public to:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "to"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions$MWHourOfDayCondition;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
