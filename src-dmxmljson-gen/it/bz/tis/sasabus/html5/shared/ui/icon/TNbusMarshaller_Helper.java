/*********************************************************************************
 *                                                                               *
 * WARNING: File automatically generated by DMXmlJson. DON'T CHANGE IT manually! *
 *                                                                               *
 *********************************************************************************/

package it.bz.tis.sasabus.html5.shared.ui.icon;


public class TNbusMarshaller_Helper extends it.bz.tis.sasabus.html5.shared.TNbusMarshaller_Helper
{
   protected TNbusMarshaller_Helper()
   {
      this.putClassMarshaller("it.bz.tis.sasabus.html5.shared.ui.icon.Icon", new bz.davide.dmxmljson.marshalling.ClassMarshaller() {
         @Override public void marshall(Object obj, String compileTimeClassName, bz.davide.dmxmljson.marshalling.Structure structure, java.util.IdentityHashMap<Object, bz.davide.dmxmljson.marshalling.Structure> identities, long[] seq, boolean superClass) throws Exception {
            if (!superClass) {
               if (isReference(structure, obj, identities, seq))
                  return;
               identities.put(obj, structure);
               structure.open(shortName(compileTimeClassName), shortName(obj.getClass().getName()), null);
            }
            internalMarschall(obj, "bz.davide.dmweb.shared.view.ImgView", "N/A",structure, identities, seq, true);
            Object value;
            if (!superClass)
               structure.close();
         }
      });

   }
}
