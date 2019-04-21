.class Lcom/mcdonalds/app/util/FavoriteInputViewHolder$FavoriteViewAnimationListener;
.super Ljava/lang/Object;
.source "FavoriteInputViewHolder.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/util/FavoriteInputViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FavoriteViewAnimationListener"
.end annotation


# instance fields
.field mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

.field final synthetic this$0:Lcom/mcdonalds/app/util/FavoriteInputViewHolder;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/app/util/FavoriteInputViewHolder;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 0
    .param p2, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder$FavoriteViewAnimationListener;->this$0:Lcom/mcdonalds/app/util/FavoriteInputViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    iput-object p2, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder$FavoriteViewAnimationListener;->mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 349
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v1, "onAnimationEnd"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 357
    iget-object v1, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder$FavoriteViewAnimationListener;->this$0:Lcom/mcdonalds/app/util/FavoriteInputViewHolder;

    invoke-virtual {v1}, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->getFavoriteNameInputEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 358
    .local v0, "favoriteNameInput":Landroid/widget/EditText;
    iget-object v1, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder$FavoriteViewAnimationListener;->mOrderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Product;->getLongName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 359
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 360
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 361
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 362
    iget-object v1, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder$FavoriteViewAnimationListener;->this$0:Lcom/mcdonalds/app/util/FavoriteInputViewHolder;

    invoke-static {v1}, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->access$400(Lcom/mcdonalds/app/util/FavoriteInputViewHolder;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v3}, Lcom/mcdonalds/app/util/UIUtils;->showKeyboard(Landroid/content/Context;Landroid/view/View;Z)V

    .line 363
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const-string v0, "onAnimationRepeat"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 368
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const-string v0, "onAnimationStart"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    return-void
.end method
