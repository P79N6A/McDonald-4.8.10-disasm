.class Lcom/mcdonalds/app/ordering/deliverymethod/ExternalDeliveryView$1;
.super Ljava/lang/Object;
.source "ExternalDeliveryView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/deliverymethod/ExternalDeliveryView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/deliverymethod/ExternalDeliveryView;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/deliverymethod/ExternalDeliveryView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/deliverymethod/ExternalDeliveryView;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/ExternalDeliveryView$1;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/ExternalDeliveryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v7, "onClick"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-static {p0, v7, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v7

    const-string v8, "modules.delivery.deliveryUrls"

    invoke-virtual {v7, v8}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 78
    .local v0, "configMap":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const-string v6, ""

    .line 80
    .local v6, "url":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 82
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getCurrentLanguageTag()Ljava/lang/String;

    move-result-object v5

    .line 84
    .local v5, "languageId":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 86
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 87
    .local v1, "deliveryUrl":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "language"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 89
    .local v4, "language":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 90
    const-string v7, "url"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "url":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 84
    .restart local v6    # "url":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    .end local v1    # "deliveryUrl":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "index":I
    .end local v4    # "language":Ljava/lang/String;
    .end local v5    # "languageId":Ljava/lang/String;
    :cond_1
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 97
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 98
    .local v3, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/deliverymethod/ExternalDeliveryView$1;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/ExternalDeliveryView;

    invoke-virtual {v7}, Lcom/mcdonalds/app/ordering/deliverymethod/ExternalDeliveryView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 100
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_2
    return-void
.end method
