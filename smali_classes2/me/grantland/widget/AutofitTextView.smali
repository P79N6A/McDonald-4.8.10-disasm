.class public Lme/grantland/widget/AutofitTextView;
.super Landroid/widget/TextView;
.source "AutofitTextView.java"

# interfaces
.implements Lme/grantland/widget/AutofitHelper$OnTextSizeChangeListener;


# instance fields
.field private mHelper:Lme/grantland/widget/AutofitHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lme/grantland/widget/AutofitTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lme/grantland/widget/AutofitTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lme/grantland/widget/AutofitTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 35
    invoke-static {p0, p2, p3}, Lme/grantland/widget/AutofitHelper;->create(Landroid/widget/TextView;Landroid/util/AttributeSet;I)Lme/grantland/widget/AutofitHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lme/grantland/widget/AutofitHelper;->addOnTextSizeChangeListener(Lme/grantland/widget/AutofitHelper$OnTextSizeChangeListener;)Lme/grantland/widget/AutofitHelper;

    move-result-object v0

    iput-object v0, p0, Lme/grantland/widget/AutofitTextView;->mHelper:Lme/grantland/widget/AutofitHelper;

    .line 37
    return-void
.end method


# virtual methods
.method public getAutofitHelper()Lme/grantland/widget/AutofitHelper;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->mHelper:Lme/grantland/widget/AutofitHelper;

    return-object v0
.end method

.method public getMaxTextSize()F
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->mHelper:Lme/grantland/widget/AutofitHelper;

    invoke-virtual {v0}, Lme/grantland/widget/AutofitHelper;->getMaxTextSize()F

    move-result v0

    return v0
.end method

.method public getMinTextSize()F
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->mHelper:Lme/grantland/widget/AutofitHelper;

    invoke-virtual {v0}, Lme/grantland/widget/AutofitHelper;->getMinTextSize()F

    move-result v0

    return v0
.end method

.method public getPrecision()F
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->mHelper:Lme/grantland/widget/AutofitHelper;

    invoke-virtual {v0}, Lme/grantland/widget/AutofitHelper;->getPrecision()F

    move-result v0

    return v0
.end method

.method public onTextSizeChange(FF)V
    .locals 0
    .param p1, "textSize"    # F
    .param p2, "oldTextSize"    # F

    .prologue
    .line 191
    return-void
.end method

.method public setLines(I)V
    .locals 1
    .param p1, "lines"    # I

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/widget/TextView;->setLines(I)V

    .line 58
    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->mHelper:Lme/grantland/widget/AutofitHelper;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->mHelper:Lme/grantland/widget/AutofitHelper;

    invoke-virtual {v0, p1}, Lme/grantland/widget/AutofitHelper;->setMaxLines(I)Lme/grantland/widget/AutofitHelper;

    .line 61
    :cond_0
    return-void
.end method

.method public setMaxLines(I)V
    .locals 1
    .param p1, "maxLines"    # I

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 69
    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->mHelper:Lme/grantland/widget/AutofitHelper;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->mHelper:Lme/grantland/widget/AutofitHelper;

    invoke-virtual {v0, p1}, Lme/grantland/widget/AutofitHelper;->setMaxLines(I)Lme/grantland/widget/AutofitHelper;

    .line 72
    :cond_0
    return-void
.end method

.method public setMaxTextSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 122
    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->mHelper:Lme/grantland/widget/AutofitHelper;

    invoke-virtual {v0, p1}, Lme/grantland/widget/AutofitHelper;->setMaxTextSize(F)Lme/grantland/widget/AutofitHelper;

    .line 123
    return-void
.end method

.method public setMaxTextSize(IF)V
    .locals 1
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .prologue
    .line 135
    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->mHelper:Lme/grantland/widget/AutofitHelper;

    invoke-virtual {v0, p1, p2}, Lme/grantland/widget/AutofitHelper;->setMaxTextSize(IF)Lme/grantland/widget/AutofitHelper;

    .line 136
    return-void
.end method

.method public setMinTextSize(I)V
    .locals 3
    .param p1, "minSize"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->mHelper:Lme/grantland/widget/AutofitHelper;

    const/4 v1, 0x2

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Lme/grantland/widget/AutofitHelper;->setMinTextSize(IF)Lme/grantland/widget/AutofitHelper;

    .line 155
    return-void
.end method

.method public setMinTextSize(IF)V
    .locals 1
    .param p1, "unit"    # I
    .param p2, "minSize"    # F

    .prologue
    .line 167
    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->mHelper:Lme/grantland/widget/AutofitHelper;

    invoke-virtual {v0, p1, p2}, Lme/grantland/widget/AutofitHelper;->setMinTextSize(IF)Lme/grantland/widget/AutofitHelper;

    .line 168
    return-void
.end method

.method public setPrecision(F)V
    .locals 1
    .param p1, "precision"    # F

    .prologue
    .line 185
    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->mHelper:Lme/grantland/widget/AutofitHelper;

    invoke-virtual {v0, p1}, Lme/grantland/widget/AutofitHelper;->setPrecision(F)Lme/grantland/widget/AutofitHelper;

    .line 186
    return-void
.end method

.method public setSizeToFit()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lme/grantland/widget/AutofitTextView;->setSizeToFit(Z)V

    .line 94
    return-void
.end method

.method public setSizeToFit(Z)V
    .locals 1
    .param p1, "sizeToFit"    # Z

    .prologue
    .line 103
    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->mHelper:Lme/grantland/widget/AutofitHelper;

    invoke-virtual {v0, p1}, Lme/grantland/widget/AutofitHelper;->setEnabled(Z)Lme/grantland/widget/AutofitHelper;

    .line 104
    return-void
.end method

.method public setTextSize(IF)V
    .locals 1
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .prologue
    .line 46
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 47
    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->mHelper:Lme/grantland/widget/AutofitHelper;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->mHelper:Lme/grantland/widget/AutofitHelper;

    invoke-virtual {v0, p1, p2}, Lme/grantland/widget/AutofitHelper;->setTextSize(IF)V

    .line 50
    :cond_0
    return-void
.end method
