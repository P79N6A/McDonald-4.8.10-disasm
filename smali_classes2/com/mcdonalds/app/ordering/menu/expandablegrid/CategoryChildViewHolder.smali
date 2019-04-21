.class public Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryChildViewHolder;
.super Lcom/mcdonalds/app/ordering/menu/expandablegrid/ChildViewHolder;
.source "CategoryChildViewHolder.java"


# instance fields
.field public container:Landroid/widget/RelativeLayout;

.field public favorite:Landroid/widget/ImageView;

.field public image:Landroid/widget/ImageView;

.field public offer:Landroid/widget/ImageView;

.field public title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ChildViewHolder;-><init>(Landroid/view/View;)V

    .line 21
    const v0, 0x7f110424

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryChildViewHolder;->container:Landroid/widget/RelativeLayout;

    .line 22
    const v0, 0x7f110136

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryChildViewHolder;->title:Landroid/widget/TextView;

    .line 23
    const v0, 0x7f110063

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryChildViewHolder;->image:Landroid/widget/ImageView;

    .line 24
    const v0, 0x7f110428

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryChildViewHolder;->offer:Landroid/widget/ImageView;

    .line 25
    const v0, 0x7f110429

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryChildViewHolder;->favorite:Landroid/widget/ImageView;

    .line 26
    return-void
.end method
