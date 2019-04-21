.class public Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$MealItemData;
.super Ljava/lang/Object;
.source "MealAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MealItemData"
.end annotation


# instance fields
.field public choiceIndex:I

.field public choiceProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

.field public isChoice:Z

.field public product:Lcom/mcdonalds/sdk/modules/models/OrderProduct;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 3
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    .line 732
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$MealItemData;-><init>(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;IZ)V

    .line 733
    return-void
.end method

.method public constructor <init>(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;IZ)V
    .locals 0
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p2, "choiceProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p3, "choiceIndex"    # I
    .param p4, "isChoice"    # Z

    .prologue
    .line 724
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 725
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$MealItemData;->product:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 726
    iput-object p2, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$MealItemData;->choiceProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 727
    iput p3, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$MealItemData;->choiceIndex:I

    .line 728
    iput-boolean p4, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$MealItemData;->isChoice:Z

    .line 729
    return-void
.end method
