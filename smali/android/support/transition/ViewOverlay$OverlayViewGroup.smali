.class Landroid/support/transition/ViewOverlay$OverlayViewGroup;
.super Landroid/view/ViewGroup;
.source "ViewOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/ViewOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OverlayViewGroup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/ViewOverlay$OverlayViewGroup$TouchInterceptor;
    }
.end annotation


# static fields
.field static sInvalidateChildInParentFastMethod:Ljava/lang/reflect/Method;


# instance fields
.field mDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field mHostView:Landroid/view/ViewGroup;

.field mRequestingView:Landroid/view/View;

.field mViewOverlay:Landroid/support/transition/ViewOverlay;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 151
    :try_start_0
    const-class v0, Landroid/view/ViewGroup;

    const-string v1, "invalidateChildInParentFast"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Landroid/graphics/Rect;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->sInvalidateChildInParentFastMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/ViewOverlay;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostView"    # Landroid/view/ViewGroup;
    .param p3, "requestingView"    # Landroid/view/View;
    .param p4, "viewOverlay"    # Landroid/support/transition/ViewOverlay;

    .prologue
    .line 175
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    .line 176
    iput-object p2, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    .line 177
    iput-object p3, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mRequestingView:Landroid/view/View;

    .line 178
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->setRight(I)V

    .line 179
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->setBottom(I)V

    .line 180
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 181
    iput-object p4, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mViewOverlay:Landroid/support/transition/ViewOverlay;

    .line 182
    return-void
.end method

.method private getOffset([I)V
    .locals 7
    .param p1, "offset"    # [I

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 303
    new-array v0, v3, [I

    .line 304
    .local v0, "contentViewLocation":[I
    new-array v1, v3, [I

    .line 305
    .local v1, "hostViewLocation":[I
    invoke-virtual {p0}, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 306
    .local v2, "parent":Landroid/view/ViewGroup;
    iget-object v3, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 307
    iget-object v3, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mRequestingView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 308
    aget v3, v1, v5

    aget v4, v0, v5

    sub-int/2addr v3, v4

    aput v3, p1, v5

    .line 309
    aget v3, v1, v6

    aget v4, v0, v6

    sub-int/2addr v3, v4

    aput v3, p1, v6

    .line 310
    return-void
.end method


# virtual methods
.method public add(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 191
    iget-object v0, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    .line 195
    :cond_0
    iget-object v0, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 197
    iget-object v0, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->invalidate(Landroid/graphics/Rect;)V

    .line 199
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 201
    :cond_1
    return-void
.end method

.method public add(Landroid/view/View;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 217
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 218
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 219
    .local v1, "parent":Landroid/view/ViewGroup;
    iget-object v3, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    if-eq v1, v3, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 223
    new-array v2, v6, [I

    .line 224
    .local v2, "parentLocation":[I
    new-array v0, v6, [I

    .line 225
    .local v0, "hostViewLocation":[I
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 226
    iget-object v3, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 227
    aget v3, v2, v4

    aget v4, v0, v4

    sub-int/2addr v3, v4

    invoke-static {p1, v3}, Landroid/support/v4/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 228
    aget v3, v2, v5

    aget v4, v0, v5

    sub-int/2addr v3, v4

    invoke-static {p1, v3}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 230
    .end local v0    # "hostViewLocation":[I
    .end local v2    # "parentLocation":[I
    :cond_0
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 236
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 237
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 240
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_1
    invoke-virtual {p0}, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-super {p0, p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 241
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 272
    new-array v0, v5, [I

    .line 273
    .local v0, "contentViewLocation":[I
    new-array v1, v5, [I

    .line 274
    .local v1, "hostViewLocation":[I
    invoke-virtual {p0}, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 275
    .local v4, "parent":Landroid/view/ViewGroup;
    iget-object v5, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 276
    iget-object v5, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mRequestingView:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 277
    aget v5, v1, v3

    aget v6, v0, v3

    sub-int/2addr v5, v6

    int-to-float v5, v5

    aget v6, v1, v7

    aget v7, v0, v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 279
    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mRequestingView:Landroid/view/View;

    .line 280
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iget-object v7, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mRequestingView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-direct {v5, v3, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 279
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 281
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 282
    iget-object v5, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-nez v5, :cond_0

    .line 283
    .local v3, "numDrawables":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 284
    iget-object v5, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 283
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 282
    .end local v2    # "i":I
    .end local v3    # "numDrawables":I
    :cond_0
    iget-object v5, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_0

    .line 286
    .restart local v2    # "i":I
    .restart local v3    # "numDrawables":I
    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 5
    .param p1, "location"    # [I
    .param p2, "dirty"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 351
    iget-object v1, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 352
    aget v1, p1, v3

    aget v2, p1, v4

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 353
    iget-object v1, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 354
    aput v3, p1, v3

    .line 355
    aput v3, p1, v4

    .line 356
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 357
    .local v0, "offset":[I
    invoke-direct {p0, v0}, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->getOffset([I)V

    .line 358
    aget v1, v0, v3

    aget v2, v0, v4

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 359
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v1

    .line 365
    .end local v0    # "offset":[I
    :goto_0
    return-object v1

    .line 362
    :cond_0
    invoke-virtual {p0, p2}, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->invalidate(Landroid/graphics/Rect;)V

    .line 365
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 267
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->invalidate(Landroid/graphics/Rect;)V

    .line 268
    return-void
.end method

.method isEmpty()Z
    .locals 1

    .prologue
    .line 258
    invoke-virtual {p0}, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    .line 259
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 260
    :cond_0
    const/4 v0, 0x1

    .line 262
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 291
    return-void
.end method

.method public remove(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 204
    iget-object v0, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 206
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->invalidate(Landroid/graphics/Rect;)V

    .line 207
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 209
    :cond_0
    return-void
.end method

.method public remove(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 244
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 245
    invoke-virtual {p0}, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 248
    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 213
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
