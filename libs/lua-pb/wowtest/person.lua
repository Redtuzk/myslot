-- DO NOT EDIT THIS FILE, GENERATED BY LUAPB-SAVEAST 
local _, ADDONSELF = ...

local t = {
-- Table: {1}
{
   ["types"]={2},
},
-- Table: {2}
{
   {3},
   ["Person"]={3},
},
-- Table: {3}
{
   [".type"]="message",
   ["fields"]={4},
   ["name"]="Person",
   ["types"]={5},
},
-- Table: {4}
{
   {6},
   {7},
   {8},
   {9},
   ["id"]={7},
   ["phone"]={9},
   ["name"]={6},
   ["email"]={8},
},
-- Table: {5}
{
   {10},
   {11},
   ["PhoneNumber"]={11},
   ["PhoneType"]={10},
},
-- Table: {6}
{
   ["ftype"]="string",
   ["name"]="name",
   [".type"]="field",
   ["rule"]="required",
   ["tag"]=1,
},
-- Table: {7}
{
   ["ftype"]="int32",
   ["name"]="id",
   [".type"]="field",
   ["rule"]="required",
   ["tag"]=2,
},
-- Table: {8}
{
   ["ftype"]="string",
   ["name"]="email",
   [".type"]="field",
   ["rule"]="optional",
   ["tag"]=3,
},
-- Table: {9}
{
   ["ftype"]="PhoneNumber",
   ["name"]="phone",
   [".type"]="field",
   ["rule"]="repeated",
   ["tag"]=4,
},
-- Table: {10}
{
   [".type"]="enum",
   ["name"]="PhoneType",
   ["values"]={12},
},
-- Table: {11}
{
   ["fields"]={13},
   ["name"]="PhoneNumber",
   [".type"]="message",
},
-- Table: {12}
{
   "HOME",
   "WORK",
   [0]="MOBILE",
   ["HOME"]=1,
   ["MOBILE"]=0,
   ["WORK"]=2,
},
-- Table: {13}
{
   {14},
   {15},
   ["number"]={14},
   ["type"]={15},
},
-- Table: {14}
{
   ["ftype"]="string",
   ["name"]="number",
   [".type"]="field",
   ["rule"]="required",
   ["tag"]=1,
},
-- Table: {15}
{
   [".type"]="field",
   ["options"]={16},
   ["ftype"]="PhoneType",
   ["name"]="type",
   ["default"]="HOME",
   ["rule"]="optional",
   ["tag"]=2,
},
-- Table: {16}
{
   ["default"]="HOME",
},
}
   local function loadast()
      local tables = t 
      for idx = 1,#tables do
	 local tolinki = {}
	 for i,v in pairs( tables[idx] ) do
	    if type( v ) == "table" then
	       tables[idx][i] = tables[v[1]]
	    end
	    if type( i ) == "table" and tables[i[1]] then
	       table.insert( tolinki,{ i,tables[i[1]] } )
	    end
	 end
	 -- link indices
	 for _,v in ipairs( tolinki ) do
	    tables[idx][v[2]],tables[idx][v[1]] =  tables[idx][v[1]],nil
	 end
      end
      return tables[1]
   end
 
ADDONSELF.pbperson = loadast()