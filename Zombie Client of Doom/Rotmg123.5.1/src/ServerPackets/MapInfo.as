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

//ServerPackets._wx

package ServerPackets {

import flash.utils.IDataInput;

public class MapInfo extends ServerPacket {

    public var width_:int;
    public var height_:int;
    public var name_:String;
    public var fp_:uint;
    public var background_:int;
    public var allowPlayerTeleport_:Boolean;
    public var showDisplays_:Boolean;
    public var weather_:int;
    public var currentDatetime_:int;
    public var backgroundImage_:String;
    public var music_:Vector.<String>;
    public var clientXML_:Vector.<String>;
    public var extraXML_:Vector.<String>;

    public function MapInfo(_arg1:uint) {
        this.clientXML_ = new Vector.<String>();
        this.extraXML_ = new Vector.<String>();
        this.music_ = new Vector.<String>();
        super(_arg1);
    }

    override public function parseFromInput(_arg1:IDataInput):void {
        var _local2:int;
        var _local3:int;
        var _local4:int;
        this.width_ = _arg1.readInt();
        this.height_ = _arg1.readInt();
        this.name_ = _arg1.readUTF();
        this.backgroundImage_ = _arg1.readUTF();
        this.fp_ = _arg1.readUnsignedInt();
        this.background_ = _arg1.readInt();
        this.allowPlayerTeleport_ = _arg1.readBoolean();
        this.showDisplays_ = _arg1.readBoolean();
        this.weather_ = _arg1.readUnsignedByte();
        this.currentDatetime_ = _arg1.readInt();
        _local2 = _local2 = _arg1.readShort();
        _local3 = 0;
        while (_local3 < _local2) {
            this.music_.push(_arg1.readUTF());
            _local3++;
        }
        _local2 = _arg1.readShort();
        this.clientXML_.length = 0;
        _local3 = 0;
        while (_local3 < _local2) {
            _local4 = _arg1.readInt();
            this.clientXML_.push(_arg1.readUTFBytes(_local4));
            _local3++;
        }
        _local2 = _arg1.readShort();
        this.extraXML_.length = 0;
        _local3 = 0;
        while (_local3 < _local2) {
            _local4 = _arg1.readInt();
            this.extraXML_.push(_arg1.readUTFBytes(_local4));
            _local3++;
        }
    }

    override public function toString():String {
        return (formatToString("MAPINFO", "width_", "height_", "name_", "fp_", "background_", "allowPlayerTeleport_", "showDisplays_", "weather_", "music_", "clientXML_", "extraXML_"));
    }

}
}//package ServerPackets

