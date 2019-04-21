.class Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$2;
.super Ljava/lang/Object;
.source "FavoriteOrderUpdateFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->setUpAddToFavoritesButton(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;

.field final synthetic val$rootView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$2;->this$0:Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$2;->val$rootView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v2, "onClick"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$2;->this$0:Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->access$100(Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 135
    new-instance v0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$2;->this$0:Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$2;->val$rootView:Landroid/view/View;

    invoke-direct {v0, v2, v3}, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 136
    .local v0, "favoriteInputViewHolder":Lcom/mcdonalds/app/util/FavoriteInputViewHolder;
    invoke-virtual {v0}, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->show()V

    .line 137
    invoke-virtual {v0}, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->getSaveToFavoritesButton()Landroid/widget/Button;

    move-result-object v1

    .line 139
    .local v1, "saveToFavoritesButton":Landroid/widget/Button;
    new-instance v2, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$2$1;

    invoke-direct {v2, p0, v0}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$2$1;-><init>(Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$2;Lcom/mcdonalds/app/util/FavoriteInputViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    .end local v0    # "favoriteInputViewHolder":Lcom/mcdonalds/app/util/FavoriteInputViewHolder;
    .end local v1    # "saveToFavoritesButton":Landroid/widget/Button;
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment$2;->this$0:Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;->access$300(Lcom/mcdonalds/app/ordering/menu/FavoriteOrderUpdateFragment;)V

    goto :goto_0
.end method
