.class public Lcom/mcdonalds/app/widget/CenteredRadioButton;
.super Landroid/widget/RadioButton;
.source "CenteredRadioButton.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# instance fields
.field buttonDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    sget-object v1, Lcom/mcdonalds/app/R$styleable;->CompoundButton:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 30
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/widget/CenteredRadioButton;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    .line 31
    const v1, 0x106000d

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/widget/CenteredRadioButton;->setButtonDrawable(I)V

    .line 32
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const-string v5, "onDraw"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    nop

    .line 36
    invoke-super {p0, p1}, Landroid/widget/RadioButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 38
    iget-object v5, p0, Lcom/mcdonalds/app/widget/CenteredRadioButton;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    .line 39
    iget-object v5, p0, Lcom/mcdonalds/app/widget/CenteredRadioButton;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/CenteredRadioButton;->getDrawableState()[I

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 40
    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/CenteredRadioButton;->getGravity()I

    move-result v5

    and-int/lit8 v3, v5, 0x70

    .line 41
    .local v3, "verticalGravity":I
    iget-object v5, p0, Lcom/mcdonalds/app/widget/CenteredRadioButton;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 43
    .local v2, "height":I
    const/4 v4, 0x0

    .line 45
    .local v4, "y":I
    sparse-switch v3, :sswitch_data_0

    .line 54
    :goto_0
    iget-object v5, p0, Lcom/mcdonalds/app/widget/CenteredRadioButton;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 55
    .local v1, "buttonWidth":I
    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/CenteredRadioButton;->getWidth()I

    move-result v5

    sub-int/2addr v5, v1

    div-int/lit8 v0, v5, 0x2

    .line 56
    .local v0, "buttonLeft":I
    iget-object v5, p0, Lcom/mcdonalds/app/widget/CenteredRadioButton;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    add-int v6, v0, v1

    add-int v7, v4, v2

    invoke-virtual {v5, v0, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 57
    iget-object v5, p0, Lcom/mcdonalds/app/widget/CenteredRadioButton;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 59
    .end local v0    # "buttonLeft":I
    .end local v1    # "buttonWidth":I
    .end local v2    # "height":I
    .end local v3    # "verticalGravity":I
    .end local v4    # "y":I
    :cond_0
    return-void

    .line 47
    .restart local v2    # "height":I
    .restart local v3    # "verticalGravity":I
    .restart local v4    # "y":I
    :sswitch_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/CenteredRadioButton;->getHeight()I

    move-result v5

    sub-int v4, v5, v2

    .line 48
    goto :goto_0

    .line 50
    :sswitch_1
    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/CenteredRadioButton;->getHeight()I

    move-result v5

    sub-int/2addr v5, v2

    div-int/lit8 v4, v5, 0x2

    goto :goto_0

    .line 45
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method
