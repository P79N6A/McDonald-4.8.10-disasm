.class public interface abstract Lcom/mcdonalds/app/home/HomeListAdapter$HomeListAdapterListener;
.super Ljava/lang/Object;
.source "HomeListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/home/HomeListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HomeListAdapterListener"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract onGridItemClick(Lcom/mcdonalds/sdk/modules/models/Offer;)V
.end method

.method public abstract onOffersTypeSelectorChanged(Landroid/widget/RadioGroup;)V
.end method

.method public abstract onRegisterClick()V
.end method

.method public abstract onRemoveFromBasketClicked(Lcom/mcdonalds/sdk/modules/models/OrderOffer;)V
.end method

.method public abstract onSignInClick()V
.end method
