.class Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ViewHolderImpl;
.super Ljava/lang/Object;
.source "ExpandableListItemAdapter.java"

# interfaces
.implements Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ViewHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolderImpl"
.end annotation


# instance fields
.field private contentParent:Landroid/view/ViewGroup;

.field private contentView:Landroid/view/View;

.field private titleParent:Landroid/view/ViewGroup;

.field private titleView:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$1;

    .prologue
    .line 466
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ViewHolderImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentParent()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    const-string v0, "getContentParent"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 481
    iget-object v0, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ViewHolderImpl;->contentParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 2

    .prologue
    const-string v0, "getContentView"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 497
    iget-object v0, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ViewHolderImpl;->contentView:Landroid/view/View;

    return-object v0
.end method

.method public getTitleParent()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    const-string v0, "getTitleParent"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 473
    iget-object v0, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ViewHolderImpl;->titleParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getTitleView()Landroid/view/View;
    .locals 2

    .prologue
    const-string v0, "getTitleView"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 489
    iget-object v0, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ViewHolderImpl;->titleView:Landroid/view/View;

    return-object v0
.end method

.method public setContentParent(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "contentParent"    # Landroid/view/ViewGroup;

    .prologue
    const-string v0, "setContentParent"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 485
    iput-object p1, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ViewHolderImpl;->contentParent:Landroid/view/ViewGroup;

    .line 486
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 3
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    const-string v0, "setContentView"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 501
    iput-object p1, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ViewHolderImpl;->contentView:Landroid/view/View;

    .line 502
    return-void
.end method

.method public setTitleParent(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "titleParent"    # Landroid/view/ViewGroup;

    .prologue
    const-string v0, "setTitleParent"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 477
    iput-object p1, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ViewHolderImpl;->titleParent:Landroid/view/ViewGroup;

    .line 478
    return-void
.end method

.method public setTitleView(Landroid/view/View;)V
    .locals 3
    .param p1, "titleView"    # Landroid/view/View;

    .prologue
    const-string v0, "setTitleView"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 493
    iput-object p1, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ViewHolderImpl;->titleView:Landroid/view/View;

    .line 494
    return-void
.end method
