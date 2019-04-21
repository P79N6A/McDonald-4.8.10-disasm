.class Lcom/mcdonalds/app/ordering/basket/BasketListAdapter$1;
.super Ljava/lang/Object;
.source "BasketListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;

.field final synthetic val$item:Lcom/mcdonalds/app/ordering/basket/BasketListItem;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;Lcom/mcdonalds/app/ordering/basket/BasketListItem;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter$1;->this$0:Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;

    iput-object p2, p0, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter$1;->val$item:Lcom/mcdonalds/app/ordering/basket/BasketListItem;

    iput p3, p0, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-string v0, "onClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter$1;->this$0:Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter$1;->val$item:Lcom/mcdonalds/app/ordering/basket/BasketListItem;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->getBasketItem()Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter$1;->val$position:I

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter$1;->val$item:Lcom/mcdonalds/app/ordering/basket/BasketListItem;

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/basket/BasketListItem;->getPositionInMeal()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;->access$000(Lcom/mcdonalds/app/ordering/basket/BasketListAdapter;Ljava/lang/Object;II)V

    .line 155
    return-void
.end method
