# sandbox_telemetry_parse — 2026-11-10 17:43:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1248547 lines=2767
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2758 |
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
| `chromeBrowserPssKb` | {'int': 2758} |
| `chromeGpuPssKb` | {'int': 2758} |
| `chromeOtherPssKb` | {'int': 2758} |
| `chromeProcesses` | {'int': 2758} |
| `chromeProfiles` | {'int': 2758} |
| `chromeRendererMaxPssKb` | {'int': 2758} |
| `chromeRendererPssKb` | {'int': 2758} |
| `chromeRenderers` | {'int': 2758} |
| `chromeTabs` | {'int': 2758} |
| `chromeTabsProbedProfiles` | {'int': 2758} |
| `chromeUtilityPssKb` | {'int': 2758} |
| `desktopPssKb` | {'int': 2758} |
| `hostPssKb` | {'int': 2758} |
| `kind` | {'str': 2758} |
| `memAvailableKb` | {'int': 2758} |
| `memTotalKb` | {'int': 2758} |
| `otherPssKb` | {'int': 2758} |
| `processes` | {'int': 2758} |
| `pssFallbackProcesses` | {'int': 2758} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
