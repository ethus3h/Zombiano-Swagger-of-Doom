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

//ServerPackets._Z_J_

package ServerPackets {

import flash.utils.IDataInput;


public class _Z_J_ extends ServerPacket {

    public var offer_:Vector.<Boolean>;

    public function _Z_J_(_arg1:uint) {
        this.offer_ = new Vector.<Boolean>();
        super(_arg1);
    }

    override public function parseFromInput(_arg1:IDataInput):void {
        this.offer_.length = 0;
        var _local2:int = _arg1.readShort();
        var _local3:int;
        while (_local3 < _local2) {
            this.offer_.push(_arg1.readBoolean());
            _local3++;
        }
    }

    override public function toString():String {
        return (formatToString("TRADECHANGED", "offer_"));
    }

}
}//package ServerPackets

