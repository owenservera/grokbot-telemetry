# sandbox_telemetry_parse — 2026-11-24 21:18:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2453994 lines=5438
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5423 |
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
| `chromeBrowserPssKb` | {'int': 5423} |
| `chromeGpuPssKb` | {'int': 5423} |
| `chromeOtherPssKb` | {'int': 5423} |
| `chromeProcesses` | {'int': 5423} |
| `chromeProfiles` | {'int': 5423} |
| `chromeRendererMaxPssKb` | {'int': 5423} |
| `chromeRendererPssKb` | {'int': 5423} |
| `chromeRenderers` | {'int': 5423} |
| `chromeTabs` | {'int': 5423} |
| `chromeTabsProbedProfiles` | {'int': 5423} |
| `chromeUtilityPssKb` | {'int': 5423} |
| `desktopPssKb` | {'int': 5423} |
| `hostPssKb` | {'int': 5423} |
| `kind` | {'str': 5423} |
| `memAvailableKb` | {'int': 5423} |
| `memTotalKb` | {'int': 5423} |
| `otherPssKb` | {'int': 5423} |
| `processes` | {'int': 5423} |
| `pssFallbackProcesses` | {'int': 5423} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
