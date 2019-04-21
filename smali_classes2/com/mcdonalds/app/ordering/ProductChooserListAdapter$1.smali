.class Lcom/mcdonalds/app/ordering/ProductChooserListAdapter$1;
.super Ljava/lang/Object;
.source "ProductChooserListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;

.field final synthetic val$ingredient:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;Lcom/mcdonalds/sdk/modules/models/OrderProduct;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter$1;->this$0:Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;

    iput-object p2, p0, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter$1;->val$ingredient:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    iput p3, p0, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-string v0, "onClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter$1;->this$0:Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter$1;->val$ingredient:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    iget v2, p0, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter$1;->val$position:I

    invoke-static {v0, v1, v2}, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;->access$000(Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;Lcom/mcdonalds/sdk/modules/models/OrderProduct;I)V

    .line 226
    return-void
.end method
