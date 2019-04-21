.class public Lcom/mcdonalds/app/social/SocialLoginViewHolder;
.super Ljava/lang/Object;
.source "SocialLoginViewHolder.java"


# instance fields
.field private mItemsContainer:Landroid/widget/LinearLayout;

.field private mTitle:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "container"    # Landroid/view/View;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/mcdonalds/app/social/SocialLoginViewHolder;->mView:Landroid/view/View;

    .line 21
    iget-object v0, p0, Lcom/mcdonalds/app/social/SocialLoginViewHolder;->mView:Landroid/view/View;

    const v1, 0x7f11051e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/social/SocialLoginViewHolder;->mTitle:Landroid/widget/TextView;

    .line 22
    iget-object v0, p0, Lcom/mcdonalds/app/social/SocialLoginViewHolder;->mView:Landroid/view/View;

    const v1, 0x7f11051f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mcdonalds/app/social/SocialLoginViewHolder;->mItemsContainer:Landroid/widget/LinearLayout;

    .line 23
    return-void
.end method


# virtual methods
.method public getItemsContainer()Landroid/widget/LinearLayout;
    .locals 2

    .prologue
    const-string v0, "getItemsContainer"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    iget-object v0, p0, Lcom/mcdonalds/app/social/SocialLoginViewHolder;->mItemsContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method
