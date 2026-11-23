# sandbox_telemetry_parse — 2026-11-24 00:27:23 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2056347 lines=4559
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4544 |
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
| `chromeBrowserPssKb` | {'int': 4544} |
| `chromeGpuPssKb` | {'int': 4544} |
| `chromeOtherPssKb` | {'int': 4544} |
| `chromeProcesses` | {'int': 4544} |
| `chromeProfiles` | {'int': 4544} |
| `chromeRendererMaxPssKb` | {'int': 4544} |
| `chromeRendererPssKb` | {'int': 4544} |
| `chromeRenderers` | {'int': 4544} |
| `chromeTabs` | {'int': 4544} |
| `chromeTabsProbedProfiles` | {'int': 4544} |
| `chromeUtilityPssKb` | {'int': 4544} |
| `desktopPssKb` | {'int': 4544} |
| `hostPssKb` | {'int': 4544} |
| `kind` | {'str': 4544} |
| `memAvailableKb` | {'int': 4544} |
| `memTotalKb` | {'int': 4544} |
| `otherPssKb` | {'int': 4544} |
| `processes` | {'int': 4544} |
| `pssFallbackProcesses` | {'int': 4544} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
