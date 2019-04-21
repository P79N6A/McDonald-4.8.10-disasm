.class public Lcom/mcdonalds/app/widget/CheckableRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "CheckableRelativeLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/widget/CheckableRelativeLayout$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mChecked:Z

.field private mOnCheckedChangeListener:Lcom/mcdonalds/app/widget/CheckableRelativeLayout$OnCheckedChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 2

    .prologue
    const-string v0, "isChecked"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    iget-boolean v0, p0, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->mChecked:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 5
    .param p1, "extraSpace"    # I

    .prologue
    const-string v1, "onCreateDrawableState"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/RelativeLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 80
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    sget-object v1, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->mergeDrawableStates([I[I)[I

    .line 83
    :cond_0
    return-object v0
.end method

.method public setChecked(Z)V
    .locals 6
    .param p1, "checked"    # Z

    .prologue
    const-string v2, "setChecked"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iput-boolean p1, p0, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->mChecked:Z

    .line 53
    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->refreshDrawableState()V

    .line 55
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 56
    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, "child":Landroid/view/View;
    instance-of v2, v0, Landroid/widget/Checkable;

    if-eqz v2, :cond_0

    .line 58
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "child":Landroid/view/View;
    iget-boolean v2, p0, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->mChecked:Z

    invoke-interface {v0, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 55
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->mOnCheckedChangeListener:Lcom/mcdonalds/app/widget/CheckableRelativeLayout$OnCheckedChangeListener;

    if-eqz v2, :cond_2

    .line 63
    iget-object v2, p0, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->mOnCheckedChangeListener:Lcom/mcdonalds/app/widget/CheckableRelativeLayout$OnCheckedChangeListener;

    iget-boolean v3, p0, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->mChecked:Z

    invoke-interface {v2, p0, v3}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout$OnCheckedChangeListener;->onCheckedChanged(Lcom/mcdonalds/app/widget/CheckableRelativeLayout;Z)V

    .line 65
    :cond_2
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/mcdonalds/app/widget/CheckableRelativeLayout$OnCheckedChangeListener;)V
    .locals 3
    .param p1, "onCheckedChangeListener"    # Lcom/mcdonalds/app/widget/CheckableRelativeLayout$OnCheckedChangeListener;

    .prologue
    const-string v0, "setOnCheckedChangeListener"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    iput-object p1, p0, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->mOnCheckedChangeListener:Lcom/mcdonalds/app/widget/CheckableRelativeLayout$OnCheckedChangeListener;

    .line 40
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 3
    .param p1, "l"    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const-string v0, "setOnClickListener"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    new-instance v0, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;

    invoke-direct {v0, p1}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    return-void
.end method

.method public toggle()V
    .locals 2

    .prologue
    const-string v0, "toggle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget-boolean v0, p0, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->setChecked(Z)V

    .line 75
    return-void

    .line 74
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
