public class recordRedirectClass{
	public string recordId{set;get{
		return [select id from case limit 1].id;
	}}
}