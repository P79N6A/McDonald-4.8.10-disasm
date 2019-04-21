.class Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$4;
.super Ljava/lang/Object;
.source "OrderDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$4;->this$0:Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;

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

    .line 232
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$4;->this$0:Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->access$400(Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$4;->this$0:Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->access$500(Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$4;->this$0:Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->access$600(Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;)V

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$4;->this$0:Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->access$700(Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;)Lcom/mcdonalds/app/util/FavoriteInputViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->show()V

    .line 237
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$4;->this$0:Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->access$700(Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;)Lcom/mcdonalds/app/util/FavoriteInputViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->getSaveToFavoritesButton()Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$4;->this$0:Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->access$800(Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$4;->this$0:Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->access$700(Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;)Lcom/mcdonalds/app/util/FavoriteInputViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->getCancelToFavoritesButton()Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$4;->this$0:Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->access$900(Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
