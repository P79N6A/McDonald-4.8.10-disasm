.class Lcom/mcdonalds/sdk/modules/models/OrderProduct$3;
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
        "Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;",
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
    .line 1139
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct$3;->this$0:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;)I
    .locals 2
    .param p1, "left"    # Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    .param p2, "right"    # Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    .prologue
    .line 1142
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getProductCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getProductCode()Ljava/lang/Integer;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1143
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getProductCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getProductCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1151
    :goto_0
    return v0

    .line 1144
    :cond_0
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getChoiceSolution()Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getChoiceSolution()Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1145
    const/4 v0, 0x1

    goto :goto_0

    .line 1146
    :cond_1
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getChoiceSolution()Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getChoiceSolution()Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1147
    const/4 v0, -0x1

    goto :goto_0

    .line 1148
    :cond_2
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getChoiceSolution()Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getChoiceSolution()Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getChoiceSolution()Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getProductCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getChoiceSolution()Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getProductCode()Ljava/lang/Integer;

    move-result-object v1

    if-eq v0, v1, :cond_3

    .line 1149
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getChoiceSolution()Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getProductCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getChoiceSolution()Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getProductCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 1151
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1139
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    check-cast p2, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    invoke-virtual {p0, p1, p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct$3;->compare(Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;)I

    move-result v0

    return v0
.end method
