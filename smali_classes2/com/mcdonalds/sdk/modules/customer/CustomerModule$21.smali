.class Lcom/mcdonalds/sdk/modules/customer/CustomerModule$21;
.super Ljava/lang/Object;
.source "CustomerModule.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->updateFavoriteProducts(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
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
        "Lcom/mcdonalds/sdk/modules/models/FavoriteItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field final synthetic val$asyncToken:Lcom/mcdonalds/sdk/AsyncToken;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .prologue
    .line 924
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$21;->this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object p2, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$21;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iput-object p3, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$21;->val$asyncToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 924
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$21;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/FavoriteItem;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncException;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "response":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FavoriteItem;>;"
    const/4 v2, 0x0

    .line 927
    if-nez p3, :cond_2

    .line 928
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$21;->this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->access$600(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 929
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$21;->this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->access$600(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setFavoriteItems(Ljava/util/List;)V

    .line 930
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$21;->this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->access$700(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;)V

    .line 931
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$21;->this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->access$200(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mcdonalds/sdk/services/data/provider/Contract$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 932
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 934
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$21;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    if-eqz v0, :cond_1

    .line 935
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$21;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$21;->val$asyncToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-interface {v0, p1, v1, v2}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 942
    :cond_1
    :goto_0
    return-void

    .line 938
    :cond_2
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$21;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    if-eqz v0, :cond_1

    .line 939
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$21;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$21;->val$asyncToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-interface {v0, p1, v1, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method
