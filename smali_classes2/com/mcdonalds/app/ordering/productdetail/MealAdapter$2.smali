.class Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$2;
.super Ljava/lang/Object;
.source "MealAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->setCustomizationButton(Lcom/mcdonalds/sdk/modules/models/OrderProduct;ILcom/mcdonalds/app/ordering/ProductDetailsItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;

.field final synthetic val$index:I

.field final synthetic val$product:Lcom/mcdonalds/sdk/modules/models/OrderProduct;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;Lcom/mcdonalds/sdk/modules/models/OrderProduct;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;

    .prologue
    .line 582
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$2;->this$0:Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;

    iput-object p2, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$2;->val$product:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    iput p3, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$2;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v0, "onClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 585
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$2;->this$0:Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$2;->val$product:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    iget v2, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$2;->val$index:I

    invoke-static {v0, v1, v2}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->access$100(Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;Lcom/mcdonalds/sdk/modules/models/OrderProduct;I)V

    .line 586
    return-void
.end method
