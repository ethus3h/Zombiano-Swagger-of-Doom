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
// SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

// Decompiled by AS3 Sorcerer 1.99
// http://www.as3sorcerer.com/

//Effects._0I_o

package Effects {
import flash.geom.Point;

import com.company.assembleegameclient.objects.GameObject;
import com.company.assembleegameclient.net.messages.data.Position;
import com.company.assembleegameclient.util._04d;

public class _0I_o extends Effect {

    public var start_:Point;
    public var end_:Point;
    public var color_:int;

    public function _0I_o(_arg1:GameObject, _arg2:Position, _arg3:int) {
        this.start_ = new Point(_arg1.x_, _arg1.y_);
        this.end_ = new Point(_arg2.x_, _arg2.y_);
        this.color_ = _arg3;
    }

    override public function update(_arg1:int, _arg2:int):Boolean {
        var _local5:Point;
        var _local6:Particle;
        x_ = this.start_.x;
        y_ = this.start_.y;
        var _local3:int = 30;
        var _local4:int;
        while (_local4 < _local3) {
            _local5 = Point.interpolate(this.start_, this.end_, (_local4 / _local3));
            _local6 = new _06s(100, this.color_, 700, 0.5, _04d._F_e(1), _04d._F_e(1));
            map_.addObj(_local6, _local5.x, _local5.y);
            _local4++;
        }
        return (false);
    }

}
}//package Effects

