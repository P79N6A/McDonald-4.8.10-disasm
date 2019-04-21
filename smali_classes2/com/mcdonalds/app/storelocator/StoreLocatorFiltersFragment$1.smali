.class Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$1;
.super Ljava/lang/Object;
.source "StoreLocatorFiltersFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;->onResume()V
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
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$1;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 119
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$1;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 7
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncException;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "response":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "onResponse"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    if-nez p3, :cond_3

    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$1;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;

    .line 123
    invoke-virtual {v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 124
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$1;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;

    new-instance v4, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$FeatureFilterAdapter;

    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$1;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;

    invoke-direct {v4, v5}, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$FeatureFilterAdapter;-><init>(Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;)V

    invoke-static {v3, v4}, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;->access$002(Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$FeatureFilterAdapter;)Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$FeatureFilterAdapter;

    .line 125
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 126
    .local v1, "responseArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, -0x1

    .line 127
    .local v0, "indexToRemove":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 128
    .local v2, "s":Ljava/lang/String;
    const-string v4, "ordering"

    invoke-static {v4}, Lcom/mcdonalds/sdk/modules/ModuleManager;->isModuleEnabled(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 129
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$1;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;

    const v6, 0x7f090604

    invoke-virtual {v5, v6}, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 130
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 135
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 136
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 145
    :cond_2
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$1;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;

    invoke-static {v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;->access$000(Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;)Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$FeatureFilterAdapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$FeatureFilterAdapter;->addAll(Ljava/util/Collection;)V

    .line 147
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$1;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;

    invoke-static {v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;->access$100(Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;)Landroid/widget/ListView;

    move-result-object v3

    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$1;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;

    invoke-static {v4}, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;->access$000(Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;)Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$FeatureFilterAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 150
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$1$1;

    invoke-direct {v4, p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$1$1;-><init>(Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$1;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 160
    .end local v0    # "indexToRemove":I
    .end local v1    # "responseArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    return-void
.end method
