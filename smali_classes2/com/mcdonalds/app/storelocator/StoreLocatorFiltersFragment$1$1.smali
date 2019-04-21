.class Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$1$1;
.super Ljava/lang/Object;
.source "StoreLocatorFiltersFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$1;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$1;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$1;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$1$1;->this$1:Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const-string v2, "run"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$1$1;->this$1:Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$1;

    iget-object v2, v2, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$1;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;->access$000(Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;)Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$FeatureFilterAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$FeatureFilterAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 154
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$1$1;->this$1:Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$1;

    iget-object v2, v2, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$1;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;->access$200(Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;)Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getActiveFilters()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$1$1;->this$1:Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$1;

    iget-object v3, v3, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$1;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;

    invoke-static {v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;->access$000(Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;)Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$FeatureFilterAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$FeatureFilterAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 155
    .local v1, "selected":Z
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$1$1;->this$1:Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$1;

    iget-object v2, v2, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$1;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;->access$100(Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    .end local v1    # "selected":Z
    :cond_0
    return-void
.end method
