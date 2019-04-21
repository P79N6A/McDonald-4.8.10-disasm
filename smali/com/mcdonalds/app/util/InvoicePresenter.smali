.class public interface abstract Lcom/mcdonalds/app/util/InvoicePresenter;
.super Ljava/lang/Object;
.source "InvoicePresenter.java"

# interfaces
.implements Landroid/databinding/Observable;


# virtual methods
.method public abstract getInvoiceEnabled()Z
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation
.end method

.method public abstract getPayer()Ljava/lang/String;
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation
.end method

.method public abstract setInvoiceEnabled(Z)V
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation
.end method

.method public abstract setPayer(Ljava/lang/String;)V
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation
.end method
