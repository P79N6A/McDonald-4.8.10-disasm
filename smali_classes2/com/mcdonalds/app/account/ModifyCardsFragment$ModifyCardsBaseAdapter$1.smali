.class Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter$1;
.super Ljava/lang/Object;
.source "ModifyCardsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter$1;->this$1:Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v1, "onClick"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 371
    .local v0, "index":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter$1;->this$1:Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter;

    iget-object v1, v1, Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter;->mPaymentCards:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->setIsValid(Ljava/lang/Boolean;)V

    .line 372
    iget-object v1, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter$1;->this$1:Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter;

    iget-object v1, v1, Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter;->this$0:Lcom/mcdonalds/app/account/ModifyCardsFragment;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v3, v2}, Lcom/mcdonalds/app/account/ModifyCardsFragment;->access$800(Lcom/mcdonalds/app/account/ModifyCardsFragment;ZI)V

    .line 377
    iget-object v1, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter$1;->this$1:Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter;

    iget-object v1, v1, Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter;->this$0:Lcom/mcdonalds/app/account/ModifyCardsFragment;

    invoke-static {v1, v4}, Lcom/mcdonalds/app/account/ModifyCardsFragment;->access$602(Lcom/mcdonalds/app/account/ModifyCardsFragment;Z)Z

    .line 378
    return-void
.end method
