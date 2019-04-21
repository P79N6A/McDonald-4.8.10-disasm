.class Lcom/mcdonalds/app/widget/CollectionView$EmptyView;
.super Landroid/view/View;
.source "CollectionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/widget/CollectionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyView"
.end annotation


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 279
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 280
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/mcdonalds/app/widget/CollectionView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/mcdonalds/app/widget/CollectionView$1;

    .prologue
    .line 277
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/widget/CollectionView$EmptyView;-><init>(Landroid/content/Context;)V

    return-void
.end method
