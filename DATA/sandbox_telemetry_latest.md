# sandbox_telemetry_parse — 2026-11-12 14:54:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2182981 lines=4832
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4823 |
| `egress_tunnel` | 5 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 4823} |
| `chromeGpuPssKb` | {'int': 4823} |
| `chromeOtherPssKb` | {'int': 4823} |
| `chromeProcesses` | {'int': 4823} |
| `chromeProfiles` | {'int': 4823} |
| `chromeRendererMaxPssKb` | {'int': 4823} |
| `chromeRendererPssKb` | {'int': 4823} |
| `chromeRenderers` | {'int': 4823} |
| `chromeTabs` | {'int': 4823} |
| `chromeTabsProbedProfiles` | {'int': 4823} |
| `chromeUtilityPssKb` | {'int': 4823} |
| `desktopPssKb` | {'int': 4823} |
| `hostPssKb` | {'int': 4823} |
| `kind` | {'str': 4823} |
| `memAvailableKb` | {'int': 4823} |
| `memTotalKb` | {'int': 4823} |
| `otherPssKb` | {'int': 4823} |
| `processes` | {'int': 4823} |
| `pssFallbackProcesses` | {'int': 4823} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
