.class Lcom/mcdonalds/app/account/OfferPreferencesFragment$2;
.super Ljava/lang/Object;
.source "OfferPreferencesFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/account/OfferPreferencesFragment;->onActivityCreated(Landroid/os/Bundle;)V
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
        "Lcom/mcdonalds/sdk/modules/models/OfferCategory;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/account/OfferPreferencesFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/account/OfferPreferencesFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/account/OfferPreferencesFragment;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment$2;->this$0:Lcom/mcdonalds/app/account/OfferPreferencesFragment;

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

    .line 182
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/account/OfferPreferencesFragment$2;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 9
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OfferCategory;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncException;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "response":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OfferCategory;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v4, "onResponse"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v7

    aput-object p2, v5, v8

    const/4 v6, 0x2

    aput-object p3, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    iget-object v4, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment$2;->this$0:Lcom/mcdonalds/app/account/OfferPreferencesFragment;

    invoke-virtual {v4}, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 187
    invoke-static {p1}, Lcom/mcdonalds/app/util/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 188
    iget-object v4, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment$2;->this$0:Lcom/mcdonalds/app/account/OfferPreferencesFragment;

    invoke-static {v4, p1}, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->access$602(Lcom/mcdonalds/app/account/OfferPreferencesFragment;Ljava/util/List;)Ljava/util/List;

    .line 191
    iget-object v4, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment$2;->this$0:Lcom/mcdonalds/app/account/OfferPreferencesFragment;

    invoke-static {v4}, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->access$200(Lcom/mcdonalds/app/account/OfferPreferencesFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 192
    iget-object v4, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment$2;->this$0:Lcom/mcdonalds/app/account/OfferPreferencesFragment;

    invoke-static {v4}, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->access$600(Lcom/mcdonalds/app/account/OfferPreferencesFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/OfferCategory;

    .line 194
    .local v2, "offerCategory":Lcom/mcdonalds/sdk/modules/models/OfferCategory;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OfferCategory;->getId()Ljava/lang/Integer;

    move-result-object v0

    .line 196
    .local v0, "categoryNum":Ljava/lang/Integer;
    new-instance v3, Lcom/mcdonalds/app/account/OfferData;

    invoke-direct {v3}, Lcom/mcdonalds/app/account/OfferData;-><init>()V

    .line 197
    .local v3, "offerData":Lcom/mcdonalds/app/account/OfferData;
    invoke-virtual {v3, v0}, Lcom/mcdonalds/app/account/OfferData;->setId(Ljava/lang/Integer;)V

    .line 198
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OfferCategory;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/mcdonalds/app/account/OfferData;->setDescription(Ljava/lang/String;)V

    .line 200
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/mcdonalds/app/account/OfferData;->setState(Ljava/lang/Boolean;)V

    .line 201
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment$2;->this$0:Lcom/mcdonalds/app/account/OfferPreferencesFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->access$700(Lcom/mcdonalds/app/account/OfferPreferencesFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 202
    iget-object v5, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment$2;->this$0:Lcom/mcdonalds/app/account/OfferPreferencesFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->access$700(Lcom/mcdonalds/app/account/OfferPreferencesFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 203
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/mcdonalds/app/account/OfferData;->setState(Ljava/lang/Boolean;)V

    .line 208
    :cond_0
    iget-object v5, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment$2;->this$0:Lcom/mcdonalds/app/account/OfferPreferencesFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->access$200(Lcom/mcdonalds/app/account/OfferPreferencesFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 201
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 211
    .end local v0    # "categoryNum":Ljava/lang/Integer;
    .end local v1    # "i":I
    .end local v2    # "offerCategory":Lcom/mcdonalds/sdk/modules/models/OfferCategory;
    .end local v3    # "offerData":Lcom/mcdonalds/app/account/OfferData;
    :cond_2
    iget-object v4, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment$2;->this$0:Lcom/mcdonalds/app/account/OfferPreferencesFragment;

    invoke-static {v4}, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->access$200(Lcom/mcdonalds/app/account/OfferPreferencesFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 212
    iget-object v4, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment$2;->this$0:Lcom/mcdonalds/app/account/OfferPreferencesFragment;

    invoke-static {v4}, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->access$300(Lcom/mcdonalds/app/account/OfferPreferencesFragment;)Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter;->notifyDataSetChanged()V

    .line 213
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 214
    iget-object v4, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment$2;->this$0:Lcom/mcdonalds/app/account/OfferPreferencesFragment;

    invoke-static {v4}, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->access$500(Lcom/mcdonalds/app/account/OfferPreferencesFragment;)V

    .line 220
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment$2;->this$0:Lcom/mcdonalds/app/account/OfferPreferencesFragment;

    iget-object v5, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment$2;->this$0:Lcom/mcdonalds/app/account/OfferPreferencesFragment;

    iget-object v5, v5, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isSubscribedToOffers()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->access$800(Lcom/mcdonalds/app/account/OfferPreferencesFragment;Ljava/lang/Boolean;)V

    .line 222
    :cond_4
    return-void

    .line 217
    :cond_5
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    goto :goto_2
.end method
