.class public Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MenuGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public container:Landroid/widget/RelativeLayout;

.field public favorite:Landroid/widget/ImageView;

.field public image:Landroid/widget/ImageView;

.field public itemNotAvailable:Landroid/widget/LinearLayout;

.field public itemNotAvailableText:Landroid/widget/TextView;

.field public offer:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;

.field public title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;Landroid/view/View;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;
    .param p2, "itemView"    # Landroid/view/View;
    .param p3, "viewType"    # I

    .prologue
    .line 396
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$ViewHolder;->this$0:Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;

    .line 397
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 399
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 400
    const v0, 0x7f110424

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$ViewHolder;->container:Landroid/widget/RelativeLayout;

    .line 401
    const v0, 0x7f110136

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 402
    const v0, 0x7f110063

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    .line 403
    const v0, 0x7f110428

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$ViewHolder;->offer:Landroid/widget/ImageView;

    .line 404
    const v0, 0x7f110429

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$ViewHolder;->favorite:Landroid/widget/ImageView;

    .line 405
    const v0, 0x7f110425

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$ViewHolder;->itemNotAvailable:Landroid/widget/LinearLayout;

    .line 406
    const v0, 0x7f110426

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$ViewHolder;->itemNotAvailableText:Landroid/widget/TextView;

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    if-nez p3, :cond_0

    .line 408
    const v0, 0x7f1100bf

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$ViewHolder;->title:Landroid/widget/TextView;

    goto :goto_0
.end method
