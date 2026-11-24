# sandbox_telemetry_parse — 2026-11-24 18:13:23 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2391527 lines=5300
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5285 |
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
| `chromeBrowserPssKb` | {'int': 5285} |
| `chromeGpuPssKb` | {'int': 5285} |
| `chromeOtherPssKb` | {'int': 5285} |
| `chromeProcesses` | {'int': 5285} |
| `chromeProfiles` | {'int': 5285} |
| `chromeRendererMaxPssKb` | {'int': 5285} |
| `chromeRendererPssKb` | {'int': 5285} |
| `chromeRenderers` | {'int': 5285} |
| `chromeTabs` | {'int': 5285} |
| `chromeTabsProbedProfiles` | {'int': 5285} |
| `chromeUtilityPssKb` | {'int': 5285} |
| `desktopPssKb` | {'int': 5285} |
| `hostPssKb` | {'int': 5285} |
| `kind` | {'str': 5285} |
| `memAvailableKb` | {'int': 5285} |
| `memTotalKb` | {'int': 5285} |
| `otherPssKb` | {'int': 5285} |
| `processes` | {'int': 5285} |
| `pssFallbackProcesses` | {'int': 5285} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
