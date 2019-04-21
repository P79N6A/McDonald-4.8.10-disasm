.class Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$7;
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
    .line 456
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$7;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Boolean;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 6
    .param p1, "success"    # Ljava/lang/Boolean;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "onResponse"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p2, v2, v5

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 460
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$7;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 461
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 463
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$7;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-static {v1, v5}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->access$802(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;Z)Z

    .line 467
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$7;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->access$1300(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$7;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0906a0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 468
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$7;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->access$1300(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x1030046

    invoke-virtual {v1, v0, v2}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 469
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$7;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->access$1300(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$7;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 471
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$7;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->access$1400(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 472
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$7;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->access$100(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$7;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->access$1500(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreFavoriteName(Ljava/lang/String;)V

    .line 474
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$7;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->access$1600(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$7;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->access$1500(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$7;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    sget-object v2, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->Favorites:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    invoke-static {v1, v2}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->access$402(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    .line 478
    :cond_0
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 480
    :cond_1
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

    .line 456
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$7;->onResponse(Ljava/lang/Boolean;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
