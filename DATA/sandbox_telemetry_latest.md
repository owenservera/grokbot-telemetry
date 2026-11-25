# sandbox_telemetry_parse — 2026-11-25 09:20:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2689148 lines=5958
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5943 |
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
| `chromeBrowserPssKb` | {'int': 5943} |
| `chromeGpuPssKb` | {'int': 5943} |
| `chromeOtherPssKb` | {'int': 5943} |
| `chromeProcesses` | {'int': 5943} |
| `chromeProfiles` | {'int': 5943} |
| `chromeRendererMaxPssKb` | {'int': 5943} |
| `chromeRendererPssKb` | {'int': 5943} |
| `chromeRenderers` | {'int': 5943} |
| `chromeTabs` | {'int': 5943} |
| `chromeTabsProbedProfiles` | {'int': 5943} |
| `chromeUtilityPssKb` | {'int': 5943} |
| `desktopPssKb` | {'int': 5943} |
| `hostPssKb` | {'int': 5943} |
| `kind` | {'str': 5943} |
| `memAvailableKb` | {'int': 5943} |
| `memTotalKb` | {'int': 5943} |
| `otherPssKb` | {'int': 5943} |
| `processes` | {'int': 5943} |
| `pssFallbackProcesses` | {'int': 5943} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
