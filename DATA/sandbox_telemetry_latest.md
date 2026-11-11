# sandbox_telemetry_parse — 2026-11-11 14:16:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1668394 lines=3695
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3686 |
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
| `chromeBrowserPssKb` | {'int': 3686} |
| `chromeGpuPssKb` | {'int': 3686} |
| `chromeOtherPssKb` | {'int': 3686} |
| `chromeProcesses` | {'int': 3686} |
| `chromeProfiles` | {'int': 3686} |
| `chromeRendererMaxPssKb` | {'int': 3686} |
| `chromeRendererPssKb` | {'int': 3686} |
| `chromeRenderers` | {'int': 3686} |
| `chromeTabs` | {'int': 3686} |
| `chromeTabsProbedProfiles` | {'int': 3686} |
| `chromeUtilityPssKb` | {'int': 3686} |
| `desktopPssKb` | {'int': 3686} |
| `hostPssKb` | {'int': 3686} |
| `kind` | {'str': 3686} |
| `memAvailableKb` | {'int': 3686} |
| `memTotalKb` | {'int': 3686} |
| `otherPssKb` | {'int': 3686} |
| `processes` | {'int': 3686} |
| `pssFallbackProcesses` | {'int': 3686} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
