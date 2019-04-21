.class public Lcom/mcdonalds/app/account/AddressesAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AddressesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/account/AddressesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public address:Landroid/widget/TextView;

.field public checkBox:Lcom/mcdonalds/app/widget/InertCheckBox;

.field public container:Landroid/view/View;

.field public deleteBox:Landroid/widget/CheckBox;

.field public header:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/mcdonalds/app/account/AddressesAdapter;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/app/account/AddressesAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mcdonalds/app/account/AddressesAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/mcdonalds/app/account/AddressesAdapter$ViewHolder;->this$0:Lcom/mcdonalds/app/account/AddressesAdapter;

    .line 185
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 187
    const v0, 0x7f1102f2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/account/AddressesAdapter$ViewHolder;->container:Landroid/view/View;

    .line 188
    const v0, 0x7f1102f3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/mcdonalds/app/account/AddressesAdapter$ViewHolder;->deleteBox:Landroid/widget/CheckBox;

    .line 189
    const v0, 0x7f1102f4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/widget/InertCheckBox;

    iput-object v0, p0, Lcom/mcdonalds/app/account/AddressesAdapter$ViewHolder;->checkBox:Lcom/mcdonalds/app/widget/InertCheckBox;

    .line 190
    const v0, 0x7f11010c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/account/AddressesAdapter$ViewHolder;->header:Landroid/widget/TextView;

    .line 191
    const v0, 0x7f1102f5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/account/AddressesAdapter$ViewHolder;->address:Landroid/widget/TextView;

    .line 192
    return-void
.end method
