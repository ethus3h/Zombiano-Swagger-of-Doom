﻿// Copyright (c) 2015, FireBite/Aceticsoft Studios Inc.
// All rights reserved.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
// ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
// WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
// DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR
// ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
// (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
// LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
// ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
// SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.// either expressed or implied, of the FreeBSD Project.// either expressed or implied, of the FreeBSD Project.

// Decompiled by AS3 Sorcerer 1.99
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.util._J_H_

package com.company.assembleegameclient.util {
import flash.display.BitmapData;

import com.company.util.BitmapUtil;

public class _J_H_ {

    public var image_:BitmapData;
    public var mask_:BitmapData;

    public function _J_H_(_arg1:BitmapData, _arg2:BitmapData) {
        this.image_ = _arg1;
        this.mask_ = _arg2;
    }

    public function width():int {
        return (this.image_.width);
    }

    public function height():int {
        return (this.image_.height);
    }

    public function mirror(_arg1:int = 0):_J_H_ {
        var _local2:BitmapData = BitmapUtil.mirror(this.image_, _arg1);
        var _local3:BitmapData = (((this.mask_ == null)) ? null : BitmapUtil.mirror(this.mask_, _arg1));
        return (new _J_H_(_local2, _local3));
    }

    public function _F_9():Number {
        return (BitmapUtil._F_9(this.image_));
    }

}
}//package com.company.assembleegameclient.util

