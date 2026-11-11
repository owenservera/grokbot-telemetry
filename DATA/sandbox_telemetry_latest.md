# sandbox_telemetry_parse — 2026-11-11 11:16:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1603235 lines=3551
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3542 |
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
| `chromeBrowserPssKb` | {'int': 3542} |
| `chromeGpuPssKb` | {'int': 3542} |
| `chromeOtherPssKb` | {'int': 3542} |
| `chromeProcesses` | {'int': 3542} |
| `chromeProfiles` | {'int': 3542} |
| `chromeRendererMaxPssKb` | {'int': 3542} |
| `chromeRendererPssKb` | {'int': 3542} |
| `chromeRenderers` | {'int': 3542} |
| `chromeTabs` | {'int': 3542} |
| `chromeTabsProbedProfiles` | {'int': 3542} |
| `chromeUtilityPssKb` | {'int': 3542} |
| `desktopPssKb` | {'int': 3542} |
| `hostPssKb` | {'int': 3542} |
| `kind` | {'str': 3542} |
| `memAvailableKb` | {'int': 3542} |
| `memTotalKb` | {'int': 3542} |
| `otherPssKb` | {'int': 3542} |
| `processes` | {'int': 3542} |
| `pssFallbackProcesses` | {'int': 3542} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
