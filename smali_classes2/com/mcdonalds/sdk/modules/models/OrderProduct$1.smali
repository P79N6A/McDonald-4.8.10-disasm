.class Lcom/mcdonalds/sdk/modules/models/OrderProduct$1;
.super Ljava/lang/Object;
.source "OrderProduct.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/modules/models/OrderProduct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/modules/models/OrderProduct;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    .line 1109
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct$1;->this$0:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)I
    .locals 4
    .param p1, "left"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p2, "right"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    .line 1112
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getBaseProductCode()I

    move-result v0

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getBaseProductCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1113
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getBaseProductCode()I

    move-result v0

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getBaseProductCode()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1119
    :goto_0
    return v0

    .line 1114
    :cond_0
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;->EatIn:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    invoke-virtual {p1, v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getTotalPrice(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)D

    move-result-wide v0

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;->EatIn:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    invoke-virtual {p2, v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getTotalPrice(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/utils/SDKUtils;->doubleEquals(DD)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1115
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;->EatIn:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    invoke-virtual {p1, v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getTotalPrice(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)D

    move-result-wide v0

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;->EatIn:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    invoke-virtual {p2, v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getTotalPrice(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)D

    move-result-wide v2

    sub-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1116
    :cond_2
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 1117
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 1119
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1109
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    check-cast p2, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {p0, p1, p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct$1;->compare(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)I

    move-result v0

    return v0
.end method
