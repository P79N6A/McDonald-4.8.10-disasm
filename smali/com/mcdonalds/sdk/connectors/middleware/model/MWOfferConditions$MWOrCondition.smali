.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions$MWOrCondition;
.super Ljava/lang/Object;
.source "MWOfferConditions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MWOrCondition"
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

.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions$MWOrCondition;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
