.class public Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calendarFromFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Calendar;
    .locals 12
    .param p0, "time"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v0, 0x0

    const/4 v8, 0x0

    const-string v9, "com.mcdonalds.app.ui.dateTime.materialdatetimepicker.Utils"

    const-string v10, "calendarFromFormat"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    aput-object p0, v11, v0

    aput-object p1, v11, v7

    invoke-static {v8, v9, v10, v11}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 185
    .local v1, "calendar":Ljava/util/Calendar;
    const-string v8, " "

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 186
    .local v6, "timeSplit":[Ljava/lang/String;
    aget-object v8, v6, v0

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 188
    .local v5, "split":[Ljava/lang/String;
    const/4 v8, 0x0

    :try_start_0
    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 189
    .local v2, "hour":I
    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 190
    .local v3, "minute":I
    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f0900d3

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 191
    .local v0, "ampm":I
    :goto_0
    const/16 v7, 0x9

    invoke-virtual {v1, v7, v0}, Ljava/util/Calendar;->set(II)V

    .line 192
    const/16 v7, 0xa

    invoke-virtual {v1, v7, v2}, Ljava/util/Calendar;->set(II)V

    .line 193
    const/16 v7, 0xc

    invoke-virtual {v1, v7, v3}, Ljava/util/Calendar;->set(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .end local v0    # "ampm":I
    .end local v2    # "hour":I
    .end local v3    # "minute":I
    :goto_1
    return-object v1

    .restart local v2    # "hour":I
    .restart local v3    # "minute":I
    :cond_0
    move v0, v7

    .line 190
    goto :goto_0

    .line 194
    .end local v2    # "hour":I
    .end local v3    # "minute":I
    :catch_0
    move-exception v4

    .line 195
    .local v4, "nfe":Ljava/lang/NumberFormatException;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not parse "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static darkenColor(I)I
    .locals 8
    .param p0, "color"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v1, 0x0

    const-string v2, "com.mcdonalds.app.ui.dateTime.materialdatetimepicker.Utils"

    const-string v3, "darkenColor"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 102
    .local v0, "hsv":[F
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 103
    aget v1, v0, v7

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v2

    aput v1, v0, v7

    .line 104
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    return v1
.end method

.method public static getAccentColorFromThemeIfAvailable(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    const-string v3, "com.mcdonalds.app.ui.dateTime.materialdatetimepicker.Utils"

    const-string v4, "getAccentColorFromThemeIfAvailable"

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 115
    .local v1, "typedValue":Landroid/util/TypedValue;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010435

    invoke-virtual {v2, v3, v1, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 117
    iget v2, v1, Landroid/util/TypedValue;->data:I

    .line 125
    :goto_0
    return v2

    .line 120
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "colorAccent"

    const-string v4, "attr"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 121
    .local v0, "colorAccentResId":I
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    iget v2, v1, Landroid/util/TypedValue;->data:I

    goto :goto_0

    .line 125
    :cond_1
    const v2, 0x7f0e0067

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    goto :goto_0
.end method

.method public static getCloseStatus(Lcom/mcdonalds/sdk/modules/storelocator/Store;Landroid/content/Context;)Ljava/lang/String;
    .locals 14
    .param p0, "mSelectedStore"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v8, 0x0

    const-string v9, "com.mcdonalds.app.ui.dateTime.materialdatetimepicker.Utils"

    const-string v10, "getCloseStatus"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    aput-object p0, v11, v13

    aput-object p1, v11, v12

    invoke-static {v8, v9, v10, v11}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    const/4 v9, 0x7

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 161
    .local v2, "day":I
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreOperatingHours()Ljava/util/List;

    move-result-object v8

    add-int/lit8 v9, v2, -0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 162
    .local v5, "operatingHours":[Ljava/lang/String;
    aget-object v4, v5, v13

    .line 163
    .local v4, "fromString":Ljava/lang/String;
    aget-object v7, v5, v12

    .line 164
    .local v7, "toString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 166
    .local v1, "dailyStoreHoursString":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 167
    invoke-static {v4, v7}, Lcom/mcdonalds/sdk/utils/DateUtils;->areTimesEqualOrWithinAMinute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 168
    invoke-static {v4, p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/Utils;->calendarFromFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Calendar;

    move-result-object v3

    .line 169
    .local v3, "fromCalendar":Ljava/util/Calendar;
    invoke-static {v7, p1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/Utils;->calendarFromFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Calendar;

    move-result-object v6

    .line 170
    .local v6, "toCalendar":Ljava/util/Calendar;
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "a"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "\u4e0a"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 171
    :cond_0
    const/16 v8, 0xc

    invoke-virtual {v6, v8, v12}, Ljava/util/Calendar;->add(II)V

    .line 172
    const/4 v8, 0x5

    invoke-virtual {v6, v8, v12}, Ljava/util/Calendar;->add(II)V

    .line 174
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 175
    .local v0, "currentCalendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-ltz v8, :cond_2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_3

    .line 176
    :cond_2
    const v8, 0x7f090176

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 180
    .end local v0    # "currentCalendar":Ljava/util/Calendar;
    .end local v3    # "fromCalendar":Ljava/util/Calendar;
    .end local v6    # "toCalendar":Ljava/util/Calendar;
    :cond_3
    return-object v1
.end method

.method public static getPulseAnimator(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;
    .locals 13
    .param p0, "labelToAnimate"    # Landroid/view/View;
    .param p1, "decreaseRatio"    # F
    .param p2, "increaseRatio"    # F

    .prologue
    const/4 v7, 0x0

    const-string v8, "com.mcdonalds.app.ui.dateTime.materialdatetimepicker.Utils"

    const-string v9, "getPulseAnimator"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p0, v10, v11

    const/4 v11, 0x1

    new-instance v12, Ljava/lang/Float;

    invoke-direct {v12, p1}, Ljava/lang/Float;-><init>(F)V

    aput-object v12, v10, v11

    const/4 v11, 0x2

    new-instance v12, Ljava/lang/Float;

    invoke-direct {v12, p2}, Ljava/lang/Float;-><init>(F)V

    aput-object v12, v10, v11

    invoke-static {v7, v8, v9, v10}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v7, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    .line 78
    .local v0, "k0":Landroid/animation/Keyframe;
    const v7, 0x3e8ccccd    # 0.275f

    invoke-static {v7, p1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    .line 79
    .local v1, "k1":Landroid/animation/Keyframe;
    const v7, 0x3f30a3d7    # 0.69f

    invoke-static {v7, p2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    .line 80
    .local v2, "k2":Landroid/animation/Keyframe;
    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v7, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    .line 82
    .local v3, "k3":Landroid/animation/Keyframe;
    const-string v7, "scaleX"

    const/4 v8, 0x4

    new-array v8, v8, [Landroid/animation/Keyframe;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v9, 0x1

    aput-object v1, v8, v9

    const/4 v9, 0x2

    aput-object v2, v8, v9

    const/4 v9, 0x3

    aput-object v3, v8, v9

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 83
    .local v5, "scaleX":Landroid/animation/PropertyValuesHolder;
    const-string v7, "scaleY"

    const/4 v8, 0x4

    new-array v8, v8, [Landroid/animation/Keyframe;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v9, 0x1

    aput-object v1, v8, v9

    const/4 v9, 0x2

    aput-object v2, v8, v9

    const/4 v9, 0x3

    aput-object v3, v8, v9

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 84
    .local v6, "scaleY":Landroid/animation/PropertyValuesHolder;
    const/4 v7, 0x2

    new-array v7, v7, [Landroid/animation/PropertyValuesHolder;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    const/4 v8, 0x1

    aput-object v6, v7, v8

    .line 85
    invoke-static {p0, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 86
    .local v4, "pulseAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0x220

    invoke-virtual {v4, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 88
    return-object v4
.end method

.method public static isJellybeanOrLater()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "com.mcdonalds.app.ui.dateTime.materialdatetimepicker.Utils"

    const-string v1, "isJellybeanOrLater"

    invoke-static {v2, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ui.dateTime.materialdatetimepicker.Utils"

    const-string v2, "tryAccessibilityAnnounce"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    invoke-static {}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/Utils;->isJellybeanOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {p0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 68
    :cond_0
    return-void
.end method
