.class Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder$1;
.super Ljava/lang/Object;
.source "ProductCustomizationViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder$1;->this$0:Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;

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

    .line 66
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder$1;->this$0:Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;->access$000(Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;)Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationItem;->add()V

    .line 67
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder$1;->this$0:Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;->access$100(Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder$1;->this$0:Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 68
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder$1;->this$0:Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;->access$100(Lcom/mcdonalds/app/ordering/customization/ProductCustomizationViewHolder;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationAdapter;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationAdapter;->changeDataInAdapter()V

    .line 69
    return-void
.end method
