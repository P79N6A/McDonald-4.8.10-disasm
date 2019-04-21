.class Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$8;
.super Ljava/lang/Object;
.source "StoreDetailsFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    .prologue
    .line 483
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$8;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Boolean;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 5
    .param p1, "success"    # Ljava/lang/Boolean;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "onResponse"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object p2, v3, v0

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 487
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$8;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 489
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 491
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$8;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$8;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-static {v3}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->access$800(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_0
    invoke-static {v2, v0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->access$802(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;Z)Z

    .line 493
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$8;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->access$1300(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$8;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09035d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 494
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$8;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->access$1300(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$8;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    const v2, 0x1030044

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 495
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$8;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->access$1300(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$8;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 497
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$8;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->access$1400(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 498
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$8;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->access$100(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreFavoriteName(Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$8;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->access$1600(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$8;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->access$100(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$8;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$8;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->access$000(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->Current:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    :goto_1
    invoke-static {v1, v0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->access$402(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    .line 505
    :cond_0
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 507
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 491
    goto/16 :goto_0

    .line 502
    :cond_3
    sget-object v0, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->Nearby:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    goto :goto_1
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

    .line 483
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$8;->onResponse(Ljava/lang/Boolean;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
