# sandbox_telemetry_parse — 2026-11-25 04:33:13 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2595079 lines=5750
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5735 |
| `egress_tunnel` | 11 |
| `boot_stage` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 5735} |
| `chromeGpuPssKb` | {'int': 5735} |
| `chromeOtherPssKb` | {'int': 5735} |
| `chromeProcesses` | {'int': 5735} |
| `chromeProfiles` | {'int': 5735} |
| `chromeRendererMaxPssKb` | {'int': 5735} |
| `chromeRendererPssKb` | {'int': 5735} |
| `chromeRenderers` | {'int': 5735} |
| `chromeTabs` | {'int': 5735} |
| `chromeTabsProbedProfiles` | {'int': 5735} |
| `chromeUtilityPssKb` | {'int': 5735} |
| `desktopPssKb` | {'int': 5735} |
| `hostPssKb` | {'int': 5735} |
| `kind` | {'str': 5735} |
| `memAvailableKb` | {'int': 5735} |
| `memTotalKb` | {'int': 5735} |
| `otherPssKb` | {'int': 5735} |
| `processes` | {'int': 5735} |
| `pssFallbackProcesses` | {'int': 5735} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
