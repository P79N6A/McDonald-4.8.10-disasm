.class Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$4;
.super Ljava/lang/Object;
.source "PreparePaymentFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->navigateToCheckin(ZLcom/mcdonalds/sdk/modules/storelocator/Store;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mcdonalds/sdk/AsyncListener",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/StoreCapabilties;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;

.field final synthetic val$extras:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;

    .prologue
    .line 548
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$4;->this$0:Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$4;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/models/StoreCapabilties;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 5
    .param p1, "storeCapabilties"    # Lcom/mcdonalds/sdk/modules/models/StoreCapabilties;
    .param p2, "asyncToken"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "e"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v3, 0x1

    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 552
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$4;->this$0:Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->mContinueButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 553
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$4;->this$0:Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;

    const-class v1, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinActivity;

    const-string v2, "ordercheckin"

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$4;->val$extras:Landroid/os/Bundle;

    const/16 v4, 0x14

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->startActivityForResult(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 559
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3

    .prologue
    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 548
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/StoreCapabilties;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$4;->onResponse(Lcom/mcdonalds/sdk/modules/models/StoreCapabilties;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
