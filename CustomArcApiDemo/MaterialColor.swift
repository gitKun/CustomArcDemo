//
//  MeterialColor.swift
//  CustomArcApiDemo
//
//  Created by 坤 on 2022/5/21.
//  Copyright © 2022 kun. All rights reserved.
//

import class UIKit.UIColor


/// Based on Material Design Color subscripting in Flutter and Dart from Google.
/// Uses on the 2014 Material Design Color Palette from Google.
/// https://material.io/design/color/the-color-system.html#tools-for-picking-colors
public enum MaterialColor {
    case red
    case pink
    case purple
    case deepPurple
    case indigo
    case blue
    case lightBlue
    case cyan
    case teal
    case green
    case lightGreen
    case lime
    case yellow
    case amber
    case orange
    case deepOrange
    case brown
    case gray
    case blueGray
    case black
    case white

    /// Index of two range groups of O and A.
    public enum MaterialColorIndex {
        case o50
        case o100
        case o200
        case o300
        case o400
        case o500
        case o600
        case o700
        case o800
        case o900
        case a100
        case a200
        case a400
        case a700
    }

    // Use: `MaterialColor.red[.a200]`.
    public subscript(_ index: MaterialColorIndex) -> UIColor {
        get { color(from: index) }
    }

    private func color(from index: MaterialColorIndex) -> UIColor {
        switch self {
        case .red:
            switch index {
            case .o50:  return #colorLiteral(red: 1, green: 0.9216, blue: 0.9333, alpha: 1) /* #ffebee */
            case .o100: return #colorLiteral(red: 1.0, green: 0.803921568627451, blue: 0.8235294117647058, alpha: 1) /* #ffcdd2 */
            case .o200: return #colorLiteral(red: 0.9372549019607843, green: 0.6039215686274509, blue: 0.6039215686274509, alpha: 1) /* #ef9a9a */
            case .o300: return #colorLiteral(red: 0.8980392156862745, green: 0.45098039215686275, blue: 0.45098039215686275, alpha: 1) /* #e57373 */
            case .o400: return #colorLiteral(red: 0.9372549019607843, green: 0.3254901960784314, blue: 0.3137254901960784, alpha: 1) /* #ef5350 */
            case .o500: return #colorLiteral(red: 0.9568627450980393, green: 0.2627450980392157, blue: 0.21176470588235294, alpha: 1) /* #f44336 */
            case .o600: return #colorLiteral(red: 0.8980392156862745, green: 0.2235294117647059, blue: 0.20784313725490197, alpha: 1) /* #e53935 */
            case .o700: return #colorLiteral(red: 0.8274509803921568, green: 0.1843137254901961, blue: 0.1843137254901961, alpha: 1) /* #d32f2f */
            case .o800: return #colorLiteral(red: 0.7764705882352941, green: 0.1568627450980392, blue: 0.1568627450980392, alpha: 1) /* #c62828 */
            case .o900: return #colorLiteral(red: 0.7176470588235294, green: 0.10980392156862745, blue: 0.10980392156862745, alpha: 1) /* #b71c1c */
            case .a100: return #colorLiteral(red: 1.0, green: 0.5411764705882353, blue: 0.5019607843137255, alpha: 1) /* #ff8a80 */
            case .a200: return #colorLiteral(red: 1.0, green: 0.3215686274509804, blue: 0.3215686274509804, alpha: 1) /* #ff5252 */
            case .a400: return #colorLiteral(red: 1.0, green: 0.09019607843137255, blue: 0.26666666666666666, alpha: 1) /* #ff1744 */
            case .a700: return #colorLiteral(red: 0.8352941176470589, green: 0.0, blue: 0.0, alpha: 1) /* #d50000 */
            }
        case .pink:
            switch index {
            case .o50:  return #colorLiteral(red: 0.9882, green: 0.8941, blue: 0.9255, alpha: 1) /* #fce4ec */
            case .o100: return #colorLiteral(red: 0.9725490196078431, green: 0.7333333333333333, blue: 0.8156862745098039, alpha: 1) /* #f8bbd0 */
            case .o200: return #colorLiteral(red: 0.9568627450980393, green: 0.5607843137254902, blue: 0.6941176470588235, alpha: 1) /* #f48fb1 */
            case .o300: return #colorLiteral(red: 0.9411764705882353, green: 0.3843137254901961, blue: 0.5725490196078431, alpha: 1) /* #f06292 */
            case .o400: return #colorLiteral(red: 0.9254901960784314, green: 0.25098039215686274, blue: 0.47843137254901963, alpha: 1) /* #ec407a */
            case .o500: return #colorLiteral(red: 0.9137254901960784, green: 0.11764705882352941, blue: 0.38823529411764707, alpha: 1) /* #e91e63 */
            case .o600: return #colorLiteral(red: 0.8470588235294118, green: 0.10588235294117647, blue: 0.3764705882352941, alpha: 1) /* #d81b60 */
            case .o700: return #colorLiteral(red: 0.7607843137254902, green: 0.09411764705882353, blue: 0.3568627450980392, alpha: 1) /* #c2185b */
            case .o800: return #colorLiteral(red: 0.6784313725490196, green: 0.0784313725490196, blue: 0.3411764705882353, alpha: 1) /* #ad1457 */
            case .o900: return #colorLiteral(red: 0.5333333333333333, green: 0.054901960784313725, blue: 0.30980392156862746, alpha: 1) /* #880e4f */
            case .a100: return #colorLiteral(red: 1.0, green: 0.5019607843137255, blue: 0.6705882352941176, alpha: 1) /* #ff80ab */
            case .a200: return #colorLiteral(red: 1.0, green: 0.25098039215686274, blue: 0.5058823529411764, alpha: 1) /* #ff4081 */
            case .a400: return #colorLiteral(red: 0.9607843137254902, green: 0.0, blue: 0.3411764705882353, alpha: 1) /* #f50057 */
            case .a700: return #colorLiteral(red: 0.7725490196078432, green: 0.06666666666666667, blue: 0.3843137254901961, alpha: 1) /* #c51162 */
            }
        case .purple:
            switch index {
            case .o50:  return #colorLiteral(red: 0.9529, green: 0.898, blue: 0.9608, alpha: 1) /* #f3e5f5 */
            case .o100: return #colorLiteral(red: 0.8823529411764706, green: 0.7450980392156863, blue: 0.9058823529411765, alpha: 1) /* #e1bee7 */
            case .o200: return #colorLiteral(red: 0.807843137254902, green: 0.5764705882352941, blue: 0.8470588235294118, alpha: 1) /* #ce93d8 */
            case .o300: return #colorLiteral(red: 0.7294117647058823, green: 0.40784313725490196, blue: 0.7843137254901961, alpha: 1) /* #ba68c8 */
            case .o400: return #colorLiteral(red: 0.6705882352941176, green: 0.2784313725490196, blue: 0.7372549019607844, alpha: 1) /* #ab47bc */
            case .o500: return #colorLiteral(red: 0.611764705882353, green: 0.15294117647058825, blue: 0.6901960784313725, alpha: 1) /* #9c27b0 */
            case .o600: return #colorLiteral(red: 0.5568627450980392, green: 0.1411764705882353, blue: 0.6666666666666666, alpha: 1) /* #8e24aa */
            case .o700: return #colorLiteral(red: 0.4823529411764706, green: 0.12156862745098039, blue: 0.6352941176470588, alpha: 1) /* #7b1fa2 */
            case .o800: return #colorLiteral(red: 0.41568627450980394, green: 0.10588235294117647, blue: 0.6039215686274509, alpha: 1) /* #6a1b9a */
            case .o900: return #colorLiteral(red: 0.2901960784313726, green: 0.0784313725490196, blue: 0.5490196078431373, alpha: 1) /* #4a148c */
            case .a100: return #colorLiteral(red: 0.9176470588235294, green: 0.5019607843137255, blue: 0.9882352941176471, alpha: 1) /* #ea80fc */
            case .a200: return #colorLiteral(red: 0.8784313725490196, green: 0.25098039215686274, blue: 0.984313725490196, alpha: 1) /* #e040fb */
            case .a400: return #colorLiteral(red: 0.8352941176470589, green: 0.0, blue: 0.9764705882352941, alpha: 1) /* #d500f9 */
            case .a700: return #colorLiteral(red: 0.6666666666666666, green: 0.0, blue: 1.0, alpha: 1) /* #aa00ff */
            }
        case .deepPurple:
            switch index {
            case .o50:  return #colorLiteral(red: 0.9294, green: 0.9059, blue: 0.9647, alpha: 1) /* #ede7f6 */
            case .o100: return #colorLiteral(red: 0.8196078431372549, green: 0.7686274509803922, blue: 0.9137254901960784, alpha: 1) /* #d1c4e9 */
            case .o200: return #colorLiteral(red: 0.7019607843137254, green: 0.615686274509804, blue: 0.8588235294117647, alpha: 1) /* #b39ddb */
            case .o300: return #colorLiteral(red: 0.5843137254901961, green: 0.4588235294117647, blue: 0.803921568627451, alpha: 1) /* #9575cd */
            case .o400: return #colorLiteral(red: 0.49411764705882355, green: 0.3411764705882353, blue: 0.7607843137254902, alpha: 1) /* #7e57c2 */
            case .o500: return #colorLiteral(red: 0.403921568627451, green: 0.22745098039215686, blue: 0.7176470588235294, alpha: 1) /* #673ab7 */
            case .o600: return #colorLiteral(red: 0.3686274509803922, green: 0.20784313725490197, blue: 0.6941176470588235, alpha: 1) /* #5e35b1 */
            case .o700: return #colorLiteral(red: 0.3176470588235294, green: 0.17647058823529413, blue: 0.6588235294117647, alpha: 1) /* #512da8 */
            case .o800: return #colorLiteral(red: 0.27058823529411763, green: 0.15294117647058825, blue: 0.6274509803921569, alpha: 1) /* #4527a0 */
            case .o900: return #colorLiteral(red: 0.19215686274509805, green: 0.10588235294117647, blue: 0.5725490196078431, alpha: 1) /* #311b92 */
            case .a100: return #colorLiteral(red: 0.7019607843137254, green: 0.5333333333333333, blue: 1.0, alpha: 1) /* #b388ff */
            case .a200: return #colorLiteral(red: 0.48627450980392156, green: 0.30196078431372547, blue: 1.0, alpha: 1) /* #7c4dff */
            case .a400: return #colorLiteral(red: 0.396078431372549, green: 0.12156862745098039, blue: 1.0, alpha: 1) /* #651fff */
            case .a700: return #colorLiteral(red: 0.3843137254901961, green: 0.0, blue: 0.9176470588235294, alpha: 1) /* #6200ea */
            }
        case .indigo:
            switch index {
            case .o50:  return #colorLiteral(red: 0.9098, green: 0.9176, blue: 0.9647, alpha: 1) /* #e8eaf6 */
            case .o100: return #colorLiteral(red: 0.7725490196078432, green: 0.792156862745098, blue: 0.9137254901960784, alpha: 1) /* #c5cae9 */
            case .o200: return #colorLiteral(red: 0.6235294117647059, green: 0.6588235294117647, blue: 0.8549019607843137, alpha: 1) /* #9fa8da */
            case .o300: return #colorLiteral(red: 0.4745098039215686, green: 0.5254901960784314, blue: 0.796078431372549, alpha: 1) /* #7986cb */
            case .o400: return #colorLiteral(red: 0.3607843137254902, green: 0.4196078431372549, blue: 0.7529411764705882, alpha: 1) /* #5c6bc0 */
            case .o500: return #colorLiteral(red: 0.24705882352941178, green: 0.3176470588235294, blue: 0.7098039215686275, alpha: 1) /* #3f51b5 */
            case .o600: return #colorLiteral(red: 0.2235294117647059, green: 0.28627450980392155, blue: 0.6705882352941176, alpha: 1) /* #3949ab */
            case .o700: return #colorLiteral(red: 0.18823529411764706, green: 0.24705882352941178, blue: 0.6235294117647059, alpha: 1) /* #303f9f */
            case .o800: return #colorLiteral(red: 0.1568627450980392, green: 0.20784313725490197, blue: 0.5764705882352941, alpha: 1) /* #283593 */
            case .o900: return #colorLiteral(red: 0.10196078431372549, green: 0.13725490196078433, blue: 0.49411764705882355, alpha: 1) /* #1a237e */
            case .a100: return #colorLiteral(red: 0.5490196078431373, green: 0.6196078431372549, blue: 1.0, alpha: 1) /* #8c9eff */
            case .a200: return #colorLiteral(red: 0.3254901960784314, green: 0.42745098039215684, blue: 0.996078431372549, alpha: 1) /* #536dfe */
            case .a400: return #colorLiteral(red: 0.23921568627450981, green: 0.35294117647058826, blue: 0.996078431372549, alpha: 1) /* #3d5afe */
            case .a700: return #colorLiteral(red: 0.18823529411764706, green: 0.30980392156862746, blue: 0.996078431372549, alpha: 1) /* #304ffe */
            }
        case .blue:
            switch index {
            case .o50:  return #colorLiteral(red: 0.8902, green: 0.949, blue: 0.9922, alpha: 1) /* #e3f2fd */
            case .o100: return #colorLiteral(red: 0.7333333333333333, green: 0.8705882352941177, blue: 0.984313725490196, alpha: 1) /* #bbdefb */
            case .o200: return #colorLiteral(red: 0.5647058823529412, green: 0.792156862745098, blue: 0.9764705882352941, alpha: 1) /* #90caf9 */
            case .o300: return #colorLiteral(red: 0.39215686274509803, green: 0.7098039215686275, blue: 0.9647058823529412, alpha: 1) /* #64b5f6 */
            case .o400: return #colorLiteral(red: 0.25882352941176473, green: 0.6470588235294118, blue: 0.9607843137254902, alpha: 1) /* #42a5f5 */
            case .o500: return #colorLiteral(red: 0.12941176470588237, green: 0.5882352941176471, blue: 0.9529411764705882, alpha: 1) /* #2196f3 */
            case .o600: return #colorLiteral(red: 0.11764705882352941, green: 0.5333333333333333, blue: 0.8980392156862745, alpha: 1) /* #1e88e5 */
            case .o700: return #colorLiteral(red: 0.09803921568627451, green: 0.4627450980392157, blue: 0.8235294117647058, alpha: 1) /* #1976d2 */
            case .o800: return #colorLiteral(red: 0.08235294117647059, green: 0.396078431372549, blue: 0.7529411764705882, alpha: 1) /* #1565c0 */
            case .o900: return #colorLiteral(red: 0.050980392156862744, green: 0.2784313725490196, blue: 0.6313725490196078, alpha: 1) /* #0d47a1 */
            case .a100: return #colorLiteral(red: 0.5098039215686274, green: 0.6941176470588235, blue: 1.0, alpha: 1) /* #82b1ff */
            case .a200: return #colorLiteral(red: 0.26666666666666666, green: 0.5411764705882353, blue: 1.0, alpha: 1) /* #448aff */
            case .a400: return #colorLiteral(red: 0.1607843137254902, green: 0.4745098039215686, blue: 1.0, alpha: 1) /* #2979ff */
            case .a700: return #colorLiteral(red: 0.1607843137254902, green: 0.3843137254901961, blue: 1.0, alpha: 1) /* #2962ff */
            }
        case .lightBlue:
            switch index {
            case .o50:  return #colorLiteral(red: 0.8824, green: 0.9608, blue: 0.9961, alpha: 1) /* #e1f5fe */
            case .o100: return #colorLiteral(red: 0.7019607843137254, green: 0.8980392156862745, blue: 0.9882352941176471, alpha: 1) /* #b3e5fc */
            case .o200: return #colorLiteral(red: 0.5058823529411764, green: 0.8313725490196079, blue: 0.9803921568627451, alpha: 1) /* #81d4fa */
            case .o300: return #colorLiteral(red: 0.30980392156862746, green: 0.7647058823529411, blue: 0.9686274509803922, alpha: 1) /* #4fc3f7 */
            case .o400: return #colorLiteral(red: 0.1607843137254902, green: 0.7137254901960784, blue: 0.9647058823529412, alpha: 1) /* #29b6f6 */
            case .o500: return #colorLiteral(red: 0.011764705882352941, green: 0.6627450980392157, blue: 0.9568627450980393, alpha: 1) /* #03a9f4 */
            case .o600: return #colorLiteral(red: 0.011764705882352941, green: 0.6078431372549019, blue: 0.8980392156862745, alpha: 1) /* #039be5 */
            case .o700: return #colorLiteral(red: 0.00784313725490196, green: 0.5333333333333333, blue: 0.8196078431372549, alpha: 1) /* #0288d1 */
            case .o800: return #colorLiteral(red: 0.00784313725490196, green: 0.4666666666666667, blue: 0.7411764705882353, alpha: 1) /* #0277bd */
            case .o900: return #colorLiteral(red: 0.00392156862745098, green: 0.3411764705882353, blue: 0.6078431372549019, alpha: 1) /* #01579b */
            case .a100: return #colorLiteral(red: 0.5019607843137255, green: 0.8470588235294118, blue: 1.0, alpha: 1) /* #80d8ff */
            case .a200: return #colorLiteral(red: 0.25098039215686274, green: 0.7686274509803922, blue: 1.0, alpha: 1) /* #40c4ff */
            case .a400: return #colorLiteral(red: 0.0, green: 0.6901960784313725, blue: 1.0, alpha: 1) /* #00b0ff */
            case .a700: return #colorLiteral(red: 0.0, green: 0.5686274509803921, blue: 0.9176470588235294, alpha: 1) /* #0091ea */
            }
        case .cyan:
            switch index {
            case .o50:  return #colorLiteral(red: 0.8784, green: 0.9686, blue: 0.9804, alpha: 1) /* #e0f7fa */
            case .o100: return #colorLiteral(red: 0.6980392156862745, green: 0.9215686274509803, blue: 0.9490196078431372, alpha: 1) /* #b2ebf2 */
            case .o200: return #colorLiteral(red: 0.5019607843137255, green: 0.8705882352941177, blue: 0.9176470588235294, alpha: 1) /* #80deea */
            case .o300: return #colorLiteral(red: 0.30196078431372547, green: 0.8156862745098039, blue: 0.8823529411764706, alpha: 1) /* #4dd0e1 */
            case .o400: return #colorLiteral(red: 0.14901960784313725, green: 0.7764705882352941, blue: 0.8549019607843137, alpha: 1) /* #26c6da */
            case .o500: return #colorLiteral(red: 0.0, green: 0.7372549019607844, blue: 0.8313725490196079, alpha: 1) /* #00bcd4 */
            case .o600: return #colorLiteral(red: 0.0, green: 0.6745098039215687, blue: 0.7568627450980392, alpha: 1) /* #00acc1 */
            case .o700: return #colorLiteral(red: 0.0, green: 0.592156862745098, blue: 0.6549019607843137, alpha: 1) /* #0097a7 */
            case .o800: return #colorLiteral(red: 0.0, green: 0.5137254901960784, blue: 0.5607843137254902, alpha: 1) /* #00838f */
            case .o900: return #colorLiteral(red: 0.0, green: 0.3764705882352941, blue: 0.39215686274509803, alpha: 1) /* #006064 */
            case .a100: return #colorLiteral(red: 0.5176470588235295, green: 1.0, blue: 1.0, alpha: 1) /* #84ffff */
            case .a200: return #colorLiteral(red: 0.09411764705882353, green: 1.0, blue: 1.0, alpha: 1) /* #18ffff */
            case .a400: return #colorLiteral(red: 0.0, green: 0.8980392156862745, blue: 1.0, alpha: 1) /* #00e5ff */
            case .a700: return #colorLiteral(red: 0.0, green: 0.7215686274509804, blue: 0.8313725490196079, alpha: 1) /* #00b8d4 */
            }
        case .teal:
            switch index {
            case .o50:  return #colorLiteral(red: 0.8784, green: 0.949, blue: 0.9451, alpha: 1) /* #e0f2f1 */
            case .o100: return #colorLiteral(red: 0.6980392156862745, green: 0.8745098039215686, blue: 0.8588235294117647, alpha: 1) /* #b2dfdb */
            case .o200: return #colorLiteral(red: 0.5019607843137255, green: 0.796078431372549, blue: 0.7686274509803922, alpha: 1) /* #80cbc4 */
            case .o300: return #colorLiteral(red: 0.30196078431372547, green: 0.7137254901960784, blue: 0.6745098039215687, alpha: 1) /* #4db6ac */
            case .o400: return #colorLiteral(red: 0.14901960784313725, green: 0.6509803921568628, blue: 0.6039215686274509, alpha: 1) /* #26a69a */
            case .o500: return #colorLiteral(red: 0.0, green: 0.5882352941176471, blue: 0.5333333333333333, alpha: 1) /* #009688 */
            case .o600: return #colorLiteral(red: 0.0, green: 0.5372549019607843, blue: 0.4823529411764706, alpha: 1) /* #00897b */
            case .o700: return #colorLiteral(red: 0.0, green: 0.4745098039215686, blue: 0.4196078431372549, alpha: 1) /* #00796b */
            case .o800: return #colorLiteral(red: 0.0, green: 0.4117647058823529, blue: 0.3607843137254902, alpha: 1) /* #00695c */
            case .o900: return #colorLiteral(red: 0.0, green: 0.30196078431372547, blue: 0.25098039215686274, alpha: 1) /* #004d40 */
            case .a100: return #colorLiteral(red: 0.6549019607843137, green: 1.0, blue: 0.9215686274509803, alpha: 1) /* #a7ffeb */
            case .a200: return #colorLiteral(red: 0.39215686274509803, green: 1.0, blue: 0.8549019607843137, alpha: 1) /* #64ffda */
            case .a400: return #colorLiteral(red: 0.11372549019607843, green: 0.9137254901960784, blue: 0.7137254901960784, alpha: 1) /* #1de9b6 */
            case .a700: return #colorLiteral(red: 0.0, green: 0.7490196078431373, blue: 0.6470588235294118, alpha: 1) /* #00bfa5 */
            }
        case .green:
            switch index {
            case .o50:  return #colorLiteral(red: 0.9098, green: 0.9608, blue: 0.9137, alpha: 1) /* #e8f5e9 */
            case .o100: return #colorLiteral(red: 0.7843137254901961, green: 0.9019607843137255, blue: 0.788235294117647, alpha: 1) /* #c8e6c9 */
            case .o200: return #colorLiteral(red: 0.6470588235294118, green: 0.8392156862745098, blue: 0.6549019607843137, alpha: 1) /* #a5d6a7 */
            case .o300: return #colorLiteral(red: 0.5058823529411764, green: 0.7803921568627451, blue: 0.5176470588235295, alpha: 1) /* #81c784 */
            case .o400: return #colorLiteral(red: 0.4, green: 0.7333333333333333, blue: 0.41568627450980394, alpha: 1) /* #66bb6a */
            case .o500: return #colorLiteral(red: 0.2980392156862745, green: 0.6862745098039216, blue: 0.3137254901960784, alpha: 1) /* #4caf50 */
            case .o600: return #colorLiteral(red: 0.2627450980392157, green: 0.6274509803921569, blue: 0.2784313725490196, alpha: 1) /* #43a047 */
            case .o700: return #colorLiteral(red: 0.2196078431372549, green: 0.5568627450980392, blue: 0.23529411764705882, alpha: 1) /* #388e3c */
            case .o800: return #colorLiteral(red: 0.1803921568627451, green: 0.49019607843137253, blue: 0.19607843137254902, alpha: 1) /* #2e7d32 */
            case .o900: return #colorLiteral(red: 0.10588235294117647, green: 0.3686274509803922, blue: 0.12549019607843137, alpha: 1) /* #1b5e20 */
            case .a100: return #colorLiteral(red: 0.7254901960784313, green: 0.9647058823529412, blue: 0.792156862745098, alpha: 1) /* #b9f6ca */
            case .a200: return #colorLiteral(red: 0.4117647058823529, green: 0.9411764705882353, blue: 0.6823529411764706, alpha: 1) /* #69f0ae */
            case .a400: return #colorLiteral(red: 0.0, green: 0.9019607843137255, blue: 0.4627450980392157, alpha: 1) /* #00e676 */
            case .a700: return #colorLiteral(red: 0.0, green: 0.7843137254901961, blue: 0.3254901960784314, alpha: 1) /* #00c853 */
            }
        case .lightGreen:
            switch index {
            case .o50:  return #colorLiteral(red: 0.9451, green: 0.9725, blue: 0.9137, alpha: 1) /* #f1f8e9 */
            case .o100: return #colorLiteral(red: 0.8627450980392157, green: 0.9294117647058824, blue: 0.7843137254901961, alpha: 1) /* #dcedc8 */
            case .o200: return #colorLiteral(red: 0.7725490196078432, green: 0.8823529411764706, blue: 0.6470588235294118, alpha: 1) /* #c5e1a5 */
            case .o300: return #colorLiteral(red: 0.6823529411764706, green: 0.8352941176470589, blue: 0.5058823529411764, alpha: 1) /* #aed581 */
            case .o400: return #colorLiteral(red: 0.611764705882353, green: 0.8, blue: 0.396078431372549, alpha: 1) /* #9ccc65 */
            case .o500: return #colorLiteral(red: 0.5450980392156862, green: 0.7647058823529411, blue: 0.2901960784313726, alpha: 1) /* #8bc34a */
            case .o600: return #colorLiteral(red: 0.48627450980392156, green: 0.7019607843137254, blue: 0.25882352941176473, alpha: 1) /* #7cb342 */
            case .o700: return #colorLiteral(red: 0.40784313725490196, green: 0.6235294117647059, blue: 0.2196078431372549, alpha: 1) /* #689f38 */
            case .o800: return #colorLiteral(red: 0.3333333333333333, green: 0.5450980392156862, blue: 0.1843137254901961, alpha: 1) /* #558b2f */
            case .o900: return #colorLiteral(red: 0.2, green: 0.4117647058823529, blue: 0.11764705882352941, alpha: 1) /* #33691e */
            case .a100: return #colorLiteral(red: 0.8, green: 1.0, blue: 0.5647058823529412, alpha: 1) /* #ccff90 */
            case .a200: return #colorLiteral(red: 0.6980392156862745, green: 1.0, blue: 0.34901960784313724, alpha: 1) /* #b2ff59 */
            case .a400: return #colorLiteral(red: 0.4627450980392157, green: 1.0, blue: 0.011764705882352941, alpha: 1) /* #76ff03 */
            case .a700: return #colorLiteral(red: 0.39215686274509803, green: 0.8666666666666667, blue: 0.09019607843137255, alpha: 1) /* #64dd17 */
            }
        case .lime:
            switch index {
            case .o50:  return #colorLiteral(red: 0.9765, green: 0.9843, blue: 0.9059, alpha: 1) /* #f9fbe7 */
            case .o100: return #colorLiteral(red: 0.9411764705882353, green: 0.9568627450980393, blue: 0.7647058823529411, alpha: 1) /* #f0f4c3 */
            case .o200: return #colorLiteral(red: 0.9019607843137255, green: 0.9333333333333333, blue: 0.611764705882353, alpha: 1) /* #e6ee9c */
            case .o300: return #colorLiteral(red: 0.8627450980392157, green: 0.9058823529411765, blue: 0.4588235294117647, alpha: 1) /* #dce775 */
            case .o400: return #colorLiteral(red: 0.8313725490196079, green: 0.8823529411764706, blue: 0.3411764705882353, alpha: 1) /* #d4e157 */
            case .o500: return #colorLiteral(red: 0.803921568627451, green: 0.8627450980392157, blue: 0.2235294117647059, alpha: 1) /* #cddc39 */
            case .o600: return #colorLiteral(red: 0.7529411764705882, green: 0.792156862745098, blue: 0.2, alpha: 1) /* #c0ca33 */
            case .o700: return #colorLiteral(red: 0.6862745098039216, green: 0.7058823529411765, blue: 0.16862745098039217, alpha: 1) /* #afb42b */
            case .o800: return #colorLiteral(red: 0.6196078431372549, green: 0.615686274509804, blue: 0.1411764705882353, alpha: 1) /* #9e9d24 */
            case .o900: return #colorLiteral(red: 0.5098039215686274, green: 0.4666666666666667, blue: 0.09019607843137255, alpha: 1) /* #827717 */
            case .a100: return #colorLiteral(red: 0.9568627450980393, green: 1.0, blue: 0.5058823529411764, alpha: 1) /* #f4ff81 */
            case .a200: return #colorLiteral(red: 0.9333333333333333, green: 1.0, blue: 0.2549019607843137, alpha: 1) /* #eeff41 */
            case .a400: return #colorLiteral(red: 0.7764705882352941, green: 1.0, blue: 0.0, alpha: 1) /* #c6ff00 */
            case .a700: return #colorLiteral(red: 0.6823529411764706, green: 0.9176470588235294, blue: 0.0, alpha: 1) /* #aeea00 */
            }
        case .yellow:
            switch index {
            case .o50:  return #colorLiteral(red: 1, green: 0.9922, blue: 0.9059, alpha: 1) /* #fffde7 */
            case .o100: return #colorLiteral(red: 1.0, green: 0.9764705882352941, blue: 0.7686274509803922, alpha: 1) /* #fff9c4 */
            case .o200: return #colorLiteral(red: 1.0, green: 0.9607843137254902, blue: 0.615686274509804, alpha: 1) /* #fff59d */
            case .o300: return #colorLiteral(red: 1.0, green: 0.9450980392156862, blue: 0.4627450980392157, alpha: 1) /* #fff176 */
            case .o400: return #colorLiteral(red: 1.0, green: 0.9333333333333333, blue: 0.34509803921568627, alpha: 1) /* #ffee58 */
            case .o500: return #colorLiteral(red: 1.0, green: 0.9215686274509803, blue: 0.23137254901960785, alpha: 1) /* #ffeb3b */
            case .o600: return #colorLiteral(red: 0.9921568627450981, green: 0.8470588235294118, blue: 0.20784313725490197, alpha: 1) /* #fdd835 */
            case .o700: return #colorLiteral(red: 0.984313725490196, green: 0.7529411764705882, blue: 0.17647058823529413, alpha: 1) /* #fbc02d */
            case .o800: return #colorLiteral(red: 0.9764705882352941, green: 0.6588235294117647, blue: 0.1450980392156863, alpha: 1) /* #f9a825 */
            case .o900: return #colorLiteral(red: 0.9607843137254902, green: 0.4980392156862745, blue: 0.09019607843137255, alpha: 1) /* #f57f17 */
            case .a100: return #colorLiteral(red: 1.0, green: 1.0, blue: 0.5529411764705883, alpha: 1) /* #ffff8d */
            case .a200: return #colorLiteral(red: 1.0, green: 1.0, blue: 0.0, alpha: 1) /* #ffff00 */
            case .a400: return #colorLiteral(red: 1.0, green: 0.9176470588235294, blue: 0.0, alpha: 1) /* #ffea00 */
            case .a700: return #colorLiteral(red: 1.0, green: 0.8392156862745098, blue: 0.0, alpha: 1) /* #ffd600 */
            }
        case .amber:
            switch index {
            case .o50:  return #colorLiteral(red: 1, green: 0.9725, blue: 0.8824, alpha: 1) /* #fff8e1 */
            case .o100: return #colorLiteral(red: 1.0, green: 0.9254901960784314, blue: 0.7019607843137254, alpha: 1) /* #ffecb3 */
            case .o200: return #colorLiteral(red: 1.0, green: 0.8784313725490196, blue: 0.5098039215686274, alpha: 1) /* #ffe082 */
            case .o300: return #colorLiteral(red: 1.0, green: 0.8352941176470589, blue: 0.30980392156862746, alpha: 1) /* #ffd54f */
            case .o400: return #colorLiteral(red: 1.0, green: 0.792156862745098, blue: 0.1568627450980392, alpha: 1) /* #ffca28 */
            case .o500: return #colorLiteral(red: 1.0, green: 0.7568627450980392, blue: 0.027450980392156862, alpha: 1) /* #ffc107 */
            case .o600: return #colorLiteral(red: 1.0, green: 0.7019607843137254, blue: 0.0, alpha: 1) /* #ffb300 */
            case .o700: return #colorLiteral(red: 1.0, green: 0.6274509803921569, blue: 0.0, alpha: 1) /* #ffa000 */
            case .o800: return #colorLiteral(red: 1.0, green: 0.5607843137254902, blue: 0.0, alpha: 1) /* #ff8f00 */
            case .o900: return #colorLiteral(red: 1.0, green: 0.43529411764705883, blue: 0.0, alpha: 1) /* #ff6f00 */
            case .a100: return #colorLiteral(red: 1.0, green: 0.8980392156862745, blue: 0.4980392156862745, alpha: 1) /* #ffe57f */
            case .a200: return #colorLiteral(red: 1.0, green: 0.8431372549019608, blue: 0.25098039215686274, alpha: 1) /* #ffd740 */
            case .a400: return #colorLiteral(red: 1.0, green: 0.7686274509803922, blue: 0.0, alpha: 1) /* #ffc400 */
            case .a700: return #colorLiteral(red: 1.0, green: 0.6705882352941176, blue: 0.0, alpha: 1) /* #ffab00 */
            }
        case .orange:
            switch index {
            case .o50:  return #colorLiteral(red: 1, green: 0.9529, blue: 0.8784, alpha: 1) /* #fff3e0 */
            case .o100: return #colorLiteral(red: 1.0, green: 0.8784313725490196, blue: 0.6980392156862745, alpha: 1) /* #ffe0b2 */
            case .o200: return #colorLiteral(red: 1.0, green: 0.8, blue: 0.5019607843137255, alpha: 1) /* #ffcc80 */
            case .o300: return #colorLiteral(red: 1.0, green: 0.7176470588235294, blue: 0.30196078431372547, alpha: 1) /* #ffb74d */
            case .o400: return #colorLiteral(red: 1.0, green: 0.6549019607843137, blue: 0.14901960784313725, alpha: 1) /* #ffa726 */
            case .o500: return #colorLiteral(red: 1.0, green: 0.596078431372549, blue: 0.0, alpha: 1) /* #ff9800 */
            case .o600: return #colorLiteral(red: 0.984313725490196, green: 0.5490196078431373, blue: 0.0, alpha: 1) /* #fb8c00 */
            case .o700: return #colorLiteral(red: 0.9607843137254902, green: 0.48627450980392156, blue: 0.0, alpha: 1) /* #f57c00 */
            case .o800: return #colorLiteral(red: 0.9372549019607843, green: 0.4235294117647059, blue: 0.0, alpha: 1) /* #ef6c00 */
            case .o900: return #colorLiteral(red: 0.9019607843137255, green: 0.3176470588235294, blue: 0.0, alpha: 1) /* #e65100 */
            case .a100: return #colorLiteral(red: 1.0, green: 0.8196078431372549, blue: 0.5019607843137255, alpha: 1) /* #ffd180 */
            case .a200: return #colorLiteral(red: 1.0, green: 0.6705882352941176, blue: 0.25098039215686274, alpha: 1) /* #ffab40 */
            case .a400: return #colorLiteral(red: 1.0, green: 0.5686274509803921, blue: 0.0, alpha: 1) /* #ff9100 */
            case .a700: return #colorLiteral(red: 1.0, green: 0.42745098039215684, blue: 0.0, alpha: 1) /* #ff6d00 */
            }
        case .deepOrange:
            switch index {
            case .o50:  return #colorLiteral(red: 0.9843, green: 0.9137, blue: 0.9059, alpha: 1) /* #fbe9e7 */
            case .o100: return #colorLiteral(red: 1.0, green: 0.8, blue: 0.7372549019607844, alpha: 1) /* #ffccbc */
            case .o200: return #colorLiteral(red: 1.0, green: 0.6705882352941176, blue: 0.5686274509803921, alpha: 1) /* #ffab91 */
            case .o300: return #colorLiteral(red: 1.0, green: 0.5411764705882353, blue: 0.396078431372549, alpha: 1) /* #ff8a65 */
            case .o400: return #colorLiteral(red: 1.0, green: 0.4392156862745098, blue: 0.2627450980392157, alpha: 1) /* #ff7043 */
            case .o500: return #colorLiteral(red: 1.0, green: 0.3411764705882353, blue: 0.13333333333333333, alpha: 1) /* #ff5722 */
            case .o600: return #colorLiteral(red: 0.9568627450980393, green: 0.3176470588235294, blue: 0.11764705882352941, alpha: 1) /* #f4511e */
            case .o700: return #colorLiteral(red: 0.9019607843137255, green: 0.2901960784313726, blue: 0.09803921568627451, alpha: 1) /* #e64a19 */
            case .o800: return #colorLiteral(red: 0.8470588235294118, green: 0.2627450980392157, blue: 0.08235294117647059, alpha: 1) /* #d84315 */
            case .o900: return #colorLiteral(red: 0.7490196078431373, green: 0.21176470588235294, blue: 0.047058823529411764, alpha: 1) /* #bf360c */
            case .a100: return #colorLiteral(red: 1.0, green: 0.6196078431372549, blue: 0.5019607843137255, alpha: 1) /* #ff9e80 */
            case .a200: return #colorLiteral(red: 1.0, green: 0.43137254901960786, blue: 0.25098039215686274, alpha: 1) /* #ff6e40 */
            case .a400: return #colorLiteral(red: 1.0, green: 0.23921568627450981, blue: 0.0, alpha: 1) /* #ff3d00 */
            case .a700: return #colorLiteral(red: 0.8666666666666667, green: 0.17254901960784313, blue: 0.0, alpha: 1) /* #dd2c00 */
            }
        case .brown:
            switch index {
            case .o50:  return #colorLiteral(red: 0.9373, green: 0.9216, blue: 0.9137, alpha: 1) /* #efebe9 */
            case .o100: return #colorLiteral(red: 0.8431372549019608, green: 0.8, blue: 0.7843137254901961, alpha: 1) /* #d7ccc8 */
            case .o200: return #colorLiteral(red: 0.7372549019607844, green: 0.6666666666666666, blue: 0.6431372549019608, alpha: 1) /* #bcaaa4 */
            case .o300: return #colorLiteral(red: 0.6313725490196078, green: 0.5333333333333333, blue: 0.4980392156862745, alpha: 1) /* #a1887f */
            case .o400: return #colorLiteral(red: 0.5529411764705883, green: 0.43137254901960786, blue: 0.38823529411764707, alpha: 1) /* #8d6e63 */
            case .o500: return #colorLiteral(red: 0.4745098039215686, green: 0.3333333333333333, blue: 0.2823529411764706, alpha: 1) /* #795548 */
            case .o600: return #colorLiteral(red: 0.42745098039215684, green: 0.2980392156862745, blue: 0.2549019607843137, alpha: 1) /* #6d4c41 */
            case .o700: return #colorLiteral(red: 0.36470588235294116, green: 0.25098039215686274, blue: 0.21568627450980393, alpha: 1) /* #5d4037 */
            case .o800: return #colorLiteral(red: 0.3058823529411765, green: 0.20392156862745098, blue: 0.1803921568627451, alpha: 1) /* #4e342e */
            case .o900: return #colorLiteral(red: 0.24313725490196078, green: 0.15294117647058825, blue: 0.13725490196078433, alpha: 1) /* #3e2723 */
            default: return .brown
            }
        case .gray:
            switch index {
            case .o50:  return #colorLiteral(red: 0.9804, green: 0.9804, blue: 0.9804, alpha: 1) /* #fafafa */
            case .o100: return #colorLiteral(red: 0.9607843137254902, green: 0.9607843137254902, blue: 0.9607843137254902, alpha: 1) /* #f5f5f5 */
            case .o200: return #colorLiteral(red: 0.9333333333333333, green: 0.9333333333333333, blue: 0.9333333333333333, alpha: 1) /* #eeeeee */
            case .o300: return #colorLiteral(red: 0.8784313725490196, green: 0.8784313725490196, blue: 0.8784313725490196, alpha: 1) /* #e0e0e0 */
            case .o400: return #colorLiteral(red: 0.7411764705882353, green: 0.7411764705882353, blue: 0.7411764705882353, alpha: 1) /* #bdbdbd */
            case .o500: return #colorLiteral(red: 0.6196078431372549, green: 0.6196078431372549, blue: 0.6196078431372549, alpha: 1) /* #9e9e9e */
            case .o600: return #colorLiteral(red: 0.4588235294117647, green: 0.4588235294117647, blue: 0.4588235294117647, alpha: 1) /* #757575 */
            case .o700: return #colorLiteral(red: 0.3803921568627451, green: 0.3803921568627451, blue: 0.3803921568627451, alpha: 1) /* #616161 */
            case .o800: return #colorLiteral(red: 0.25882352941176473, green: 0.25882352941176473, blue: 0.25882352941176473, alpha: 1) /* #424242 */
            case .o900: return #colorLiteral(red: 0.12941176470588237, green: 0.12941176470588237, blue: 0.12941176470588237, alpha: 1) /* #212121 */
            default: return .gray
            }
        case .blueGray:
            switch index {
            case .o50:  return #colorLiteral(red: 0.9255, green: 0.9373, blue: 0.9451, alpha: 1) /* #eceff1 */
            case .o100: return #colorLiteral(red: 0.8117647058823529, green: 0.8470588235294118, blue: 0.8627450980392157, alpha: 1) /* #cfd8dc */
            case .o200: return #colorLiteral(red: 0.6901960784313725, green: 0.7450980392156863, blue: 0.7725490196078432, alpha: 1) /* #b0bec5 */
            case .o300: return #colorLiteral(red: 0.5647058823529412, green: 0.6431372549019608, blue: 0.6823529411764706, alpha: 1) /* #90a4ae */
            case .o400: return #colorLiteral(red: 0.47058823529411764, green: 0.5647058823529412, blue: 0.611764705882353, alpha: 1) /* #78909c */
            case .o500: return #colorLiteral(red: 0.3764705882352941, green: 0.49019607843137253, blue: 0.5450980392156862, alpha: 1) /* #607d8b */
            case .o600: return #colorLiteral(red: 0.32941176470588235, green: 0.43137254901960786, blue: 0.47843137254901963, alpha: 1) /* #546e7a */
            case .o700: return #colorLiteral(red: 0.27058823529411763, green: 0.35294117647058826, blue: 0.39215686274509803, alpha: 1) /* #455a64 */
            case .o800: return #colorLiteral(red: 0.21568627450980393, green: 0.2784313725490196, blue: 0.30980392156862746, alpha: 1) /* #37474f */
            case .o900: return #colorLiteral(red: 0.14901960784313725, green: 0.19607843137254902, blue: 0.2196078431372549, alpha: 1) /* #263238 */
            default: return .darkGray
            }
        case .black:
            return .black
        case .white:
            return .white
        }
    }
}
