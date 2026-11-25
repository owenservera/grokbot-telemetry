# sandbox_telemetry_parse — 2026-11-25 20:15:18 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2906201 lines=6438
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6423 |
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
| `chromeBrowserPssKb` | {'int': 6423} |
| `chromeGpuPssKb` | {'int': 6423} |
| `chromeOtherPssKb` | {'int': 6423} |
| `chromeProcesses` | {'int': 6423} |
| `chromeProfiles` | {'int': 6423} |
| `chromeRendererMaxPssKb` | {'int': 6423} |
| `chromeRendererPssKb` | {'int': 6423} |
| `chromeRenderers` | {'int': 6423} |
| `chromeTabs` | {'int': 6423} |
| `chromeTabsProbedProfiles` | {'int': 6423} |
| `chromeUtilityPssKb` | {'int': 6423} |
| `desktopPssKb` | {'int': 6423} |
| `hostPssKb` | {'int': 6423} |
| `kind` | {'str': 6423} |
| `memAvailableKb` | {'int': 6423} |
| `memTotalKb` | {'int': 6423} |
| `otherPssKb` | {'int': 6423} |
| `processes` | {'int': 6423} |
| `pssFallbackProcesses` | {'int': 6423} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
