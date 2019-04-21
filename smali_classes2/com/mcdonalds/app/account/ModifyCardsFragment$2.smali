.class Lcom/mcdonalds/app/account/ModifyCardsFragment$2;
.super Ljava/lang/Object;
.source "ModifyCardsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/account/ModifyCardsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/account/ModifyCardsFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/account/ModifyCardsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/account/ModifyCardsFragment;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment$2;->this$0:Lcom/mcdonalds/app/account/ModifyCardsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v1, "onClick"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    const-string v1, "ordering"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 124
    .local v0, "orderingModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    new-instance v1, Lcom/mcdonalds/app/account/ModifyCardsFragment$2$1;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/account/ModifyCardsFragment$2$1;-><init>(Lcom/mcdonalds/app/account/ModifyCardsFragment$2;)V

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getPaymentMethods(Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 143
    return-void
.end method
