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

//_Z_4._09D_

package _Z_4 {
import flash.events.Event;

public class _09D_ extends Event {

    public static const _dZ_:String = "preMappingCreate";
    public static const _S_u:String = "postMappingCreate";
    public static const _b_:String = "preMappingChange";
    public static const _yL_:String = "postMappingChange";
    public static const _K_e:String = "postMappingRemove";
    public static const _P_L_:String = "mappingOverride";

    public var _0O_:Class;
    public var _K_L_:String;
    public var mapping:_nZ_;

    public function _09D_(_arg1:String, _arg2:Class, _arg3:String, _arg4:_nZ_) {
        super(_arg1);
        this._0O_ = _arg2;
        this._K_L_ = _arg3;
        this.mapping = _arg4;
    }

    override public function clone():Event {
        return (new _09D_(type, this._0O_, this._K_L_, this.mapping));
    }

}
}//package _Z_4

