﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using ProtoBuf;

namespace Resgrid.Model
{
	[ProtoContract]
	[Table("IncidentLogs")]
	public class IncidentLog : IEntity
	{
		[Key]
		[Required]
		[ProtoMember(1)]
		[DatabaseGenerated(DatabaseGeneratedOption.Identity)]
		public int IncidentLogId { get; set; }

		[Required]
		[ForeignKey("Incident"), DatabaseGenerated(DatabaseGeneratedOption.None)]
		[ProtoMember(2)]
		public int IncidentId { get; set; }

		public virtual Incident Incident { get; set; }

		[Required]
		[ForeignKey("Unit"), DatabaseGenerated(DatabaseGeneratedOption.None)]
		[ProtoMember(3)]
		public int? UnitId { get; set; }

		public virtual Unit Unit { get; set; }

		public int Type { get; set; }

		public DateTime Timestamp { get; set; }

		public string Description { get; set; }

		[NotMapped]
		public object IdValue
		{
			get { return IncidentLogId; }
			set { IncidentLogId = (int)value; }
		}

		[NotMapped]
		public string TableName => "IncidentLogs";

		[NotMapped]
		public string IdName => "IncidentLogId";

		[NotMapped]
		public IEnumerable<string> IgnoredProperties => new string[] { "IdValue", "TableName", "IdName", "Incident", "Unit" };
	}
}
