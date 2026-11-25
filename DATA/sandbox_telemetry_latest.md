# sandbox_telemetry_parse — 2026-11-25 18:07:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2862796 lines=6342
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6327 |
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
| `chromeBrowserPssKb` | {'int': 6327} |
| `chromeGpuPssKb` | {'int': 6327} |
| `chromeOtherPssKb` | {'int': 6327} |
| `chromeProcesses` | {'int': 6327} |
| `chromeProfiles` | {'int': 6327} |
| `chromeRendererMaxPssKb` | {'int': 6327} |
| `chromeRendererPssKb` | {'int': 6327} |
| `chromeRenderers` | {'int': 6327} |
| `chromeTabs` | {'int': 6327} |
| `chromeTabsProbedProfiles` | {'int': 6327} |
| `chromeUtilityPssKb` | {'int': 6327} |
| `desktopPssKb` | {'int': 6327} |
| `hostPssKb` | {'int': 6327} |
| `kind` | {'str': 6327} |
| `memAvailableKb` | {'int': 6327} |
| `memTotalKb` | {'int': 6327} |
| `otherPssKb` | {'int': 6327} |
| `processes` | {'int': 6327} |
| `pssFallbackProcesses` | {'int': 6327} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
