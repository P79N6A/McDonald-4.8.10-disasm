.class public interface abstract Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;
.super Ljava/lang/Object;
.source "DashboardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DashboardListener"
.end annotation


# virtual methods
.method public abstract onAlertClicked()V
.end method

.method public abstract onDismissAlertClicked()V
.end method

.method public abstract onGridItemClick(Lcom/mcdonalds/sdk/modules/models/Offer;)V
.end method

.method public abstract onHomeListItemClicked(Lcom/mcdonalds/app/home/HomeListItem;)V
.end method

.method public abstract onListItemClick(Lcom/mcdonalds/sdk/modules/models/Offer;)V
.end method

.method public abstract onOffersTypeSelectorChanged(Landroid/widget/RadioGroup;)V
.end method

.method public abstract onRegisterClick()V
.end method

.method public abstract onRemoveFromBasketClicked(Lcom/mcdonalds/sdk/modules/models/OrderOffer;)V
.end method

.method public abstract onSelectStoreClicked()V
.end method

.method public abstract onSignInClick()V
.end method
