# sandbox_telemetry_parse — 2026-11-12 16:41:32 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2226922 lines=4929
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4920 |
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
| `chromeBrowserPssKb` | {'int': 4920} |
| `chromeGpuPssKb` | {'int': 4920} |
| `chromeOtherPssKb` | {'int': 4920} |
| `chromeProcesses` | {'int': 4920} |
| `chromeProfiles` | {'int': 4920} |
| `chromeRendererMaxPssKb` | {'int': 4920} |
| `chromeRendererPssKb` | {'int': 4920} |
| `chromeRenderers` | {'int': 4920} |
| `chromeTabs` | {'int': 4920} |
| `chromeTabsProbedProfiles` | {'int': 4920} |
| `chromeUtilityPssKb` | {'int': 4920} |
| `desktopPssKb` | {'int': 4920} |
| `hostPssKb` | {'int': 4920} |
| `kind` | {'str': 4920} |
| `memAvailableKb` | {'int': 4920} |
| `memTotalKb` | {'int': 4920} |
| `otherPssKb` | {'int': 4920} |
| `processes` | {'int': 4920} |
| `pssFallbackProcesses` | {'int': 4920} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
