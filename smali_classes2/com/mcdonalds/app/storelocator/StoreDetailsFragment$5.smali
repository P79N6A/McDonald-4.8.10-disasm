.class Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$5;
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
    .line 325
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$5;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v5, "onClick"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://maps.google.com/maps?f=d&daddr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$5;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-static {v6}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->access$100(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$5;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-static {v6}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->access$100(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&dirflg=d"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 330
    .local v4, "uri":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v5

    const-string v6, "connectors.Middleware.country"

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 331
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v5

    const-string v6, "connectors.Middleware.country"

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 332
    .local v0, "country":Ljava/lang/String;
    const-string v5, "CN"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 333
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "geo:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$5;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-static {v6}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->access$100(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$5;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-static {v6}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->access$100(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 336
    .end local v0    # "country":Ljava/lang/String;
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 339
    .local v2, "intent":Landroid/content/Intent;
    :try_start_0
    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$5;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-virtual {v5, v2}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :goto_0
    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$5;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-virtual {v5}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Get directions"

    invoke-static {v5, v6}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    return-void

    .line 340
    :catch_0
    move-exception v1

    .line 342
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 343
    .local v3, "unrestrictedIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$5;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-virtual {v5, v3}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 344
    .end local v3    # "unrestrictedIntent":Landroid/content/Intent;
    :catch_1
    move-exception v5

    goto :goto_0
.end method
