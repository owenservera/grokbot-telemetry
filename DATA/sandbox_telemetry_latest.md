# sandbox_telemetry_parse — 2026-11-26 14:26:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3289814 lines=7286
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7271 |
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
| `chromeBrowserPssKb` | {'int': 7271} |
| `chromeGpuPssKb` | {'int': 7271} |
| `chromeOtherPssKb` | {'int': 7271} |
| `chromeProcesses` | {'int': 7271} |
| `chromeProfiles` | {'int': 7271} |
| `chromeRendererMaxPssKb` | {'int': 7271} |
| `chromeRendererPssKb` | {'int': 7271} |
| `chromeRenderers` | {'int': 7271} |
| `chromeTabs` | {'int': 7271} |
| `chromeTabsProbedProfiles` | {'int': 7271} |
| `chromeUtilityPssKb` | {'int': 7271} |
| `desktopPssKb` | {'int': 7271} |
| `hostPssKb` | {'int': 7271} |
| `kind` | {'str': 7271} |
| `memAvailableKb` | {'int': 7271} |
| `memTotalKb` | {'int': 7271} |
| `otherPssKb` | {'int': 7271} |
| `processes` | {'int': 7271} |
| `pssFallbackProcesses` | {'int': 7271} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
