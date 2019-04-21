.class Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$1;
.super Ljava/lang/Object;
.source "MealAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->createProductView(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Landroid/view/ViewGroup;IZLcom/mcdonalds/sdk/modules/models/OrderProduct;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;

.field final synthetic val$choice:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;Lcom/mcdonalds/sdk/modules/models/OrderProduct;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;

    .prologue
    .line 534
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$1;->this$0:Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;

    iput-object p2, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$1;->val$choice:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    iput p3, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$1;->val$index:I

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

    .line 537
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$1;->this$0:Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$1;->val$choice:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    iget v2, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$1;->val$index:I

    invoke-static {v0, v1, v2}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->access$000(Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;Lcom/mcdonalds/sdk/modules/models/OrderProduct;I)V

    .line 538
    return-void
.end method
