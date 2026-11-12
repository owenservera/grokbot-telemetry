# sandbox_telemetry_parse — 2026-11-12 14:38:16 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2176186 lines=4817
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4808 |
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
| `chromeBrowserPssKb` | {'int': 4808} |
| `chromeGpuPssKb` | {'int': 4808} |
| `chromeOtherPssKb` | {'int': 4808} |
| `chromeProcesses` | {'int': 4808} |
| `chromeProfiles` | {'int': 4808} |
| `chromeRendererMaxPssKb` | {'int': 4808} |
| `chromeRendererPssKb` | {'int': 4808} |
| `chromeRenderers` | {'int': 4808} |
| `chromeTabs` | {'int': 4808} |
| `chromeTabsProbedProfiles` | {'int': 4808} |
| `chromeUtilityPssKb` | {'int': 4808} |
| `desktopPssKb` | {'int': 4808} |
| `hostPssKb` | {'int': 4808} |
| `kind` | {'str': 4808} |
| `memAvailableKb` | {'int': 4808} |
| `memTotalKb` | {'int': 4808} |
| `otherPssKb` | {'int': 4808} |
| `processes` | {'int': 4808} |
| `pssFallbackProcesses` | {'int': 4808} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
