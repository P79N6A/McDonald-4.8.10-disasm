.class public Lcom/mcdonalds/app/widget/CheckableLinearLayout;
.super Landroid/widget/LinearLayout;
.source "CheckableLinearLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/widget/CheckableLinearLayout$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mChecked:Z

.field private mOnCheckedChangeListener:Lcom/mcdonalds/app/widget/CheckableLinearLayout$OnCheckedChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/mcdonalds/app/widget/CheckableLinearLayout;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 2

    .prologue
    const-string v0, "isChecked"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iget-boolean v0, p0, Lcom/mcdonalds/app/widget/CheckableLinearLayout;->mChecked:Z

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

    .line 76
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 77
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/CheckableLinearLayout;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    sget-object v1, Lcom/mcdonalds/app/widget/CheckableLinearLayout;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/mcdonalds/app/widget/CheckableLinearLayout;->mergeDrawableStates([I[I)[I

    .line 80
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

    .line 48
    iput-boolean p1, p0, Lcom/mcdonalds/app/widget/CheckableLinearLayout;->mChecked:Z

    .line 50
    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/CheckableLinearLayout;->refreshDrawableState()V

    .line 52
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/CheckableLinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 53
    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/widget/CheckableLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, "child":Landroid/view/View;
    instance-of v2, v0, Landroid/widget/Checkable;

    if-eqz v2, :cond_0

    .line 55
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "child":Landroid/view/View;
    iget-boolean v2, p0, Lcom/mcdonalds/app/widget/CheckableLinearLayout;->mChecked:Z

    invoke-interface {v0, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 52
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/app/widget/CheckableLinearLayout;->mOnCheckedChangeListener:Lcom/mcdonalds/app/widget/CheckableLinearLayout$OnCheckedChangeListener;

    if-eqz v2, :cond_2

    .line 60
    iget-object v2, p0, Lcom/mcdonalds/app/widget/CheckableLinearLayout;->mOnCheckedChangeListener:Lcom/mcdonalds/app/widget/CheckableLinearLayout$OnCheckedChangeListener;

    iget-boolean v3, p0, Lcom/mcdonalds/app/widget/CheckableLinearLayout;->mChecked:Z

    invoke-interface {v2, p0, v3}, Lcom/mcdonalds/app/widget/CheckableLinearLayout$OnCheckedChangeListener;->onCheckedChanged(Lcom/mcdonalds/app/widget/CheckableLinearLayout;Z)V

    .line 62
    :cond_2
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/mcdonalds/app/widget/CheckableLinearLayout$OnCheckedChangeListener;)V
    .locals 3
    .param p1, "onCheckedChangeListener"    # Lcom/mcdonalds/app/widget/CheckableLinearLayout$OnCheckedChangeListener;

    .prologue
    const-string v0, "setOnCheckedChangeListener"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    iput-object p1, p0, Lcom/mcdonalds/app/widget/CheckableLinearLayout;->mOnCheckedChangeListener:Lcom/mcdonalds/app/widget/CheckableLinearLayout$OnCheckedChangeListener;

    .line 37
    return-void
.end method

.method public toggle()V
    .locals 2

    .prologue
    const-string v0, "toggle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    iget-boolean v0, p0, Lcom/mcdonalds/app/widget/CheckableLinearLayout;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/widget/CheckableLinearLayout;->setChecked(Z)V

    .line 72
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
