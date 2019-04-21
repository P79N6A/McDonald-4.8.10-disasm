.class Lcom/mcdonalds/sdk/modules/models/OrderProduct$2;
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
        "Lcom/mcdonalds/sdk/modules/models/Choice;",
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
    .line 1123
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct$2;->this$0:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/mcdonalds/sdk/modules/models/Choice;Lcom/mcdonalds/sdk/modules/models/Choice;)I
    .locals 2
    .param p1, "left"    # Lcom/mcdonalds/sdk/modules/models/Choice;
    .param p2, "right"    # Lcom/mcdonalds/sdk/modules/models/Choice;

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct$2;->this$0:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->access$000(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1127
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct$2;->this$0:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->access$000(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 1135
    :goto_0
    return v0

    .line 1128
    :cond_0
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1129
    const/4 v0, 0x1

    goto :goto_0

    .line 1130
    :cond_1
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1131
    const/4 v0, -0x1

    goto :goto_0

    .line 1132
    :cond_2
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getBaseProductCode()I

    move-result v0

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getBaseProductCode()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 1133
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getBaseProductCode()I

    move-result v0

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getBaseProductCode()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 1135
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1123
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/Choice;

    check-cast p2, Lcom/mcdonalds/sdk/modules/models/Choice;

    invoke-virtual {p0, p1, p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct$2;->compare(Lcom/mcdonalds/sdk/modules/models/Choice;Lcom/mcdonalds/sdk/modules/models/Choice;)I

    move-result v0

    return v0
.end method
