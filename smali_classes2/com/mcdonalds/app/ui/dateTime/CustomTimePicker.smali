.class public Lcom/mcdonalds/app/ui/dateTime/CustomTimePicker;
.super Landroid/widget/TimePicker;
.source "CustomTimePicker.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v6, 0x0

    .line 30
    .local v6, "idClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v9, 0x0

    .line 31
    .local v9, "numberPickerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v10, 0x0

    .line 32
    .local v10, "selectionDividerField":Ljava/lang/reflect/Field;
    const/4 v4, 0x0

    .line 33
    .local v4, "hourField":Ljava/lang/reflect/Field;
    const/4 v7, 0x0

    .line 34
    .local v7, "minuteField":Ljava/lang/reflect/Field;
    const/4 v1, 0x0

    .line 35
    .local v1, "amPmField":Ljava/lang/reflect/Field;
    const/4 v5, 0x0

    .line 36
    .local v5, "hourNumberPicker":Landroid/widget/NumberPicker;
    const/4 v8, 0x0

    .line 37
    .local v8, "minuteNumberPicker":Landroid/widget/NumberPicker;
    const/4 v2, 0x0

    .line 42
    .local v2, "amPmNumberPicker":Landroid/widget/NumberPicker;
    :try_start_0
    const-string v11, "com.android.internal.R$id"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 45
    const-string v11, "hour"

    invoke-virtual {v6, v11}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 46
    const-string v11, "minute"

    invoke-virtual {v6, v11}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 47
    const-string v11, "amPm"

    invoke-virtual {v6, v11}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 50
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/mcdonalds/app/ui/dateTime/CustomTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Landroid/widget/NumberPicker;

    move-object v5, v0

    .line 51
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/mcdonalds/app/ui/dateTime/CustomTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Landroid/widget/NumberPicker;

    move-object v8, v0

    .line 52
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/mcdonalds/app/ui/dateTime/CustomTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Landroid/widget/NumberPicker;

    move-object v2, v0

    .line 54
    const-string v11, "android.widget.NumberPicker"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 58
    const-string v11, "mSelectionDivider"

    invoke-virtual {v9, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 59
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    .line 77
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v3

    .line 63
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    const-string v11, "CustomTimePicker"

    const-string v12, "ClassNotFoundException in CustomTimePicker"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 65
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v3

    .line 67
    .local v3, "e":Ljava/lang/NoSuchFieldException;
    const-string v11, "CustomTimePicker"

    const-string v12, "NoSuchFieldException in CustomTimePicker"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 69
    .end local v3    # "e":Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v3

    .line 71
    .local v3, "e":Ljava/lang/IllegalAccessException;
    const-string v11, "CustomTimePicker"

    const-string v12, "IllegalAccessException in CustomTimePicker"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 73
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v3

    .line 75
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v11, "CustomTimePicker"

    const-string v12, "IllegalArgumentException in CustomTimePicker"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
