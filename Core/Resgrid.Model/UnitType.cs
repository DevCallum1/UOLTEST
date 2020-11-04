﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Resgrid.Model
{
	[Table("UnitTypes")]
	public class UnitType : IEntity
	{
		[Key]
		[Required]
		[DatabaseGenerated(DatabaseGeneratedOption.Identity)]
		public int UnitTypeId { get; set; }

		[Required]
		public int DepartmentId { get; set; }

		[ForeignKey("DepartmentId")]
		public virtual Department Department { get; set; }

		[Required]
		[MaxLength(100)]
		public string Type { get; set; }

		public int? CustomStatesId { get; set; }

		[NotMapped]
		public object IdValue
		{
			get { return UnitTypeId; }
			set { UnitTypeId = (int)value; }
		}

		[NotMapped]
		public string TableName => "UnitTypes";

		[NotMapped]
		public string IdName => "UnitTypeId";

		[NotMapped]
		public IEnumerable<string> IgnoredProperties => new string[] { "IdValue", "TableName", "IdName", "Department" };
	}
}
