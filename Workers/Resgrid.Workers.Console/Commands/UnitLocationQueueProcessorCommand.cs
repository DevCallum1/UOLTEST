﻿using System;
using System.Collections.Generic;
using Quidjibo.Commands;

namespace Resgrid.Workers.Console.Commands
{
	public class UnitLocationQueueProcessorCommand : IQuidjiboCommand
	{
		public int Id { get; }
		public Guid? CorrelationId { get; set; }
		public Dictionary<string, string> Metadata { get; set; }

		public UnitLocationQueueProcessorCommand(int id)
		{
			Id = id;
		}
	}
}
