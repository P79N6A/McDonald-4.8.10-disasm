.class Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$3;
.super Ljava/lang/Object;
.source "StoreDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$3;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const-string v0, "onClick"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$3;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Save to favorites"

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$3;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->access$200(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$3;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->access$800(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$3;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0901fa

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 302
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$3;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Remove from favorites"

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$3;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->access$1000(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$3;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    .line 305
    invoke-static {v1}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->access$100(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->Favorites:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$3;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    .line 307
    invoke-static {v3}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->access$900(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)Lcom/mcdonalds/sdk/AsyncListener;

    move-result-object v3

    .line 304
    invoke-interface {v0, v1, v2, v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;->removeStoreFromFavorites(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 314
    :goto_0
    return-void

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$3;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-static {v0, v3}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->access$1100(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;Z)V

    goto :goto_0
.end method
